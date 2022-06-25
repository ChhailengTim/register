import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:register/landing_page/controller/product_controller.dart';
import 'package:register/landing_page/model/appbar_model.dart';
import 'package:register/landing_page/screen/home_screen.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({Key? key}) : super(key: key);

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
                  AppbarModel(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "We Offers",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Obx(
                    () => GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                        ),
                        itemCount: productController.offers.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  "${productController.offers[index].pic}",
                                  height: 60,
                                ),
                                Text(
                                  "${productController.offers[index].label}",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
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
