import 'package:fds/constants.dart';
import 'package:flutter/material.dart';
import 'package:fds/Screens/List_of_Restaurants_2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [Text('text')],
        ),
      ),
      // appBar: AppBar(
      //   backgroundColor: kPrimary,
      //   centerTitle: true,
      //   title: Column(
      //     children: [
      //       const Text('FDS',
      //           style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      //       Center(
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: const [
      //             Text(
      //               'FAST ',
      //               style: TextStyle(fontWeight: FontWeight.bold),
      //             ),
      //             Text(
      //               'DELIVERY SERVICE',
      //               style: TextStyle(fontWeight: FontWeight.w200),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      backgroundColor: kSecondary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 150,
            color: kPrimary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('FDS',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'FAST ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        'DELIVERY SERVICE',
                        style: TextStyle(
                            fontWeight: FontWeight.w200, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 200),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RestaurantListScreen()),
                    );
                  },
                  child: HomePageCard(
                      cardTitle: 'Food',
                      imagePath: 'assets/images/icon_food.png'),
                ),
                HomePageCard(
                    cardTitle: 'General',
                    imagePath: 'assets/images/icon_general.png'),
                HomePageCard(
                    cardTitle: 'Sawari',
                    imagePath: 'assets/images/icon_sawari.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
