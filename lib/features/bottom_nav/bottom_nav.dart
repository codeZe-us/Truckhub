import 'package:flutter/material.dart';
import 'package:truckhub/features/home/screens/account/account.dart';
import 'package:truckhub/features/home/screens/booked/booked.dart';
import 'package:truckhub/features/home/screens/home/home.dart';

import '../../core/constants/color.dart';
import '../../core/constants/dimension.dart';



class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  BottomNavState createState() => BottomNavState();
}

class BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  Color _svgColor = AppColors.greyColor;
  Color _svgColor1 = AppColors.greyColor;
  Color _svgColor2 = AppColors.greyColor;


  final List<Widget> _pages = [
    const Home(),
    const Booked(),
    const Account(),
   
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        
        selectedItemColor: AppColors.secondaryColor,
        unselectedItemColor: AppColors.greyColor,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color:  _svgColor,),
            label: 'Home',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark, color:  _svgColor1,),
            label: 'Booked',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, color:  _svgColor2,),
            label: 'Person',
          ),
       
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _svgColor = _currentIndex == 0
                ? AppColors.tertiaryColor
                : AppColors.blackColor;

            _svgColor1 = _currentIndex == 1
                ? AppColors.tertiaryColor
                : AppColors.blackColor;

            _svgColor2 = _currentIndex == 2
                ? AppColors.tertiaryColor
                : AppColors.blackColor;

        
          });
        },
      ),
    );
  }
}
