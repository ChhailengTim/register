import 'package:get/get.dart';
import 'package:register/payment/model/card_model.dart';

class CardController extends GetxController {
  final cardList = [
    const CardCustom(
      type: "VISA",
      holdername: "CHHAILENG TIM",
      cardnumber: "CARD NUMBER",
      numbercard: "1234 3212 4353 8569",
      date: "09/23",
    ),
    const CardCustom(
      type: "VISA",
      holdername: "CHHAILENG TIM",
      cardnumber: "CARD NUMBER",
      numbercard: "1234 3212 4353 8569",
      date: "09/23",
    ),
    const CardCustom(
      type: "VISA",
      holdername: "CHHAILENG TIM",
      cardnumber: "CARD NUMBER",
      numbercard: "1234 3212 4353 8569",
      date: "09/23",
    ),
    const CardCustom(
      type: "VISA",
      holdername: "CHHAILENG TIM",
      cardnumber: "CARD NUMBER",
      numbercard: "1234 3212 4353 8569",
      date: "09/23",
    ),
  ].obs;
}
