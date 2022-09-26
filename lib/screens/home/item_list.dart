import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:food_delivery/components/restaurant.dart';
import 'package:food_delivery/screens/home/home_page.dart';
import 'menulist.dart';


class ItemList extends StatefulWidget {
  // final int restaurantID;
  final String restaurantName;
  const ItemList({
    super.key,
    // required this.restaurantID,
    required this.restaurantName
  });

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {


  // Object getRestaurantMenu() {
  //   // var restaurantID = widget.restaurantID;
  //   //print(restaurantID);
  //   // var restaurantName = widget.restaurantName;
  //
  //   // var response = await http.get(
  //   //     Uri.https(baseURI, 'restaurants/1'));
  //   // // print(response.body);
  //   // var jsonData = jsonDecode(response.body);
  //   // var innerJson = jsonData.menu;
  //
  //   // List<ItemInfo> items = [];
  //   //
  //   // for (var i in menuList) {
  //   //   ItemInfo item = ItemInfo(
  //   //       i['id']!,
  //   //       "LOREM",
  //   //       333,
  //   //       "https://picsum.photos/500",
  //   //       "Dolor sit amet Dolor sit amet Dolor sit amet",
  //   //       "Indian",
  //   //       4
  //   //   );
  //   //   items.add(item);
  //   // }
  //   return items;
  //       // ItemInfo item =ItemInfo(
  //         // i['id'], i['name'], i['price'], i['image'], i['description'], i['category'], i['rating']
  //     // );
  //     // items.add(item);
  //   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MENU"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: ListView.builder(
          itemCount: menuList.length,
          itemBuilder: (BuildContext context, int index) {
            var currentItem = menuList[index];
            return Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                title: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: AspectRatio(
                        aspectRatio: 2.5,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                alignment: FractionalOffset.topCenter,
                                image: NetworkImage(currentItem['image']!),
                              )
                          ),
                        ),
                      ),
                    ),
                    Stack(children: [
                      Text(currentItem['name']!),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(currentItem['rating']!),
                      )
                    ]
                    )
                  ],
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(currentItem['price']!),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}




  // @override
  // Widget build(BuildContext context){
  //   return Scaffold(
  //     appBar: AppBar(
  //       //Icon(Icons.menu),
  //       title: Text('MENU'),
  //     ),
  //     body: Padding(
  //       padding: const EdgeInsets.all(20),
  //       child: FutureBuilder(
  //         future: getRestaurantInfo(),
  //         builder: (context, snapshot){
  //           if(snapshot.data == null){
  //             return Center(
  //               child: Column(
  //                 children: [
  //                   Text("Loading....."),
  //                   ElevatedButton(onPressed: (){print("not Working");}, child: Text("Click to print"))
  //                 ],
  //               ),
  //             );
  //           } else{
  //             return ListView.builder(
  //                 itemCount: snapshot.data.length,
  //                 itemBuilder: (context, i){
  //                   return Padding(
  //                     padding: const EdgeInsets.all(8.0),
  //                     child: ListTile(
  //                       title: Padding(
  //                         padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
  //                         child: Column(
  //                           children: [
  //                             Padding(
  //                               padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
  //                               child: AspectRatio(
  //                                 aspectRatio: 2.5,
  //                                 child: Container(
  //                                   decoration: BoxDecoration(
  //                                       image: DecorationImage(
  //                                         fit: BoxFit.fitWidth,
  //                                         alignment: FractionalOffset.topCenter,
  //                                         image: NetworkImage(snapshot.data[i].image),
  //                                       )
  //                                   ),
  //                                 ),
  //                               ),
  //                             ),
  //                             Stack(
  //                                 children: [
  //                                   Align(
  //                                       alignment: Alignment.centerLeft,
  //                                       child: Text(snapshot.data[i].name)
  //                                   ),
  //                                   Align(
  //                                     alignment: Alignment.topRight,
  //                                     child: Text(
  //                                       snapshot.data[i].rating.toString(),
  //                                     ),
  //                                   )
  //                                 ]
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                       subtitle: Text(snapshot.data[i].description),
  //                       onTap: () =>{
  //                         Navigator.push(
  //                             context,
  //                             MaterialPageRoute(builder: (context) => ItemList(
  //                               // restaurantID: snapshot.data[i].id,
  //                                 restaurantName: snapshot.data[i].name
  //                             )
  //                             )
  //                         )
  //
  //                       },
  //                     ),
  //                     // trailing: Text(snapshot.data[i].rating),
  //                   );
  //                 }
  //             );
  //
  //           }
  //         },
  //       ),
  //     ),
  //   );
  // }