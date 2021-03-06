# Generated by Django 3.1.1 on 2020-09-05 01:22

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Genre',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('genre', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Bassist',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('image_url', models.TextField()),
                ('artists_played_with', models.CharField(max_length=100)),
                ('notable_basses', models.CharField(max_length=200)),
                ('type_of_basses_played', models.CharField(max_length=100)),
                ('genre', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='bassists', to='bassopedia.genre')),
            ],
        ),
    ]
