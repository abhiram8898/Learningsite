from django.shortcuts import redirect, render

from sil_user.models import Categories, Course

# Create your views here.
def Home(request):
    return render(request,"admin_home.html")
def Add_category(request):
    data=Categories.objects.all()
    if request.method == 'POST':
        name = request.POST.get('name')
        description = request.POST.get('des')
        image = request.FILES.get('img')
        category = Categories(name=name, description=description, image=image)
        category.save()
        data=Categories.objects.all()
        # return render(request, 'admin_home.html')
    return render(request, 'add_category.html',{'data':data}) 
def Edit_category(request, pk):
    category = Categories.objects.get(pk=pk)
    if request.method == 'POST':
        category.name = request.POST.get('name')
        category.description = request.POST.get('des')
        if request.FILES.get('img'):
            category.image = request.FILES.get('img')
        category.save()
        return redirect('Addcat')
    return render(request, 'edit_category.html',{'category':category})


def Delete_category(request, pk):
    category = Categories.objects.get(pk=pk)
    category.delete()
    return redirect('admin_home')

def Add_course(request):
    data = Course.objects.all()
    categories = Categories.objects.all()
    if request.method == 'POST':
        name = request.POST.get('name')
        description = request.POST.get('des')
        category_id = request.POST.get('cat')
        status = request.POST.get('status')
        price = request.POST.get('price')
        duration = request.POST.get('duration')
        image = request.FILES.get('img')
        
        # Retrieve the Categories instance that corresponds to the selected category ID
        category = Categories.objects.get(id=category_id)

        # Create and save the new Course instance
        c = Course(name=name, description=description, category_id=category, price=price, status=status, duration=duration, image=image)
        c.save()

        # Render the response
        data = Course.objects.all()
        return render(request, 'add_course.html', {'data': data, 'categories': categories})
    
    # Render the form
    return render(request, 'add_course.html', {'data': data, 'categories': categories})
def Edit_course(request, pk):
    # Retrieve the course object to be edited
    course = Course.objects.get(pk=pk)
    
    if request.method == 'POST':
        # Retrieve the updated data from the request
        course.name = request.POST.get('name')
        course.description = request.POST.get('des')
        category_id = request.POST.get('cat')
        course.status = request.POST.get('status')
        course.price = request.POST.get('price')
        course.duration = request.POST.get('duration')
        image = request.FILES.get('img')
        
        # Retrieve the Categories instance that corresponds to the selected category ID
        category = Categories.objects.get(id=category_id)
        course.category_id = category
        
        # If a new image was uploaded, save it to the course object
        if image:
            course.image = image
        
        # Save the updated course object to the database
        course.save()
        
        # Redirect to the course list page
        return redirect('Addcourse')
    
    # Render the edit form
    categories = Categories.objects.all()
    return render(request, 'edit_course.html', {'course': course, 'categories': categories})



def Delete_course(request, pk):
    c = Course.objects.get(pk=pk)
    c.delete()
    return redirect('admin_home')
 