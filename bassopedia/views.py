from rest_framework import generics
from .serializers import GenreSerializer, BassistSerializer
from .models import Genre, Bassist
# Create your views here.

class GenreList(generics.ListCreateAPIView):
    queryset = Genre.objects.all()
    serializer_class = GenreSerializer

class GenreDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Genre.objects.all()
    serializer_class = GenreSerializer

class BassistList(generics.ListCreateAPIView):
    queryset = Bassist.objects.all()
    serializer_class = BassistSerializer

class BassistDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Bassist.objects.all()
    serializer_class = BassistSerializer