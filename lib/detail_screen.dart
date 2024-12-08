import 'package:flutter/material.dart';
import 'package:my_flutter_app/data/model.dart';
import 'package:my_flutter_app/initial_screen.dart';

class DetailScreen extends StatefulWidget {
  final Product selectedProduct;
  const DetailScreen({super.key, required this.selectedProduct});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  // Product? selectedProduct;
  // Product? getProductById(int id) {
  //   return productList.firstWhere(
  //     (product) => product.id == id,
  //   );
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   selectedProduct = getProductById(widget.id);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.withOpacity(0.1),
        centerTitle: true,
        // leading: const Icon(Icons.menu),
        title: Text(
          'FurniLux',
          style: TextStyle(color: Colors.orange.shade900, fontWeight: FontWeight.w700),
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 28,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.shopping_cart_outlined,
            size: 24,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        color: Colors.orange.withOpacity(0.1),
        height: MediaQuery.sizeOf(context).height,
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 360,
                  width: double.infinity,
                  // color: Colors.orange.withOpacity(0.1),
                  child: Center(
                      child: Image.asset(
                    widget.selectedProduct.image,
                    height: 300,
                  )),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40, right: 16, left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('4.5')
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.selectedProduct.name,
                                style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'N${widget.selectedProduct.price}',
                                    style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'N${widget.selectedProduct.discountPrice}',
                                    style: const TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor: Colors.grey,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const Divider(),
                          const Text(
                            'Description',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            width: double.maxFinite,
                            child: Text(
                              widget.selectedProduct.description,
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const Divider(),
                          const Text(
                            'Material:',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            width: double.maxFinite,
                            child: Text(
                              widget.selectedProduct.material,
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          AppButtons(bgColor: Colors.orange.shade700, text: 'Buy Now')
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: 340,
              left: 80,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 250, 238, 219),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                height: 35,
                width: 280,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Color'),
                    SizedBox(
                      width: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.black,
                          ),
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.orange,
                          ),
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.red,
                          ),
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
