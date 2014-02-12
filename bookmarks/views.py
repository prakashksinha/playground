from django.shortcuts import render
from django.http import HttpResponse
from bookmarks.models import Person, List, Link

# Create your views here.

def showlists(request, id):
    person_lists = List.objects.order_by('-modified_date')
    output       = ", ".join([person_list for person_list in person_lists]) 
    return HttpResponse(output)
