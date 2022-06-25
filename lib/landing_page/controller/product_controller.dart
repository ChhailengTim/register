import 'package:get/get.dart';
import 'package:register/landing_page/model/product_model.dart';

class ProductController extends GetxController {
  List product = [
    Product(
      img: "https://www.pngkey.com/png/full/4-48879_fruit-png-fruits-png.png",
      title: "Fruite Cartoon",
      price: "\$5/1Kg",
    ),
    Product(
      img:
          "https://static.wixstatic.com/media/2cd43b_80acdbb066af4baaac3d53c833d1e45c~mv2.png/v1/fill/w_320,h_320,q_90/2cd43b_80acdbb066af4baaac3d53c833d1e45c~mv2.png",
      title: "Wine",
      price: "\$10/1 Battle",
    ),
    Product(
      img:
          "https://www.freeiconspng.com/thumbs/torn-paper/the-packaging-is-torn-paper-icon-clipart-photo-19.png",
      title: "Clean paper",
      price: "\$7/1 Package",
    ),
    Product(
      img:
          "https://i.pinimg.com/originals/b9/b5/5c/b9b55caf0103630a60687e195ca4a90e.png",
      title: "Knift",
      price: "\$15/1 Set",
    ),
    Product(
      img: "https://www.pngmart.com/files/22/Orange-juice-PNG-Pic.png",
      title: "Champagne Bottle",
      price: "\$6/1 Battle",
    ),
    Product(
      img: "https://www.pngmart.com/files/1/Toothbrush-Clip-Art-PNG.png",
      title: "Toothbrush",
      price: "\$3/1 Set",
    ),
  ].obs;
}
