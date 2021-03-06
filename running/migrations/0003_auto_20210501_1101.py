# Generated by Django 3.1.3 on 2021-05-01 03:01

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('running', '0002_auto_20210501_1045'),
    ]

    operations = [
        migrations.RenameField(
            model_name='cities',
            old_name='id',
            new_name='city_id',
        ),
        migrations.AddField(
            model_name='cities',
            name='country_id',
            field=models.ForeignKey(db_column='country_id', null=True, on_delete=django.db.models.deletion.SET_NULL, to='running.countries'),
        ),
        migrations.AddField(
            model_name='cities',
            name='state_id',
            field=models.ForeignKey(db_column='state_id', null=True, on_delete=django.db.models.deletion.SET_NULL, to='running.states'),
        ),
        migrations.AddField(
            model_name='states',
            name='country_id',
            field=models.ForeignKey(db_column='country_id', null=True, on_delete=django.db.models.deletion.SET_NULL, to='running.countries'),
        ),
    ]
