from rest_framework import serializers
from .models import Genre, Bassist

class GenreSerializer(serializers.HyperlinkedModelSerializer):
    bassists = serializers.HyperlinkedRelatedField(
        view_name='bassist_detail',
        many=True,
        read_only=True
    )
    genre_url = serializers.ModelSerializer.serializer_url_field(
        view_name='genre_detail'
    )
    class Meta:
        model = Genre
        fields = ('id', 'genre_url', 'genre', 'bassists',)

class BassistSerializer(serializers.HyperlinkedModelSerializer):
    genre = serializers.HyperlinkedRelatedField(
        view_name='genre_detail',
        read_only=True
    )
    genre_id = serializers.PrimaryKeyRelatedField(
        queryset=Genre.objects.all(),
        source='genre'
    )
    class Meta:
        model = Bassist
        fields = ('id', 'genre', 'genre_id', 'name', 'image_url', 'artists_played_with', 'notable_basses', 'type_of_basses_played',)
