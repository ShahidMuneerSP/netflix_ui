import 'package:flutter/material.dart';
import 'package:netflix_ui_design/BottonNavigationScreens/screen_comingsoon.dart';
import 'package:netflix_ui_design/BottonNavigationScreens/screen_downloads.dart';
import 'package:netflix_ui_design/BottonNavigationScreens/screen_home.dart';
import 'package:netflix_ui_design/BottonNavigationScreens/screen_more.dart';
import 'package:netflix_ui_design/BottonNavigationScreens/screen_search.dart';
import 'package:netflix_ui_design/bottom_navigation.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({Key? key}) : super(key: key);
final _pages = [
    ScreenHome(),
    ScreenSearch(),
    ScreenComingSoon(),
    ScreenDownloads(),
    ScreenMore(),
];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: SafeArea(
        child: ValueListenableBuilder(
           valueListenable: indexChangeNotifier,
          builder: (BuildContext context,int  index, Widget? _) { 
            return _pages[index];
           },
          child: SafeArea(
            child: Center(
              child: Text(
                'Main Page'
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}