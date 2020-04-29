import 'package:flutter/material.dart';
import 'Place/ui/screens/home_trip.dart';
import 'Place/ui/screens/search_trip.dart';
import 'User/ui/screens/profile_trip.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {

  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    new HomeTrip(),
    new SearchTrip(),
    new ProfileTrip()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('')
            ),
          ],
        ),
      ),
    );
  }

}