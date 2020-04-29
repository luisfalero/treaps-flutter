import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Review('assets/img/people.jpg', 'Luis Falero', '1 review · 5 photos', 'There is an amazing place in Sri Lanka'),
        new Review('assets/img/girl.jpg', 'Anahí Salgado', '2 review · 5 photos', 'There is an amazing place in Sri Lanka'),
        new Review('assets/img/people.jpg', 'Gissele Thomas', '2 review · 2 photos', 'There is an amazing place in Sri Lanka'),
      ],
    );
  }

}