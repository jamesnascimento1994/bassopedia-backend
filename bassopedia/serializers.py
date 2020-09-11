from rest_framework import serializers
from django.contrib.auth import authenticate
from rest_framework_simplejwt.tokens import RefreshToken
from django.contrib.auth.models import User
from .models import Genre, Bassist

class UserSerializer(serializers.ModelSerializer):
    password = serializers.CharField(write_only=True)
    email = serializers.CharField(write_only=True)
    username = serializers.CharField(write_only=True)

    class Meta:
        model = User
        fields = ('email', 'username', 'password')

    def create(self, validated_data):

        username = validated_data['username']
        email = validated_data['email']
        password = validated_data['password']
        user = User(email=email, username=username)
        # Sets the user’s password to the given raw string,
        # taking care of the password hashing. Doesn’t save the User object.

        user.set_password(password)

        # save() method to save the user object
        user.save()

        return user

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
