from django.db import models

# Importando o modelo do Book:
from book.models import Book
# Importando o modelo do Book:
from reader.models import Reader

# Create your models here.
class Cart(models.Model):
    id_book = models.OneToOneField(Book, models.DO_NOTHING, db_column='id_book', primary_key=True)  # The composite primary key (id_book, id_reader) found, that is not supported. The first column is selected.
    id_reader = models.ForeignKey(Reader, models.DO_NOTHING, db_column='id_reader')

    class Meta:
        managed = False
        db_table = 'cart'
        unique_together = (('id_book', 'id_reader'),)