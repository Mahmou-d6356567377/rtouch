import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart'; 
import 'package:rtouch/View/screens/my_orders_screen/my_order_screen.dart';
import 'package:rtouch/View/screens/main_screans/main_screan/main_screan.dart';
import 'package:rtouch/View/screens/my_account_screans/my_account_screan.dart';
import 'package:rtouch/View/screens/my_chat_screans/my_chat_screan.dart';
import 'package:rtouch/View/screens/main_screans/notification_screans/notification_screan.dart';
import 'package:rtouch/Core/constants/constants.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      CustomBottomNavigationBarState();
}

class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 4; 
  final List<Widget> screens = [
    const DocsScrean(),
    const NotificationScrean(),
    const MyChatScrean(),
    const MyAccountScrean(),
    const MainScrean1(),
  ];

  void onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('touch'),
            content: const Text('Do you want to exit the applicatino?'),
            actions: <Widget>[

              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('NO'),
              ),
          ElevatedButton(
                onPressed: () {
                  SystemNavigator.pop(); // Close app
                },
                child: const Text('YES'),
              ),
            ],
          ),
        )) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        
        body: Container(
          decoration: const BoxDecoration(
            color: Color(kmaincolor),
          ),
          child: SafeArea(
            child: screens[selectedIndex]
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.3),
        spreadRadius: 5,   
        blurRadius: 10,
        offset: const Offset(3, 3),  
      ),

            ],
          ),
          child: CurvedNavigationBar(
            
            backgroundColor: Colors.white,
            color: Colors.white,
            buttonBackgroundColor: Colors.white, 
            
            height: 60, 
            animationDuration: const Duration(milliseconds: 300),
            animationCurve: Curves.fastOutSlowIn,
            
            items: <Widget>[
              _buildIcon(Icons.sticky_note_2_rounded, 0),
              _buildIcon(Icons.notifications, 1),
              _buildIcon(Icons.chat, 2),
              _buildIcon(Icons.person, 3),
              _buildIcon(Icons.home, 4),
            ],
            index: selectedIndex,
            onTap: onItemTap,
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(IconData icon, int index) {
    bool isSelected = selectedIndex == index;
    return Container(
      decoration: isSelected
          ? BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.9), 
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(1, 1), 
                ),

              ],
            )
          : null,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Icon(
          icon,
          size: 35,
          color:  isSelected ? const Color(kmaincolor) :Colors.grey , 
        ),
      ),
    );
  }
}
