class ItemInfo{
  int id;
  String name;
  int price;
  String image;
  String description;
  String catergory;
  int rating;

  ItemInfo(
    this.id,
    this.name,
    this.price,
    this.image,
    this.description,
    this.catergory,
    this.rating
  );

}


class RestaurantInfo{
  // int id;
  String name;
  String description;
  String image;
  int rating;

  RestaurantInfo(
    // this.id,
    this.name,
    this.description,
    this.image,
    this.rating
  );
}

// class Restaurant extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context){
//     return Center(
//       child: Card(
//         color: Colors.grey,
//         elevation: 0,
//         shape: RoundedRectangleBorder(
//           side: BorderSide(
//             color: Theme.of(context).colorScheme.outline,
//           ),
//           borderRadius: const BorderRadius.all(Radius.circular(12)),
//         ),
//         child: Column(
//           children: [
//             Center(
//               child: new AspectRatio(
//                 aspectRatio: 2.5,
//                 child: new Container(
//                   decoration: new BoxDecoration(
//                       image: new DecorationImage(
//                         fit: BoxFit.fitWidth,
//                         alignment: FractionalOffset.topCenter,
//                         image: new NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
//                       )
//                   ),
//                 ),
//               ),
//             ),
//             Stack(
//               children: [
//                 Align(
//                     alignment: Alignment.topLeft,
//                     child: Text("RESTAURANT NAME")
//                 ),
//                 Align(
//                     alignment: Alignment.topRight,
//                     child: Text("RATING!!")
//                 ),
//               ],
//             ),
//             Flexible(
//                 child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut l.")
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }