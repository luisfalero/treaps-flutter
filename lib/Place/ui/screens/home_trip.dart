import 'package:flutter/material.dart';

import 'header_appbar.dart';
import '../widgets/review_list.dart';
import '../widgets/description_place.dart';

class HomeTrip extends StatelessWidget {

  String description = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        new HeaderAppBar(), 
        ListView(
          children: <Widget>[
            new ReviewList(),
            new DescriptionPlace('Bahamas', 4, description)
          ],
        )
      ],
    );
  }
  
}





