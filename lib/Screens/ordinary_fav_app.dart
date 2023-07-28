import 'package:flutter/material.dart';

class OrdinaryFavApp extends StatefulWidget {
  const OrdinaryFavApp({super.key});

  @override
  State<OrdinaryFavApp> createState() => _OrdinaryFavAppState();
}

class _OrdinaryFavAppState extends State<OrdinaryFavApp> {
  List<String> fruitList = ['Orange', 'Apple', 'Banana', 'Mango'];
  List<String> tempFruitList = [];

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite App'),
      ),
      body: ListView.builder(
        itemCount: fruitList.length,
          itemBuilder: (context, index){
        return Card(
          child: ListTile(
            title: Text(fruitList[index].toString()),
            trailing: Icon(tempFruitList.contains(fruitList[index].toString()) ? Icons.favorite : Icons.favorite_border_outlined,
              color: Colors.red,),
            onTap: (){
              if(tempFruitList.contains(fruitList[index].toString())){
                tempFruitList.remove(fruitList[index].toString());
              }
              else{
              tempFruitList.add(fruitList[index].toString());
              }

              setState(() {

              });
            },
          ),
        );
      }),
    );
  }
}
