class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final double discountPrice;
  final String material;
  final String image;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.discountPrice,
    required this.material,
    required this.image,
  });
}

List<Product> productList = [
  Product(
      id: 1,
      name: "Classic Wooden Chair",
      description: "A sturdy and elegant wooden chair, perfect for dining rooms.",
      price: 120.00,
      discountPrice: 99.00,
      material: "Wood",
      image: 'assets/images/armchair.avif'),
  Product(
    id: 2,
    name: "Modern Office Chair",
    description: "Ergonomic office chair with adjustable height and armrests.",
    price: 250.00,
    discountPrice: 199.00,
    material: "Mesh and Metal",
    image: 'assets/images/armchair2.avif',
  ),
  Product(
      id: 3,
      name: "Velvet Lounge Chair",
      description: "A luxurious velvet lounge chair, ideal for relaxation.",
      price: 300.00,
      discountPrice: 249.00,
      material: "Velvet and Wood",
      image: 'assets/images/table1.avif'),
  Product(
    id: 4,
    name: "Outdoor Patio Chair",
    description: "Durable chair designed for outdoor use, resistant to weather.",
    price: 85.00,
    discountPrice: 75.00,
    material: "Plastic and Metal",
    image: 'assets/images/Untitled.jpg',
  ),
  Product(
      id: 5,
      name: "Recliner Chair",
      description: "Comfortable recliner with adjustable positions and padding.",
      price: 500.00,
      discountPrice: 450.00,
      material: "Leather",
      image: 'assets/images/orange-leather-sofa-isolated-white-background_186380-676.avif'),
  Product(
      id: 6,
      name: "Minimalist Dining Chair",
      description: "Simple and modern dining chair with a clean design.",
      price: 95.00,
      discountPrice: 80.00,
      material: "Metal and Plastic",
      image: 'assets/images/chair.png'),
];
