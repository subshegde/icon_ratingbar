# Icon Rating Bar
![icon_rating_bar1](https://github.com/user-attachments/assets/d72f66ee-fecc-4090-8f47-521e5043e993)

Demo video:
https://github.com/user-attachments/assets/c917efaa-cc24-488a-ad5a-3a5229dda829


**Overview**: 
  - The `IconRatingBar` is a customizable Flutter widget that allows users to select a rating by tapping on icons, such as stars. It provides a flexible and highly customizable way of implementing a rating system, which can be visually enhanced by altering colors, icon types, and the appearance of the container holding the rating icons.

- This widget supports both solid colors and gradients for the selected state, provides customizable spacing, container styling, and various design configurations. It makes it easy for developers to integrate a rating system into their apps, whether it’s for user feedback, product ratings, or any other scenario requiring a visual representation of user ratings.

**Key Features :**

*Customizable Icon Selection :*
-  Allows the selection of different icons for the selected and unselected states, using IconData (e.g., stars, hearts, etc.).
- Supports both solid colors and gradient effects for the selected icons.

*Customizable Appearance :*
- Customize the appearance of the rating container, including background color/gradient, shadow color, border color, border width, and border radius.
- The widget allows setting custom dimensions for the container’s width, height, and icon size.

*Gap Customization :*
- Adjustable gap between icons to provide flexibility for design and layout.

*Responsive Rating Updates :*
- The rating is updated dynamically when an icon is tapped, and the parent widget is notified through the `onRatingChanged` callback.

*Initial Rating :*
- Set an initial rating value, which can be used for pre-selected ratings, such as showing a previous rating or defaulting to 0.

*Customizable Color Scheme :*
- Easily configure the selected and unselected colors (or gradients) for the icons. Unselected icons can be displayed in a default color like grey, while selected icons can be highlighted with a color or gradient like yellow.

*Container Styling :*
- The widget allows you to customize the background of the container that holds the icons (with solid color or gradient), making it blend well with the overall app design.

*Shadow and Border Support :*
- The container of the rating bar can have a shadow and border styling, helping to elevate its appearance visually on the screen.


## About The Package

The `IconRatingBar` widget is designed for use in Flutter applications to implement an easy-to-use, customizable rating interface. This widget was created to address the need for a flexible and visually appealing rating system that can easily adapt to different design themes.

The widget leverages Flutter’s robust UI-building capabilities and provides developers with a powerful way to add interactive ratings into their applications without much overhead. Whether it's for a product rating system, user feedback on services, or a simple rating scale in any app, this widget offers a simple and intuitive solution.

## Use Cases

`Product Ratings` : Let users rate products or services with star-based ratings.

`Feedback Systems` : Collect ratings for apps or features within an app.

`Survey/Forms` : Use it in surveys where users rate their experience on a scale.

`User Engagement` : Enhance user interaction by making ratings fun with custom icons or gradients.


## Getting Started

To use the `icon_ratingbar` package in your Flutter project, follow these steps:

### Prerequisites
Ensure you have the following installed on your system:
* [Flutter](https://flutter.dev/docs/get-started/install)
* [Dart](https://dart.dev/get-dart)

### Installation
1. Add the package dependency in your `pubspec.yaml` file:
    ```yaml
    dependencies:
      icon_ratingbar:
    ```

2. Install the dependencies by running the following command:
    ```bash
    flutter pub get
    ```

3. Import the package into your Dart file:
    ```dart
    import 'package:icon_ratingbar/icon_ratingbar.dart';
    ```

## Usage

Here’s how to integrate the `IconRatingBar` widget into your Flutter app:

## Demo Video
[![YouTube](https://img.shields.io/badge/-YouTube-black.svg?style=for-the-badge&logo=youtube&colorB=555)](https://youtu.be/GQJImcnQNuM?si=UtnxLdpp6uZqGa3R)


```dart
IconRatingBar(
                iconSize: 20,
                containerWidth: 200,
                containerHeight: 40,
                totalStars: 5,
                onRatingChanged: (rating) {},
                selectedIcon: Icons.favorite,
                unselectedIcon: Icons.favorite_border,
                selectedColor: const LinearGradient(
                  colors: [Colors.orange, Colors.pink],
                ),
                unselectedColor: Colors.grey,
                containerBackgroundColor: Colors.white,
                shadowColor: Colors.black.withOpacity(0.3),
                borderColor: Colors.red,
              ),
```
## 🚀 About Me
I'm Subrahmanya S. Hegde, a mobile app developer with expertise in Flutter and React Native, passionate about building high-performance, cross-platform applications. With skills in Kotlin, Node.js, Firebase, and Supabase, I create end-to-end solutions that deliver seamless user experiences.

I hold an MCA degree from MIT Manipal and have a strong passion for exploring new technologies. I am also a strong advocate of using Git and GitHub for version control and collaboration.

Let’s build something great together! 
#### Happy Coding!


## Authors

- [@subshegde](https://www.github.com/subshegde)


## Feedback

If you have any feedback, please reach out to us at subrahmanya460@gmail.com

#### My Github
[![GitHub](https://img.shields.io/badge/-GitHub-black.svg?style=for-the-badge&logo=github&colorB=000000&colorA=333333)](https://github.com/subshegde)
