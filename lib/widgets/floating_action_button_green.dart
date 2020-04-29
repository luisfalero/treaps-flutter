import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {

  bool fav = false;

  void onPressedFav() {
    setState(() {
      fav = !fav;
    });
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Agregaste a tus favoritos'),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton (
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: 'Fav',
      onPressed: onPressedFav,
      child: Icon (
          fav ? Icons.favorite : Icons.favorite_border
      ),
    );
  }

}