import 'package:fds/constants.dart';
import 'package:flutter/material.dart';

class List_of_Restaurants extends StatelessWidget {
  const List_of_Restaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kSecondary,
          body: Column(
            children: const [
              RestCard(
                  imagePath: 'assets/images/icon_Restaurant_1.png',
                  cardTitle: 'Its Eatoo',
                  restDescription:
                      'Pizza, Burger, Fries, Steaks, Chicken, Desserts, Cold Drinks'),
              RestCard(
                  imagePath: 'assets/images/icon_Restaurant_2.png',
                  cardTitle: 'Shinwari, Nishat Chowk',
                  restDescription:
                      'Fish, Chicken and Beef Karahi, Desserts, Cold Drinks'),
              RestCard(
                  imagePath: 'assets/images/icon_Restaurant_3.png',
                  cardTitle: 'Pay & Pick',
                  restDescription:
                      'Fish, Chicken and Beef Karahi, Desserts, Cold Drinks')
            ],
          )
          // Card(
          //   elevation: 5,
          //   margin: const EdgeInsets.all(15),
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(15),
          //   ),
          //   child: Container(
          //     height: 280,
          //     padding: EdgeInsets.all(10),
          //     child: Column(
          //       // mainAxisAlignment: MainAxisAlignment.start,
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Image.asset('assets/images/icon_Restaurant_1.png'),
          //         SizedBox(
          //           height: 12,
          //         ),
          //         const Text(
          //           'It\'s Eatoo',
          //           style: cardStyle_1,
          //         ),
          //         SizedBox(
          //           height: 12,
          //         ),
          //         Wrap(
          //           children: const [
          //             Text(
          //                 'Pizza, Burger, Fries, Steaks, Chicken, Desserts, Cold Drinks'),
          //           ],
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          ),
    );
  }
}
