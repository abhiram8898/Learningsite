from io import BytesIO
import random
from django.http import FileResponse, HttpResponse
from .models import Categories, Course,Cartt, Payment,User
from django.shortcuts import render
from reportlab.pdfgen import canvas
import razorpay
from django.views.decorators.csrf import csrf_exempt
from flask import Flask
from reportlab.lib.pagesizes import letter
from django.contrib.auth import authenticate,login,logout
from django.shortcuts import redirect, render
from django.contrib.auth.decorators import login_required
from .forms import CreateUserForm, silForm, silForm
from .models import silmodel

# view for displaying all details
def Home(request):
    catagories_data = Categories.objects.all()
    course_data = Course.objects.all()
    return render(request, 'index.html', {'catagories_data': catagories_data, 'course_data': course_data, })

# view for payment
def Payment(request):
    payment_data = Payment.objects.all()
    # return appropriate response
    return render(request, 'payment.html', {'payment_data': payment_data})

# view for displaying courses based on category
def Courses(request, id):
    popular_data = Course.objects.filter(category_id=id).first()
    course_data = Course.objects.filter(category_id=id)
    return render(request, 'courses.html', {'course_data': course_data, 'popular_data': popular_data})

#view for confirming payment
@csrf_exempt
def Confirm(request, id, a):
    Main_course = Course.objects.get(id=id)
    amount = a
    return render(request, 'confirm.html', {'course_data': Main_course, 'amount': amount})

# view for displaying main course details
def Maincourse(request, id):
    Main_course = Course.objects.get(id=id)
    request.session['course_id'] = Main_course.id
    return render(request, 'main_course.html', {'course_data': Main_course,})

# view for generating PDF bill
def Pdf(request, id):
    Main_course = Course.objects.get(id=id)
    buffer = BytesIO()
    p = canvas.Canvas(buffer, pagesize=letter)
    payment_id = str(random.randint(1000, 9999))
    p.rect(10, 10, 580, 800)
    # Access attributes from Main_course object and use them in drawString() method
    p.drawString(250, 700, "Payment Bill")
    p.drawString(20, 660, "Purchased")
    p.drawString(20, 640, "Payment ID: {}".format(payment_id))
    p.drawString(20, 600, "Course Name  : {}".format(Main_course.name))
    p.drawString(20, 570, "Course Duration : {}".format(Main_course.duration))
    p.drawString(20, 540, "Course Price : Rs {}".format(Main_course.price))
    p.showPage()
    p.save()
    buffer.seek(0)
    return FileResponse(buffer, as_attachment=True, filename='bill.pdf')

# view for displaying cart
from django.contrib.auth.decorators import login_required
@login_required
def addcart(request, id):
    main_course = Course.objects.get(id=id)
    uid = request.user.id
    u = User.objects.get(id=uid)
    c = Cartt(user_id=uid, course_id=id)
    c.save()
    object1 = silmodel.objects.get(user=request.user)
    cart = Cartt.objects.filter(user_id=uid)
    cart_courses = Course.objects.filter(id__in=cart.values_list('course_id', flat=True)) 
    return render(request, 'profile.html', {'object1': object1, 'cart': cart_courses})




def usercart(request):
    if request.user.is_authenticated:
        object1 = silmodel.objects.get(user=request.user)
        uid = request.user.id
        cart = Cartt.objects.filter(user_id=uid)
        cart_courses = Course.objects.filter(id__in=cart.values_list('course_id', flat=True)) 
        return render(request, 'profile.html', {'object1': object1, 'cart': cart_courses})

    else:
        # Handle unauthenticated users as needed
        return HttpResponse("Please log in to view your cart.")
# create Flask app and Razorpay client
app = Flask(__name__, static_folder="static", static_url_path='')
razorpay_client = razorpay.Client(auth=("rzp_test_acgCaQhDp1w1uK", "8egrozmgdp1GGzZ2DYvNNRcl"))

# view for creating app


if __name__ == '__main__':
    app.run()



# Create your views here.
# Create your views here.
def Reg(request):
       form=CreateUserForm(request.POST)
       form1 = silForm(request.POST,request.FILES)
       if form.is_valid() and form1.is_valid():
            user=form.save()
            student=form1.save(commit=False)
            student.user=user
            student.save()
            return redirect('/login')
       else:
           form=CreateUserForm()
           form1=silForm()
       return render(request,"register.html",{'form':form,'form1':form1})

def Loginpage(request):
    
    if request.method == "POST":
        username=request.POST.get('username')
        password=request.POST.get('password')
        user=authenticate(request,username=username,password=password)
        if user is not None:
            login(request,user)
            if user.is_superuser:
                return redirect('/adminhome')
            else:
                course_id = request.session.get('course_id')
            return redirect('/pay/{}'.format(course_id))
    return render(request,"login.html")


@login_required(login_url='/login')
def Profilepage(request, id):
    object1=silmodel.objects.get(user=request.user)
    Main_course = Course.objects.get(id=id)
    a = Main_course.price * 100
    return render(request, 'app.html', {'course_data': Main_course, 'amount': a,'object1':object1})
  
def logoutpage(request):
    logout(request)
    return redirect('/login')
def Passcomplete(request):
    return redirect('/login')
def Search_data(request):
    data=request.GET.get('name')
    data1=Course.objects.filter(name__icontains=data)
    count=data1.count()
    if data1:
        request.session['course_id']=data1[0].id
        return render(request,'view_course.html',{'data1':data1,'count':count})
    
@login_required(login_url="/")
def Admindash(request):
    return render(request,"../../sil_admin/templates/admin_home.html")
    

from rest_framework import generics
from .models import Categories
from .serializers import CategoriesSerializer

class CategoriesList(generics.ListCreateAPIView):
    queryset = Categories.objects.all()
    serializer_class = CategoriesSerializer
