import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String pathImage = '';
  String name = '';
  String details = '';
  String comment = '';
  String fontFamily = 'Lato';

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {

    final containerPhoto = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );

    final containerName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name,
        style: TextStyle(
            fontFamily: fontFamily,
            fontSize: 17.0
        ),
        textAlign: TextAlign.left,
      ),
    );

    final containerDetails = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        details,
        style: TextStyle(
            fontFamily: fontFamily,
            fontSize: 13.0,
            color: Color(0xFFa3a5a7)
        ),
        textAlign: TextAlign.left,
      ),
    );

    final containerComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        comment,
        style: TextStyle(
            fontFamily: fontFamily,
            fontSize: 13.0,
            fontWeight: FontWeight.w900
        ),
        textAlign: TextAlign.left,
      ),
    );

    final columnUserDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        containerName,
        containerDetails,
        containerComment
      ],
    );

    return Row(
      children: <Widget>[
        containerPhoto,
        columnUserDetails
      ],
    );
  }

}