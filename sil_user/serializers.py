from rest_framework import serializers
from .models import Categories, Course, Cartt, Payment, silmodel

class CategoriesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Categories
        fields = '__all__'  # You can specify the fields you want to include in the API response

class CourseSerializer(serializers.ModelSerializer):
    category_id = CategoriesSerializer()  # Use CategoriesSerializer to serialize the ForeignKey field
    class Meta:
        model = Course
        fields = '__all__'

class CarttSerializer(serializers.ModelSerializer):
    class Meta:
        model = Cartt
        fields = '__all__'

class PaymentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Payment
        fields = '__all__'

class SilmodelSerializer(serializers.ModelSerializer):
    class Meta:
        model = silmodel
        fields = '__all__'
