from rest_framework import serializers
from .models import Book

class BookSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(required=False)
    
    class Meta:
        model = Book
        fields = '__all__'

# Atualizar Ebook
class UpdateBookPriceSerializer(serializers.ModelSerializer):
    class Meta:
        model = Book
        fields = ['price']