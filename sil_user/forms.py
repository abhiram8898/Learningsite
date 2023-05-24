
from django import forms
from .models import silmodel
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User


class CreateUserForm(UserCreationForm):
     class Meta(UserCreationForm.Meta):
         model=User
         fields=['username','email','password1','password2']
        
class silForm(forms.ModelForm):
      class Meta:
        model=silmodel
        fields = ['phone','image']