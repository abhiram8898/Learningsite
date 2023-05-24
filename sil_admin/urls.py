from django.urls import path,include
from sil_admin import views
urlpatterns = [
    path('', views.Home,name="admin_home"),
    path('add_cat', views.Add_category,name="Addcat"),
    path('edit_category/<int:pk>', views.Edit_category, name='edit_category'),
    path('delete_category/<int:pk>', views.Delete_category, name='delete_category'), 
    path('add_course', views.Add_course,name="Addcourse"),
    path('edit_course/<int:pk>', views.Edit_course, name='edit_course'),
    path('delete_course/<int:pk>', views.Delete_course, name='delete_course'), 
]
