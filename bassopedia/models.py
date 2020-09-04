from django.db import models

# Create your models here.
class Genre(models.Model):
    genre = models.CharField(max_length=100)

    def __str__(self):
        return self.genre

class Bassist(models.Model):
    genre = models.ForeignKey(Genre, on_delete=models.CASCADE, related_name='bassists')
    name = models.CharField(max_length=100)
    image_url = models.TextField()
    artists_played_with = models.CharField(max_length=100)
    notable_basses = models.CharField(max_length=200)
    type_of_basses_played = models.CharField(max_length=100)

    def __str__(self):
        return f'{self.name}, {self.image_url}, {self.artists_played_with}, {self.type_of_basses_played}'