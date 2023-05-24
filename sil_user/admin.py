from django.contrib import admin
from sil_user.models import Categories, Cartt, Course, Payment

admin.site.register(Categories)
admin.site.register(Course)
admin.site.register(Cartt)
admin.site.register(Payment)