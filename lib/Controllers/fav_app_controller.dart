import 'package:get/get.dart';

class FavAppController extends GetxController{
  RxList<String> fruitList = ['Orange', 'Apple', 'Banana', 'Mango'].obs;
  RxList tempFruitList = [].obs;

  void addToFav(String val){
    tempFruitList.add(val);
  }

  void removeFromFav(String val){
    tempFruitList.remove(val);
  }
}