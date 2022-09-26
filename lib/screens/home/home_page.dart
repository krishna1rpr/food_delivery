import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_delivery/components/Restaurant.dart';
import 'package:http/http.dart' as http;


//
// class Home extends StatefulWidget {
//   const Home({ super.key });
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Home'),),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: ListView(
//           children: [
//             Restaurant(),
//             Restaurant(),
//             Restaurant(),
//             Restaurant(),
//             Restaurant(),
//             Restaurant(),
//             Restaurant(),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//

















class HomePage extends StatefulWidget{
  const HomePage({
    super.key
  });

  @override
  State<HomePage> createState() => _HomePage();
}


class _HomePage extends State<HomePage>{

  Future getRestaurantInfo() async{
    // Uri.http("192.168.78.69:/3000", "restaurants")
    // var uri = Uri.parse('http://192.168.78.69:3000/restaurants');
    var response =
      await http.get(Uri.http("192.168.78.69:3000", "restaurants"));
    var jsonData = jsonDecode(response.body);

    List<RestaurantInfo> restaurants = [];

    for(var r in jsonData){
      RestaurantInfo restaurant = RestaurantInfo(r['name'], r['description'], r['image'], r['rating']);
      restaurants.add(restaurant);
    }
    print(restaurants);
    return restaurants;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            ElevatedButton(onPressed: (){getRestaurantInfo();}, child: Text("Click")),
            // Restaurant(),
            // Restaurant(),
            // Restaurant(),
            // Restaurant(),
            // Restaurant(),
            // Restaurant(),
            // Restaurant(),


          ],
        ),
      ),
    );
  }
}