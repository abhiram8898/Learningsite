from django.db import models
from django.contrib.auth.models import User

# Model for Category
class Categories(models.Model):
    name = models.CharField(max_length=255)  # CharField for name with max length of 255 characters
    image = models.ImageField(upload_to='category/')  # ImageField for image with upload path 'category/'
    description = models.CharField(max_length=255)  # CharField for description with max length of 255 characters
    
    def __str__(self):
        return self.name  # Returns the name of the category as the string representation of the model object

# Model for Courses
class Course(models.Model):
    name = models.CharField(max_length=255)  # CharField for name with max length of 255 characters
    description = models.TextField()  # TextField for description
    category_id = models.ForeignKey(Categories, on_delete=models.CASCADE)  # ForeignKey to Categories model with CASCADE deletion behavior
    image = models.ImageField(upload_to='courses/')  # ImageField for image with upload path 'courses/'
    price = models.IntegerField()  # IntegerField for price
    status = models.CharField(max_length=255)  # CharField for status with max length of 255 characters
    duration = models.IntegerField()  # IntegerField for duration
    
    def __str__(self):
        return self.name  # Returns the name of the course as the string representation of the model object


# Model for Cart
class Cartt(models.Model):
    user= models.ForeignKey(User, on_delete=models.CASCADE)  # ForeignKey to User model with CASCADE deletion behavior
    course= models.ForeignKey(Course, on_delete=models.CASCADE, default='')  # ForeignKey to Course model with CASCADE deletion behavior and default value for course_id
    # Note: default='' is used to set a default value for course_id, if not specified during object creation
    
# Model for Payment
class Payment(models.Model):
    user_id = models.ForeignKey(User, on_delete=models.CASCADE)  # ForeignKey to User model with CASCADE deletion behavior
    course_id = models.ForeignKey(Course, on_delete=models.CASCADE)  # ForeignKey to Course model with CASCADE deletion behavior
    amount = models.IntegerField()  # IntegerField for amount
    Status = models.IntegerField()  # IntegerField for status (Note: 'Status' is capitalized)

# Create your models here.
class silmodel(models.Model):
    user=models.ForeignKey(User,on_delete=models.CASCADE)
    phone=models.BigIntegerField()
    image=models.ImageField(upload_to='images/')