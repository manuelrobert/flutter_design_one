import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/images/image1.jpg',
    title: 'A cool way to get started',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
        'sed do eiusmod tempor incididunt ut labore et dolore '
        'magna aliqua.Lorem ipsum dolor sit amet, consectetur '
        'adipiscing elit, sed do eiusmod tempor incididunt ut '
        'labore et dolore magna aliqua.',
  ),
  Slide(
    imageUrl: 'assets/images/image2.jpg',
    title: 'Design interactive app ui',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
        'sed do eiusmod tempor incididunt ut labore et dolore '
        'magna aliqua.Lorem ipsum dolor sit amet, consectetur '
        'adipiscing elit, sed do eiusmod tempor incididunt ut '
        'labore et dolore magna aliqua.',
  ),
  Slide(
    imageUrl: 'assets/images/image3.jpg',
    title: 'It\'s Just the Beginning',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
        'sed do eiusmod tempor incididunt ut labore et dolore'
        ' magna aliqua.Lorem ipsum dolor sit amet, consectetur '
        'adipiscing elit, sed do eiusmod tempor incididunt ut '
        'labore et dolore magna aliqua.',
  ),
];
