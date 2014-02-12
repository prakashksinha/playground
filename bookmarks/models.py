# import needed models
from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User


# Create your models here.

# create user object
class Person(User):
    internal_id      = models.CharField(max_length=25, null=True, blank=True)
    verified         = models.NullBooleanField(default=False)
    approval_date    = models.DateTimeField(null=True, blank=True)

# create list object
class List(models.Model):
    name             = models.CharField('List Name', max_length=50)
    created_date     = models.DateTimeField(auto_now_add=True)
    modified_date    = models.DateTimeField(auto_now=True)
    links            = models.ManyToManyField("Link")

    def __str__(self):
        return self.name

# create link object
class Link(models.Model):
    name             = models.CharField('Link Name', max_length=50)
    created_date     = models.DateTimeField(auto_now_add=True)
    modified_date    = models.DateTimeField(auto_now=True)
    tags             = models.TextField(null=True, blank=True)

    def __str__(self):
        return self.name

