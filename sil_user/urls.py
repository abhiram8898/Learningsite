from django.urls import path
from . import views  # Assuming views module is in the same directory as this URL configuration
from django.urls import path  # This import statement is not needed as it's redundant
from django.contrib.auth import views as auth_views

# Define URL patterns
urlpatterns = [
    path('adminhome', views.Admindash,name="admin_home"),
    path('', views.Home, name='index'),  # Maps root URL ('') to Home view with name 'index'
    path('course/<int:id>',views.Courses, name='course'),  # Maps URL with integer parameter 'id' to Courses view with name 'course'
    path('main/<int:id>',views.Maincourse, name='main'),  # Maps URL with integer parameter 'id' to Maincourse view with name 'main'
    path('pay/confirm/<int:id>/<int:a>',views.Confirm, name='confirm'),  # Maps URL with two integer parameters 'id' and 'a' to Confirm view with name 'confirm'
    path('pdf/<int:id>',views.Pdf, name='pdf'),  # Maps URL with integer parameter 'id' to Pdf view with name 'pdf'
    path('cart',views.usercart,name='cart'),  # Maps 'cart' URL to Cart view with name 'cart'
    path('pay/<int:id>', views.Profilepage, name='profile'),  # Maps URL with integer parameter 'id' to app_create view with name 'pay'
    path('reg',views.Reg,name="reg"),
    path('login',views.Loginpage,name="loginpage"), 
    path('add/<int:id>',views.addcart,name='addtocart'),
    # path('profile',views.Profilepage,name="profilepage"),
    path('logout',views.logoutpage,name="logoutpage"),
    path('reset_password/',auth_views.PasswordResetView.as_view(), name="reset_password"),
    path('reset_password_sent/',auth_views.PasswordResetDoneView.as_view(), name="password_reset_done"),
    path('reset/<uidb64>/<token>/',auth_views.PasswordResetConfirmView.as_view(), name="password_reset_confirm"),
    path('reset_password_complete/',auth_views.PasswordResetCompleteView.as_view(template_name="login.html"), name="password_reset_complete"),
    path('myapp/reset/done/',views.Passcomplete),
    path('viewcourse',views.Search_data,name="viewcourse"),
    path('api/categories/', views.CategoriesList.as_view(), name='categories-list'),
  
]





