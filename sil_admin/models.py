from django.db import models

# Create your models here.
# Create your models here.
from django.db import models
from django.contrib.auth.models import User
# model for catorgy
# class Categories(models.Model):
#     name=models.CharField(max_length=255)
#     image = models.ImageField(upload_to='category/')
#     description=models.CharField(max_length=255)
#     def __str__(self):
#         return self.name
# # model for courses
# class Course(models.Model):
#     name = models.CharField(max_length=255)
#     description = models.TextField()
#     category_id=models.ForeignKey(Categories, on_delete=models.CASCADE)
#     image = models.ImageField(upload_to='courses/')
#     price=models.IntegerField()
#     status = models.CharField(max_length=255)
#     duration=models.IntegerField()
#     def __str__(self):
#         return self.name