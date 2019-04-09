import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'profile_screen.dart';
import 'payment_screen.dart';
import 'ticket_screen.dart';

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  var _cIndex = 0;
  List<Widget> _children = [
    HomeScreen(),
    TicketScreen(),
    ProfileScreen(),
    PaymentScreen(),
    ProfileScreen(),
  ];

  incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _children[_cIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _cIndex,
          type: BottomNavigationBarType.shifting,
          onTap: incrementTab,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  "images/home.png",
                  height: 32,
                  width: 32,
                ),
                title: Text(
                  "Beranda",
                  style: TextStyle(color: Color.fromRGBO(153, 164, 170, 1)),
                )),
            BottomNavigationBarItem(
              icon: Image.asset(
                "images/ticket.png",
                height: 32,
                width: 32,
              ),
              title: Text(
                "Tiket",
                style: TextStyle(color: Color.fromRGBO(153, 164, 170, 1)),
              ),
            ),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "images/open_class.png",
                  height: 32,
                  width: 32,
                ),
                title: Text(
                  "Buat",
                  style: TextStyle(color: Color.fromRGBO(153, 164, 170, 1)),
                )),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "images/payment.png",
                  height: 32,
                  width: 32,
                ),
                title: Text(
                  "Pembayaran",
                  style: TextStyle(color: Color.fromRGBO(153, 164, 170, 1)),
                )),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "images/profile.png",
                  height: 32,
                  width: 32,
                ),
                title: Text(
                  "Profil",
                  style: TextStyle(color: Color.fromRGBO(153, 164, 170, 1)),
                )),
          ]),
    );
  }
}
