from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ('album', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='albuminfo',
            name='photo',
            field=models.ImageField(blank=True, upload_to='album/', verbose_name='图片'),
        ),
    ]
