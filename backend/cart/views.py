from rest_framework.generics import RetrieveAPIView, CreateAPIView, UpdateAPIView, DestroyAPIView
from rest_framework.permissions import IsAuthenticated, AllowAny
from .models import Cart
from .serializers import CartSerializer, CartBookSerializer
from rest_framework.response import Response
from rest_framework.status import HTTP_200_OK, HTTP_201_CREATED, HTTP_204_NO_CONTENT

# View para usuário autenticado
class CreateCartView(CreateAPIView):
    queryset = Cart.objects.all()
    serializer_class = CartSerializer
    permission_classes = [IsAuthenticated]

    def perform_create(self, serializer):
        # Define o usuário autenticado como o id_reader do novo carrinho
        serializer.save(id_reader=self.request.user.id)

class ClearCartView(DestroyAPIView):
    queryset = Cart.objects.all()
    permission_classes = [IsAuthenticated]

    def delete(self, request, *args, **kwargs):
        # Limpa o carrinho do usuário
        Cart.objects.filter(id_reader=self.request.user.id).delete()
        return Response({"message": "Cart cleared successfully."}, status=HTTP_204_NO_CONTENT)

class RetrieveCartView(RetrieveAPIView):
    serializer_class = CartSerializer
    permission_classes = [IsAuthenticated]

    def get_object(self):
        # Obtém o carrinho do leitor autenticado
        cart = Cart.objects.filter(id_reader=self.request.user.id).first()
        return cart
    
class AddToCartView(CreateAPIView):
    serializer_class = CartBookSerializer
    permission_classes = [IsAuthenticated]

    def perform_create(self, serializer):
        # Verifica se já existe um carrinho para o usuário autenticado
        cart = Cart.objects.filter(id_reader=self.request.user.id).first()
        if cart:
            # Se o carrinho já existe, apenas atualiza o id_book
            cart.id_book = serializer.validated_data['id_book']
            cart.save()
        else:
            # Se o carrinho não existe, cria um novo
            Cart.objects.create(id_reader=self.request.user, id_book=serializer.validated_data['id_book'])

