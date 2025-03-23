import 'package:flutter/material.dart';
import 'package:icon_ratingbar/icon_ratingbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Icon Rating Bar Demo',
      home: RatingPage(),
    );
  }
}

class RatingPage extends StatefulWidget {
  @override
  _RatingPageState createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: const Text("Rating Bar Example"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),

              IconRatingBar(
                iconSize: 20,
                containerWidth: 200,
                containerHeight: 40,
                totalStars: 5,
                onRatingChanged: (rating) {
                },
                selectedIcon: Icons.favorite,
                unselectedIcon: Icons.favorite_border,
                initialRating: 0,
                selectedColor: Colors.red,
                unselectedColor: Colors.grey,
                gap: 10.0,
                containerBackgroundColor: Colors.white,
                shadowColor: Colors.black26,
                borderColor: Colors.red,
                borderRadius: 16.0,
                borderWidth: 1.0,
              ),
              const SizedBox(height: 10),

              IconRatingBar(
                iconSize: 20,
                containerWidth: 200,
                containerHeight: 40,
                totalStars: 5,
                onRatingChanged: (rating) {
                },
                selectedIcon: Icons.favorite,
                unselectedIcon: Icons.favorite_border,
                selectedColor: const LinearGradient(
                  colors: [Colors.orange, Colors.pink],
                ),
                unselectedColor: Colors.grey,
                containerBackgroundColor: const LinearGradient(colors: [Colors.white, Colors.white]),
                shadowColor: Colors.black.withOpacity(0.3),
                borderColor: Colors.red,
              ),
              const SizedBox(height: 10),

              IconRatingBar(
                iconSize: 20,
                containerWidth: 200,
                containerHeight: 40,
                totalStars: 5,
                onRatingChanged: (rating) {
                },
                selectedIcon: Icons.star,
                unselectedIcon: Icons.star_border,
                selectedColor: const Color.fromARGB(255, 237, 214, 4),
                unselectedColor: Colors.grey,
                gap: 10.0,
                containerBackgroundColor: Colors.white,
                shadowColor: Colors.black26,
                borderColor: Colors.white,
                borderRadius: 16.0,
                borderWidth: 2.0,
              ),
              const SizedBox(height: 10),

              IconRatingBar(
                iconSize: 20,
                containerWidth: 200,
                containerHeight: 40,
                totalStars: 5,
                onRatingChanged: (rating) {
                },
                selectedIcon: Icons.star,
                unselectedIcon: Icons.star_border,
                selectedColor: const LinearGradient(
                  colors: [Colors.yellow, Colors.pink],
                ),
                unselectedColor: Colors.grey,
                containerBackgroundColor: const LinearGradient(colors: [Colors.white, Colors.white]),
                shadowColor: Colors.black.withOpacity(0.3),
                borderColor: Colors.white,
              ),
              const SizedBox(height: 10),

              IconRatingBar(
                iconSize: 20,
                containerWidth: 200,
                containerHeight: 40,
                totalStars: 5,
                onRatingChanged: (rating) {
                },
                selectedIcon: Icons.car_rental,
                unselectedIcon: Icons.car_rental_outlined,
                selectedColor: Colors.blue,
                unselectedColor: Colors.grey,
                gap: 10.0,
                containerBackgroundColor: Colors.white,
                shadowColor: Colors.black26,
                borderColor: Colors.blue,
                borderRadius: 16.0,
                borderWidth: 1.0,
              ),
              const SizedBox(height: 10),

              IconRatingBar(
                iconSize: 20,
                containerWidth: 200,
                containerHeight: 40,
                totalStars: 5,
                onRatingChanged: (rating) {
                },
                selectedIcon: Icons.car_rental,
                unselectedIcon: Icons.car_rental_outlined,
                selectedColor: const LinearGradient(
                  colors: [Colors.blue, Colors.green],
                ),
                unselectedColor: Colors.grey,
                containerBackgroundColor: const LinearGradient(colors: [Colors.white, Colors.white]),
                shadowColor: Colors.black.withOpacity(0.3),
                borderColor: Colors.blue,
              ),
              const SizedBox(height: 10),

              IconRatingBar(
                iconSize: 20,
                containerWidth: 200,
                containerHeight: 40,
                totalStars: 5,
                onRatingChanged: (rating) {
                },
                selectedIcon: Icons.wb_sunny,
                unselectedIcon: Icons.wb_sunny_outlined,
                initialRating: 2,
                selectedColor: Colors.orange,
                unselectedColor: Colors.grey,
                gap: 10.0,
                containerBackgroundColor: Colors.white,
                shadowColor: Colors.black26,
                borderColor: Colors.orange,
                borderRadius: 16.0,
                borderWidth: 1.0,
              ),
              const SizedBox(height: 10),

              IconRatingBar(
                iconSize: 20,
                containerWidth: 200,
                containerHeight: 40,
                totalStars: 5,
                onRatingChanged: (rating) {
                },
                selectedIcon: Icons.wb_sunny,
                unselectedIcon: Icons.wb_sunny_outlined,
                selectedColor: const LinearGradient(
                  colors: [Colors.orange, Colors.yellow],
                ),
                unselectedColor: Colors.grey,
                containerBackgroundColor: const LinearGradient(colors: [Colors.white, Colors.white]),
                shadowColor: Colors.black.withOpacity(0.3),
                borderColor: Colors.orange,
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
