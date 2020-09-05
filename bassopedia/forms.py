from django import forms
from .models import Genre, Bassist

class GenreForm(forms.ModelForm):

    class Meta:
        model = Genre
        fields = ('genre')

class BassistForm(forms.ModelForm):

    class Meta:
        model = Bassist
        fields = ('genre', 'name', 'image_url', 'artists_played_with', 'notable_basses', 'type_of_basses_played',)