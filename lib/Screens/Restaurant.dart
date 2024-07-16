import 'package:fds/constants.dart';
import 'package:flutter/material.dart';

class Restaurant extends StatelessWidget {
  const Restaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: kSecondary,
        body: Center(
          child: Text(
            'Coming Soon',
            style: cardStyle_1,
          ),
        ),
      ),
    );
  }
}
