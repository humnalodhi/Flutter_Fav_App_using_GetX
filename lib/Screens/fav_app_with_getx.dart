import 'package:flutter/material.dart';
import 'package:flutter_fav_app_with_getx/Controllers/fav_app_controller.dart';
import 'package:get/get.dart';

class FavAppWithGetX extends StatefulWidget {
  const FavAppWithGetX({super.key});

  @override
  State<FavAppWithGetX> createState() => _FavAppWithGetXState();
}

class _FavAppWithGetXState extends State<FavAppWithGetX> {
  final FavAppController controller = Get.put(FavAppController());

  // List<String> fruitList = ['Orange', 'Apple', 'Banana', 'Mango'];
  // List<String> tempFruitList = [];

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite App with Getx'),
      ),
      body: ListView.builder(
          itemCount: controller.fruitList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(controller.fruitList[index].toString()),
                trailing: Obx(() {
                  print('rebuild');
                  return Icon(
                    controller.tempFruitList.contains(controller.fruitList[index].toString()) ? Icons.favorite : Icons.favorite_border_outlined,
                    color: Colors.red,
                  );
                }),
                onTap: () {
                  if (controller.tempFruitList
                      .contains(controller.fruitList[index].toString())) {
                    controller
                        .removeFromFav(controller.fruitList[index].toString());
                    //tempFruitList.remove(controller.fruitList[index].toString());
                  } else {
                    controller.addToFav(controller.fruitList[index].toString());
                    //tempFruitList.add(controller.fruitList[index].toString());
                  }
                  //setState(() {});
                },
              ),
            );
          }),
    );
  }
}
