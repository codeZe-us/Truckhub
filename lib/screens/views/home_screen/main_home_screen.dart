import 'package:flutter/material.dart';
import 'package:truckhub/screens/custom_widgets/annotated_region_widget.dart';
import 'package:truckhub/screens/views/home_screen/navigation_destinations.dart';
import 'package:truckhub/screens/views/home_screen/sub_view/account_view.dart';
import 'package:truckhub/screens/views/home_screen/sub_view/google_map_view.dart';
import 'package:truckhub/screens/views/home_screen/sub_view/notifications/notification_view.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override 
  void initState(){
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override 
  void dispose(){
    pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return GenericAnnotatedRegion(
      transparentStatusBar: true,
      child: Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          onPageChanged: (pageIndex){
            setState(() {
              currentPageIndex = pageIndex;
            });
          },
          children: const [
            GoogleMapView(),
            NotificationsView(),
            AccountView()
          ],
        ),

        bottomNavigationBar: NavigationBar(
          height: 70,
          destinations: navDestinations,
          selectedIndex: currentPageIndex,
          onDestinationSelected: (pageIndex){
            pageController.animateToPage(
              pageIndex, 
              duration: const Duration(milliseconds: 2),
              curve: Curves.easeIn
            );
          },
          
        ),
      ),
    );
  }
}