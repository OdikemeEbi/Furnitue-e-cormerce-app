import 'package:flutter/material.dart';
import 'package:my_flutter_app/data/model.dart';
import 'package:my_flutter_app/detail_screen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> category = ['All', 'Chair', 'Table', 'Office Desk', 'Dining table', 'Coffee Table'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.menu),
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
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: category.length,
                  itemBuilder: (context, index) {
                    final newCategory = category[index];
                    return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: index == 0 ? Colors.orange.shade900 : Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        child: SizedBox(child: Text(newCategory)));
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              height: 190,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orange.shade100.withOpacity(0.3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 220,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 235, 221, 200),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(100), bottomRight: Radius.circular(100), bottomLeft: Radius.circular(20), topLeft: Radius.circular(20)),
                    ),
                    child: const Column(
                      children: [
                        Image(
                          height: 140,
                          image: AssetImage(
                            'assets/images/chair.png',
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'Flash sale',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 150,
                        child: Text(
                          'Get your Special sale up to 50%',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange.shade900,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Shop Now',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                  itemCount: productList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    Product newProduct = productList[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                      selectedProduct: newProduct,
                                    )));
                      },
                      child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.orange.shade100.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(
                                20,
                              )),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Image.asset(
                                  newProduct.image,
                                  height: 120,
                                ),
                              ),
                              Text("N${newProduct.price.toString()}"),
                            ],
                          )),
                    );
                  }),
            ))
          ],
        ),
      ),
    );
  }
}
