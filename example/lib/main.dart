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
  int _rating1 = 0;
  int _rating2 = 0;
  int _rating3 = 0;
  int _rating4 = 0;
  int _rating5 = 0;
  int _rating6 = 0;

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
              const SizedBox(height: 10,),

              // Heart Icon - Normal
              IconRatingBar(
                totalStars: 5,
                onRatingChanged: (rating) {
                  setState(() {
                    _rating1 = rating;
                  });
                },
                selectedIcon: Icons.favorite,
                unselectedIcon: Icons.favorite_border,
                initialRating: _rating1.toDouble(),
                selectedColor: Colors.red, // Normal Red
                unselectedColor: Colors.grey, // Grey for unselected
                gap: 10.0,
                containerBackgroundColor: Colors.white,
                shadowColor: Colors.black26,
                borderColor: Colors.red,
                borderRadius: 16.0,
                borderWidth: 1.0,
              ),
              const SizedBox(height: 10,),

              // Heart Icon - Gradient
              IconRatingBar(
                totalStars: 5,
                onRatingChanged: (rating) {
                  setState(() {
                    _rating5 = rating;
                  });
                },
                selectedIcon: Icons.favorite,
                unselectedIcon: Icons.favorite_border,
                selectedColor: const LinearGradient(
                  colors: [Colors.orange, Colors.pink], // Gradient for selected
                ),
                unselectedColor: Colors.grey, // Normal Grey for unselected
                containerBackgroundColor: const LinearGradient(colors: [Colors.white, Colors.white]),
                shadowColor: Colors.black.withOpacity(0.3),
                borderColor: Colors.red,
              ),
              const SizedBox(height: 10,),

              // Star Icon - Normal
              IconRatingBar(
                totalStars: 5,
                onRatingChanged: (rating) {
                  setState(() {
                    _rating2 = rating;
                  });
                },
                selectedIcon: Icons.star,
                unselectedIcon: Icons.star_border,
                initialRating: _rating2.toDouble(),
                selectedColor: const Color.fromARGB(255, 237, 214, 4), // Normal Yellow
                unselectedColor: Colors.grey, // Grey for unselected
                gap: 10.0,
                containerBackgroundColor: Colors.white,
                shadowColor: Colors.black26,
                borderColor: Colors.white,
                borderRadius: 16.0,
                borderWidth: 2.0,
              ),
              const SizedBox(height: 10,),

              // Star Icon - Gradient
              IconRatingBar(
                totalStars: 5,
                onRatingChanged: (rating) {
                  setState(() {
                    _rating2 = rating;
                  });
                },
                selectedIcon: Icons.star,
                unselectedIcon: Icons.star_border,
                selectedColor: const LinearGradient(
                  colors: [Colors.yellow, Colors.pink], // Gradient for selected
                ),
                unselectedColor: Colors.grey, // Normal Grey for unselected
                containerBackgroundColor: const LinearGradient(colors: [Colors.white, Colors.white]),
                shadowColor: Colors.black.withOpacity(0.3),
                borderColor: Colors.white,
              ),
              const SizedBox(height: 10,),

              // Car Icon - Normal
              IconRatingBar(
                totalStars: 5,
                onRatingChanged: (rating) {
                  setState(() {
                    _rating3 = rating;
                  });
                },
                selectedIcon: Icons.car_rental,
                unselectedIcon: Icons.car_rental_outlined,
                initialRating: _rating3.toDouble(),
                selectedColor: Colors.blue, // Normal Blue
                unselectedColor: Colors.grey, // Grey for unselected
                gap: 10.0,
                containerBackgroundColor: Colors.white,
                shadowColor: Colors.black26,
                borderColor: Colors.blue,
                borderRadius: 16.0,
                borderWidth: 1.0,
              ),
              const SizedBox(height: 10,),

              // Car Icon - Gradient
              IconRatingBar(
                totalStars: 5,
                onRatingChanged: (rating) {
                  setState(() {
                    _rating3 = rating;
                  });
                },
                selectedIcon: Icons.car_rental,
                unselectedIcon: Icons.car_rental_outlined,
                selectedColor: const LinearGradient(
                  colors: [Colors.blue, Colors.green], // Gradient for selected
                ),
                unselectedColor: Colors.grey, // Normal Grey for unselected
                containerBackgroundColor: const LinearGradient(colors: [Colors.white, Colors.white]),
                shadowColor: Colors.black.withOpacity(0.3),
                borderColor: Colors.blue,
              ),
              const SizedBox(height: 10,),

              // Sun Icon - Normal
              IconRatingBar(
                totalStars: 5,
                onRatingChanged: (rating) {
                  setState(() {
                    _rating4 = rating;
                  });
                },
                selectedIcon: Icons.wb_sunny,
                unselectedIcon: Icons.wb_sunny_outlined,
                initialRating: _rating4.toDouble(),
                selectedColor: Colors.orange, // Normal Orange
                unselectedColor: Colors.grey, // Grey for unselected
                gap: 10.0,
                containerBackgroundColor: Colors.white,
                shadowColor: Colors.black26,
                borderColor: Colors.orange,
                borderRadius: 16.0,
                borderWidth: 1.0,
              ),
              const SizedBox(height: 10,),

              // Sun Icon - Gradient
              IconRatingBar(
                totalStars: 5,
                onRatingChanged: (rating) {
                  setState(() {
                    _rating4 = rating;
                  });
                },
                selectedIcon: Icons.wb_sunny,
                unselectedIcon: Icons.wb_sunny_outlined,
                selectedColor: const LinearGradient(
                  colors: [Colors.orange, Colors.yellow], // Gradient for selected
                ),
                unselectedColor: Colors.grey, // Normal Grey for unselected
                containerBackgroundColor: const LinearGradient(colors: [Colors.white, Colors.white]),
                shadowColor: Colors.black.withOpacity(0.3),
                borderColor: Colors.orange,
              ),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
