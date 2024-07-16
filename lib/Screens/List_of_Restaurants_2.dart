// import 'package:fds/Screens/Restaurant.dart';
// import 'package:fds/constants.dart';
// import 'package:flutter/material.dart';
//
// class List_of_Restaurants_2 extends StatelessWidget {
//   final List<Map<String, String>> sampleData = List.generate(9, (index) {
//     return {
//       'title': 'Its Eatoo ${index + 1}',
//       'imagePath': 'assets/images/icon_Restaurant_${index + 1}.png',
//       'Description':
//           'Pizza, Burger, Fries, Steaks, Chicken, Desserts, Cold Drinks',
//     };
//   });
//
//   List_of_Restaurants_2({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: kSecondary,
//         body: ListView.builder(
//           itemCount: sampleData.length,
//           itemBuilder: (context, index) {
//             return GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Restaurant()),
//                 );
//               },
//               child: RestCard(
//                 cardTitle: sampleData[index]['title']!,
//                 imagePath: sampleData[index]['imagePath']!,
//                 restDescription: sampleData[index]['Description']!,
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:fds/Screens/RestaurantDetailScreen.dart';
import 'package:flutter/material.dart';
import 'package:fds/constants.dart';

class RestaurantListScreen extends StatelessWidget {
  // Dummy data for restaurants
  final List<Map<String, dynamic>> restaurants = [
    {
      'name': 'Restaurant 1',
      'imageUrl': 'assets/images/icon_Restaurant_1.png',
      'menuCategories': ['Beverages', 'Burgers', 'Pizzas']
    },
    {
      'name': 'Restaurant 2',
      'imageUrl': 'assets/images/icon_Restaurant_2.png',
      'menuCategories': [
        'Appetizers',
        'Main Course',
        'Desserts',
        'Beverages',
        'Burgers',
        'Pizzas'
      ]
    },
    {
      'name': 'Restaurant 3',
      'imageUrl': 'assets/images/icon_Restaurant_3.png',
      'menuCategories': [
        'Appetizers',
        'Main Course',
        'Desserts',
        'Beverages',
        'Burgers',
        'Pizzas'
      ]
    },
    {
      'name': 'Restaurant 4',
      'imageUrl': 'assets/images/icon_Restaurant_4.png',
      'menuCategories': [
        'Appetizers',
        'Main Course',
        'Desserts',
        'Beverages',
        'Burgers',
        'Pizzas'
      ]
    },
    {
      'name': 'Restaurant 5',
      'imageUrl': 'assets/images/icon_Restaurant_5.png',
      'menuCategories': [
        'Appetizers',
        'Main Course',
        'Desserts',
        'Beverages',
        'Burgers',
        'Pizzas'
      ]
    },
    {
      'name': 'Restaurant 6',
      'imageUrl': 'assets/images/icon_Restaurant_6.png',
      'menuCategories': [
        'Appetizers',
        'Main Course',
        'Desserts',
        'Beverages',
        'Burgers',
        'Pizzas'
      ]
    },
    {
      'name': 'Restaurant 7',
      'imageUrl': 'assets/images/icon_Restaurant_7.png',
      'menuCategories': [
        'Appetizers',
        'Main Course',
        'Desserts',
        'Beverages',
        'Burgers',
        'Pizzas'
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
      appBar: AppBar(
        backgroundColor: kPrimary,
        title: Text('Restaurants'),
      ),
      body: ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = restaurants[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.asset(restaurant['imageUrl']),
              title: Text(restaurant['name']),
              subtitle: Text('Description of ${restaurant['name']}'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RestaurantDetailScreen(
                      imageUrl: restaurant['imageUrl'],
                      name: restaurant['name'],
                      menuCategories:
                          List<String>.from(restaurant['menuCategories']),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
