// Our mobile app provides a comprehensive digital platform where travelers can easily search for bus schedules, book tickets, and make secure payments online. Bus operators can manage their schedules, validate tickets, and track bookings in real-time, improving efficiency and customer satisfaction.

// Top Navbar: profile icon (left), text 'home' in the middle,  notification icon (right)
// Body: Column with 4 children: Starting point textfield (top), Destination textfield (middle), 'Date' textfield (middle), 'Search' button (bottom) , 'Popular Destinations' text (bottom), GridView with 4 children card childrens with images: 'Nairobi', 'Mombasa', 'Kisumu', 'Eldoret' (bottom)

// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('Home'),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,leading: const IconButton(
          icon: Icon(Icons.account_circle),
          iconSize: 32,
          onPressed: null,
        ),
        actions: const <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: null,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                hintText: 'Starting point',
                prefixIcon: Icon(Icons.my_location),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Destination',
                prefixIcon: Icon(Icons.location_on),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Date',
                prefixIcon: Icon(Icons.calendar_today),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {},
              child: const Text('Search'),
            ),
            const SizedBox(height: 32),
            Advertisement(),
          ],
        ),
      ),
    );
  }
}

class Advertisement extends StatelessWidget {
  const Advertisement({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Image.asset('assets/images/hotel.jpg'),
    );
  }
}
// class Advertisement extends StatelessWidget {
//   final List<String> imageUrls;
//   const Advertisement({super.key, required this.imageUrls});

//   @override
//   Widget build(BuildContext context) {
//     return CarouselSlider(
//       options: CarouselOptions(
//         height: 300.0,
//         enlargeCenterPage: true,
//         autoPlay: true,
//         aspectRatio: 16 / 9,
//         autoPlayInterval: Duration(seconds: 3),
//         autoPlayAnimationDuration: Duration(milliseconds: 800),
//         enableInfiniteScroll: true,
//         viewportFraction: 0.8,
//       ),
//       items: imageUrls.map((imageUrl) {
//         return Builder(
//           builder: (BuildContext context) {
//             return Container(
//               height: 300.0,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(16.0),
//                 image: DecorationImage(
//                   image: AssetImage(imageUrl),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             );
//           },
//         );
//       }).toList(),
//     );
//   }
// }
