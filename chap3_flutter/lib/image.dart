
import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  final String image =
      'https://images.unsplash.com/photo-1518791841217-4c8c30e4f83e'; // Valid bird image URL

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        image,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child; // Display the loaded image
          }
          return Center(
            child: CircularProgressIndicator(), // Show loading spinner
          );
        },
        errorBuilder: (context, error, stackTrace) {
          return const Center(
            child: Text(
              'Error loading image',
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          );
        },
      ),
    );
  }
}
