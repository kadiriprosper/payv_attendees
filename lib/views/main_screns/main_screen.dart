import 'package:flutter/material.dart';
import 'package:payv_attendees/colors/custom_colors.dart';
import 'package:payv_attendees/views/main_screns/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final pages = [
    const HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[0],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        onTap: () {},
        child: const CircleAvatar(
          radius: 34,
          backgroundColor: Color.fromARGB(255, 237, 237, 237),
          child: CircleAvatar(
            radius: 26,
            backgroundColor: CustomColors.buttonColor1,
            child: Icon(
              Icons.add_rounded,
              size: 38,
              color: Colors.white,
            ),
          ),
        ),
      ),
      bottomSheet: Material(
        elevation: 10,
        shadowColor: Colors.black,
        child: Container(
          height: 80,
          color: Colors.white,
          child: BottomNavigationBar(
            selectedIconTheme: const IconThemeData(
              color: CustomColors.buttonColor1,
            ),
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: CustomColors.buttonColor1,
            ),
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                label: 'Card',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notification_add),
                label: 'Notifications',
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar:
      // BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.card_giftcard),
      //       label: 'Card',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.notification_add),
      //       label: 'Notifications',
      //     ),
      //   ],
      // ),
    );
  }
}
