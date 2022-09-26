import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:food_delivery/components/restaurant.dart';
import 'package:food_delivery/screens/home/menulist.dart';
import 'item_list.dart';
import 'package:http/http.dart' as http;

var baseURI = "food-app-shankara.herokuapp.com";

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
    //var uri = Uri.parse('http://192.168.78.69:3000');

    //var baseURI = "192.168.78.69:3000";
    var response =
      await http.get(Uri.https(baseURI, "restaurants"));
    var jsonData = jsonDecode(response.body);

    List<RestaurantInfo> restaurants = [];

    for(var r in jsonData){
      RestaurantInfo restaurant = RestaurantInfo(r['name'], r['description'], r['image'], r['rating']);
      restaurants.add(restaurant);
    }
    // print(restaurants);
    return restaurants;
  }



  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: Drawer(
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            var currentCategory = categories[index];
            return Padding(
              padding: const EdgeInsets.fromLTRB(0,100,10,0),
              child: Column(
                children: [
                  //  DrawerHeader(
                  //   decoration: BoxDecoration(
                  //     color: Colors.blue,
                  //   ),
                  //   child: Text('Drawer Header'),
                  // ),
                  ListTile(
                    title:
                    Card(child: Center(child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(currentCategory),
                    ))),
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>
                                ItemList(
                                    restaurantName: "name"
                                )
                            )
                        )
                      }
                  ),
                  // ListTile(
                  //   title: Text('Item 2'),
                  //
                  // ),
                ]
              ),
            );
          },

        ),
      ),
      appBar: AppBar(
        // leading: Padding(
        //   padding: const EdgeInsets.fromLTRB(20, 10, 0, 1),
        //   child: DropDown(),
        // ),
        //Icon(Icons.menu),
        title: Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: FutureBuilder(
          future: getRestaurantInfo(),
          builder: (context, snapshot){
            if(snapshot.data == null){
              return Center(
                child: Column(
                  children: [
                    Text("Loading....."),
                    ElevatedButton(onPressed: (){print("not Working");}, child: Text("Click to print"))
                  ],
                ),
              );
            } else{
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, i){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                        child: Column(
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
                                        image: NetworkImage(snapshot.data[i].image),
                                      )
                                  ),
                                ),
                              ),
                            ),
                            Stack(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(snapshot.data[i].name)
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    snapshot.data[i].rating.toString(),
                                  ),
                                )
                              ]
                            ),
                          ],
                        ),
                      ),
                      subtitle: Text(snapshot.data[i].description),
                      onTap: () =>{
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ItemList(
                              // restaurantID: snapshot.data[i].id,
                              restaurantName: snapshot.data[i].name
                          )
                          )
                        )

                      },
                      ),
                      // trailing: Text(snapshot.data[i].rating),
                  );
                }
              );

            }
          },
        ),
      ),
    );
  }
}




