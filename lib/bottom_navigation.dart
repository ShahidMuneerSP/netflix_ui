import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ValueListenableBuilder(
      valueListenable: indexChangeNotifier ,
     builder: ((BuildContext context,int newValue, _) {
       return BottomNavigationBar(
      currentIndex: newValue,
      onTap: (index) {
        indexChangeNotifier.value = index;
      },
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: IconThemeData(color: Colors.white),
      unselectedIconTheme: IconThemeData(color: Colors.grey),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.add_box),label: 'Coming Soon'),
        BottomNavigationBarItem(icon: Icon(Icons.download),label: 'Downloads'),
        BottomNavigationBarItem(icon: Icon(Icons.more),label: 'More')
      ]);
     }));
  }
}