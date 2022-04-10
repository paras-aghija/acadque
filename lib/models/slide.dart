import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/images/girl.png',
    title: 'Learn From Best\nTutors[Slide 1]',
    description: 'Experience learning like never before.',
  ),
  Slide(
      imageUrl: 'assets/images/girl.png',
      title: 'Learn From Best\nTutors[Slide 2]',
      description: 'Experience learning like never before.'),
  Slide(
    imageUrl: 'assets/images/girl.png',
    title: 'Learn From Best\nTutors[Slide 3]',
    description: 'Experience learning like never before.',
  ),
];
