import 'package:flutter/material.dart';
import '../../../widgets/button_purple.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace = '';
  int stars = 0;
  String descriptionPlace = '';
  String fontFamily = 'Lato';

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    final containerName =  Container(
      margin: EdgeInsets.only(
          top: 320.0,
          left: 20.0,
          right: 20.0
      ),
      child: Text(
        namePlace,
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: 30.0,
          fontWeight: FontWeight.w900
        ),
        textAlign: TextAlign.left,
      ),
    );

    final containerStart = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611)
      ),
    );

    final containerStartBorder = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: Icon(
          Icons.star_border,
          color: Color(0xFFf2C611)
      ),
    );

    final rowNameStars = Row(
      children: <Widget>[
        containerName,
        Row(
          children: <Widget>[
            containerStart,
            containerStart,
            containerStart,
            containerStart,
            containerStartBorder
          ],
        )
      ]
    );

    final containerDescription = Container(
      margin:  EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0
      ),
      child: Text(
          descriptionPlace,
          style: TextStyle(
              fontFamily: fontFamily,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF56575a)
          )
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        rowNameStars,
        containerDescription,
        new ButtonPurple('Navigate')
      ],
    );
  }
}