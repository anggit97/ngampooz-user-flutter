import 'package:flutter/material.dart';

class TicketEvent extends StatefulWidget {
  @override
  _TicketEventState createState() => _TicketEventState();
}

class _TicketEventState extends State<TicketEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          _paymentCellItem(),
          _paymentCellItem(),
          _paymentCellItem()
        ],
      ),
    );
  }

  _paymentCellItem() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 8),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image.asset(
              "images/background.jpg",
              width: 120,
              height: 120,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.only(left: 8),
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Pelatihan UMKM Ecommerce",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Text(
                  "Gratis",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }

  _backgroundImage() {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'images/background.jpg',
            ),
          ),
        ),
        height: 350.0,
      ),
    );
  }

  _backgroundOverlay() {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Container(
        height: 350.0,
        decoration: BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.grey.withOpacity(0.0),
                  Colors.black,
                ],
                stops: [
                  0.0,
                  1.0
                ])),
      ),
    );
  }
}
