import 'package:flutter/material.dart';

/// A customizable, icon-based rating bar widget for Flutter.
///
/// This widget allows users to select a rating from a series of stars or icons.
/// It supports customizing the icons, colors, size, spacing, container background, 
/// and other appearance settings.
class IconRatingBar extends StatefulWidget {
  /// The total number of stars/icons in the rating bar.
  final int totalStars;

  /// The initial rating value (from 0 to [totalStars]).
  final double initialRating;

  /// A callback to handle when the rating is changed.
  final ValueChanged<int> onRatingChanged;

  /// Icon for the selected state of the star/icon.
  final IconData selectedIcon;

  /// Icon for the unselected state of the star/icon.
  final IconData unselectedIcon;

  /// Color or gradient for the selected icon(s).
  final dynamic selectedColor;

  /// Color for the unselected icon(s).
  final Color unselectedColor;

  /// Gap between each icon.
  final double gap;

  /// Container background (either color or gradient).
  final dynamic containerBackgroundColor;

  /// Color for the container's shadow.
  final Color shadowColor;

  /// Border color for the container.
  final Color borderColor;

  /// Border radius for the container's corners.
  final double borderRadius;

  /// Border width for the container.
  final double borderWidth;

  /// Width of the rating container.
  final double containerWidth;

  /// Height of the rating container.
  final double containerHeight;

  /// Size of the icons.
  final double iconSize;

  /// Creates an IconRatingBar widget.
  const IconRatingBar({
    Key? key,
    required this.totalStars,
    required this.onRatingChanged,
    required this.selectedIcon,
    required this.unselectedIcon,
    this.initialRating = 0.0,
    this.selectedColor = Colors.yellow,
    this.unselectedColor = Colors.grey,
    this.gap = 8.0,
    this.containerBackgroundColor = Colors.white,
    this.shadowColor = Colors.black26,
    this.borderColor = Colors.grey,
    this.borderRadius = 12.0,
    this.borderWidth = 1.0,
    this.containerWidth = 250.0,
    this.containerHeight = 60.0,
    this.iconSize = 30.0,
  })  : assert(totalStars > 0, 'totalStars must be greater than 0'),
        assert(initialRating >= 0 && initialRating <= totalStars, 
               'initialRating must be between 0 and totalStars'),
        super(key: key);

  @override
  _IconRatingBarState createState() => _IconRatingBarState();
}

class _IconRatingBarState extends State<IconRatingBar> {
  late double rating;

  @override
  void initState() {
    super.initState();
    // Initialize the rating with the provided initial value.
    rating = widget.initialRating;
  }

  /// Handles the tap on a specific icon/star and updates the rating.
  void _onStarTap(int index) {
    setState(() {
      // Update the rating to the tapped index (1-based index).
      rating = index + 1.0;
    });
    // Notify the parent widget with the updated rating.
    widget.onRatingChanged(rating.toInt());
  }

  /// Builds the icon for the selected or unselected state.
  ///
  /// [isSelected] indicates whether the icon is selected or not.
  /// [color] is the color or gradient for the selected icon.
  Widget _buildIcon(bool isSelected, dynamic color) {
    if (isSelected && color is Gradient) {
      // Apply gradient only for selected icons.
      return ShaderMask(
        shaderCallback: (bounds) {
          return color.createShader(bounds);
        },
        child: Icon(
          widget.selectedIcon,
          size: widget.iconSize,
          color: Colors.white, // Gradient will color the icon.
        ),
      );
    } else {
      // For unselected icons or selected icons with a solid color.
      return Icon(
        isSelected ? widget.selectedIcon : widget.unselectedIcon,
        size: widget.iconSize,
        color: isSelected ? color : widget.unselectedColor,
      );
    }
  }

  /// Returns the decoration for the container, which can be a color or gradient.
  BoxDecoration _getContainerDecoration() {
    if (widget.containerBackgroundColor is Gradient) {
      return BoxDecoration(
        gradient: widget.containerBackgroundColor as Gradient,
        borderRadius: BorderRadius.circular(widget.borderRadius),
        border: Border.all(
          color: widget.borderColor,
          width: widget.borderWidth,
        ),
        boxShadow: [
          BoxShadow(
            color: widget.shadowColor,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      );
    } else {
      return BoxDecoration(
        color: widget.containerBackgroundColor,
        borderRadius: BorderRadius.circular(widget.borderRadius),
        border: Border.all(
          color: widget.borderColor,
          width: widget.borderWidth,
        ),
        boxShadow: [
          BoxShadow(
            color: widget.shadowColor,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.containerHeight,
      width: widget.containerWidth,
      decoration: _getContainerDecoration(), // Apply decoration (color or gradient).
      child: Padding(
        padding: const EdgeInsets.all(8.0), // Padding around the entire rating bar.
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.totalStars, (index) {
            bool isSelected = rating > index;
            return GestureDetector(
              onTap: () => _onStarTap(index), // Handle tap on icon.
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: widget.gap / 2), // Gap between icons.
                child: _buildIcon(
                  isSelected,
                  widget.selectedColor, // Pass selected color (can be gradient).
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
