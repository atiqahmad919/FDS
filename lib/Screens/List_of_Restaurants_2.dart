import 'package:fds/Screens/RestaurantDetailScreen.dart';
import 'package:flutter/material.dart';
import 'package:fds/constants.dart';

class RestaurantListScreen extends StatelessWidget {
  // Dummy data for restaurants
  final List<Map<String, dynamic>> restaurants = [
    {
      'name': 'Restaurant 1',
      'imageUrl': 'assets/images/icon_Restaurant_1.png',
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

  RestaurantListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: kWhite),
        backgroundColor: kPrimary,
        title: const Text(
          'Restaurants',
          style: TextStyle(color: kWhite),
        ),
      ),
      body: ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = restaurants[index];
          return GestureDetector(
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
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                height: 130,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                        ),
                        child: Image.asset(
                          restaurant['imageUrl'],
                          fit: BoxFit.cover,
                          height: double.infinity,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              restaurant['name'],
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Description of ${restaurant['name']}',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
