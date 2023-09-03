from django.db import models

from django.utils import timezone   

class Vehichle(models.Model):
    name=models.CharField(max_length=30)
    brand=models.CharField(max_length=30)
    slug=models.SlugField(max_length=100)
    age=models.IntegerField(default=20)
    is_active=models.BooleanField(default=True)
    register_date=models.DateTimeField(default=timezone.now)
    sellor_email=models.EmailField(max_length=100)

    class Meta:
        verbose_name_plural = "vehicles"

    def __str__(self) -> str:
        return self.name