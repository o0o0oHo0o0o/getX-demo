class Product{
  final String name;
  final double price;
  final String imageUrl;

  const Product({required this.name, required this.price, required this.imageUrl});

  static const List<Product> products = [
    Product(
        name: 'Hook',
        price: 0.9,
        imageUrl: 'https://static.vecteezy.com/system/resources/previews/019/842/975/original/hooked-protocol-hook-coin-icon-isolated-on-white-background-vector.jpg',
    ),
    Product(
      name: 'BTC',
      price: 66423.15,
      imageUrl: 'https://cdn.pixabay.com/photo/2021/04/30/16/47/btc-logo-6219386_960_720.png',
    ),
    Product(
      name: 'BNB',
      price: 604.5,
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk1FEDoy_TwTyZJWaXXGLTMWjHkmPz4geTSiTYnm6BJA&s',
    ),
  ];
}