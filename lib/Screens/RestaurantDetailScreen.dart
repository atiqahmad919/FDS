import 'package:flutter/material.dart';
import 'package:fds/constants.dart';

class RestaurantDetailScreen extends StatelessWidget {
  final String imageUrl;
  final String name;
  final List<String> menuCategories;

  const RestaurantDetailScreen({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.menuCategories,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: menuCategories.length,
      child: Scaffold(
        backgroundColor: kSecondary,
        appBar: AppBar(
          iconTheme: IconThemeData(color: kWhite),
          centerTitle: true,
          backgroundColor: kPrimary,
          title: Text(
            name,
            style: TextStyle(color: kWhite),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
            collapseMode: CollapseMode.parallax,
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Container(
              color: Colors.black.withOpacity(0.4), // Light shade of black
              child: TabBar(
                unselectedLabelColor: Colors.white60,
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                isScrollable: true,
                tabs: menuCategories
                    .map((category) => Tab(text: category))
                    .toList(),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: menuCategories
              .map((category) => MenuCategoryPage(category: category))
              .toList(),
        ),
      ),
    );
  }
}

class MenuCategoryPage extends StatelessWidget {
  final String category;

  const MenuCategoryPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    // Dummy data for sub-items
    final List<Map<String, String>> subItems = [
      {
        'name': '$category Item 1',
        'description': 'Description of $category Item 1'
      },
      {
        'name': '$category Item 2',
        'description': 'Description of $category Item 2'
      },
      {
        'name': '$category Item 3',
        'description': 'Description of $category Item 3'
      },
      {
        'name': '$category Item 4',
        'description': 'Description of $category Item 4'
      },
      {
        'name': '$category Item 5',
        'description': 'Description of $category Item 5'
      },
      {
        'name': '$category Item 6',
        'description': 'Description of $category Item 6'
      },
    ];

    return ListView.builder(
      itemCount: subItems.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(subItems[index]['name']!),
            subtitle: Text(subItems[index]['description']!),
          ),
        );
      },
    );
  }
}

// import 'package:fds/constants.dart';
// import 'package:flutter/material.dart';
//
// class RestaurantDetailScreen extends StatelessWidget {
//   final String imageUrl;
//   final String name;
//   final List<String> menuCategories;
//
//   const RestaurantDetailScreen(
//       {super.key,
//       required this.imageUrl,
//       required this.name,
//       required this.menuCategories});
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: menuCategories.length,
//       child: Scaffold(
//         backgroundColor: kSecondary,
//         appBar: AppBar(
//           iconTheme: IconThemeData(color: kWhite),
//           centerTitle: true,
//           backgroundColor: kPrimary,
//           title: Text(
//             name,
//             style: TextStyle(color: kWhite),
//           ),
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//           bottom: TabBar(
//             unselectedLabelColor: Colors.white60,
//             // labelColor: kWhite,
//             labelStyle:
//                 TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//             // dividerColor: kWhite,
//             isScrollable: true,
//             tabs:
//                 menuCategories.map((category) => Tab(text: category)).toList(),
//           ),
//           flexibleSpace: FlexibleSpaceBar(
//             background: Image.asset(
//               imageUrl,
//               fit: BoxFit.cover,
//             ),
//             collapseMode: CollapseMode.parallax,
//           ),
//         ),
//         body: TabBarView(
//           children: menuCategories
//               .map((category) => MenuCategoryPage(category: category))
//               .toList(),
//         ),
//       ),
//     );
//   }
// }
//
// class MenuCategoryPage extends StatelessWidget {
//   final String category;
//
//   const MenuCategoryPage({super.key, required this.category});
//
//   @override
//   Widget build(BuildContext context) {
//     // Dummy data for sub-items
//     final List<Map<String, String>> subItems = [
//       {
//         'name': '$category Item 1',
//         'description': 'Description of $category Item 1'
//       },
//       {
//         'name': '$category Item 2',
//         'description': 'Description of $category Item 2'
//       },
//       {
//         'name': '$category Item 3',
//         'description': 'Description of $category Item 2'
//       },
//       {
//         'name': '$category Item 4',
//         'description': 'Description of $category Item 2'
//       },
//       {
//         'name': '$category Item 5',
//         'description': 'Description of $category Item 2'
//       },
//       {
//         'name': '$category Item 6',
//         'description': 'Description of $category Item 2'
//       },
//     ];
//
//     return ListView.builder(
//       itemCount: subItems.length,
//       itemBuilder: (context, index) {
//         return Card(
//           margin: EdgeInsets.all(8.0),
//           child: ListTile(
//             title: Text(subItems[index]['name']!),
//             subtitle: Text(subItems[index]['description']!),
//           ),
//         );
//       },
//     );
//   }
// }
