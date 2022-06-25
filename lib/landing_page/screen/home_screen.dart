import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:register/landing_page/controller/product_controller.dart';
import 'package:register/landing_page/model/appbar_model.dart';
import 'package:register/landing_page/model/profile_model.dart';
import 'package:register/landing_page/model/search_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.put(ProductController());
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://i.pinimg.com/736x/cf/05/47/cf05470bc4296650458419f195ba5690.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppbarModel(),
                  const ProductModel(),
                  const SearchModel(),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Top Products",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Obx(
                    () => SizedBox(
                      height: 220,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: productController.product.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            height: 200,
                            width: 150,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.network(
                                      "${productController.product[index].img}",
                                      height: 100,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "${productController.product[index].title}",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "${productController.product[index].price}",
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Card(
                                      child: Container(
                                        color: Colors.pink,
                                        height: 35,
                                        width: 35,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                            size: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Recommended Products",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Obx(
                    () => SizedBox(
                      height: 900,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: productController.product.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            height: 140,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Image.network(
                                      "${productController.product[index].img}",
                                      height: 100,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "${productController.product[index].title}",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "${productController.product[index].price}",
                                          style: const TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Container(
                                      alignment: Alignment.bottomRight,
                                      child: Card(
                                        color: Colors.pink,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                            size: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
