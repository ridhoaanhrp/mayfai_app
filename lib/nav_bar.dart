import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/bxs.dart';
import 'package:iconify_flutter/icons/fluent.dart';
import 'package:iconify_flutter/icons/healthicons.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:mayfai_app/Screens/Discover%20Screen/discover_screen.dart';
import 'package:mayfai_app/Screens/Home%20Screen/home_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<NavBar> {
  int selectedIndex = 0;
  final screens = [HomeScreen(), DiscoverScreen()];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: IndexedStack(
          index: selectedIndex,
          children: screens,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: const Iconify(
            Fluent.wallet_credit_card_20_filled,
            color: Color.fromRGBO(137, 205, 255, 1),
            size: 45,
          ),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Color(0xFF89CDFF),
                blurRadius: 15,
              ),
            ],
          ),
          child: BottomAppBar(
            clipBehavior: Clip.antiAlias,
            shape: const CircularNotchedRectangle(),
            notchMargin: 5,
            child: BottomNavigationBar(
                backgroundColor: const Color(0xFFFDFDFE),
                currentIndex: selectedIndex,
                selectedItemColor: const Color.fromRGBO(32, 160, 253, 1),
                showUnselectedLabels: true,
                unselectedLabelStyle: const TextStyle(color: Color(0xFF89CDFF)),
                type: BottomNavigationBarType.fixed,
                onTap: (index) => setState(() => selectedIndex = index),
                items: const [
                  BottomNavigationBarItem(
                      icon: Iconify(
                        Bxs.home,
                        color: Color(0xFF89CDFF),
                      ),
                      label: "Home",
                      activeIcon: Iconify(
                        Bxs.home,
                        color: Color(0xFF20A0FD),
                      )),
                  BottomNavigationBarItem(
                      icon: Iconify(
                        Ph.newspaper_clipping_fill,
                        color: Color(0xFF89CDFF),
                      ),
                      label: "Discover",
                      activeIcon: Iconify(
                        Ph.newspaper_clipping_fill,
                        color: Color(0xFF20A0FD),
                      )),
                  BottomNavigationBarItem(
                      icon: Iconify(
                        Bi.calendar_check_fill,
                        color: Color(0xFF89CDFF),
                      ),
                      label: "Activity",
                      activeIcon: Iconify(
                        Bi.calendar_check_fill,
                        color: Color(0xFF20A0FD),
                      )),
                  BottomNavigationBarItem(
                      icon: Iconify(
                        Healthicons.ui_user_profile,
                        color: Color(0xFF89CDFF),
                      ),
                      label: "Profile",
                      activeIcon: Iconify(
                        Healthicons.ui_user_profile,
                        color: Color(0xFF20A0FD),
                      )),
                ]),
          ),
        ),
      ),
    );
  }
}
