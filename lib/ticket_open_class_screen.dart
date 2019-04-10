import 'package:flutter/material.dart';

class TicketOpenClass extends StatefulWidget {
  @override
  _TicketOpenClassState createState() => _TicketOpenClassState();
}

class _TicketOpenClassState extends State<TicketOpenClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(16),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _paymentCellItem(),
          _paymentCellItem(),
          _paymentCellItem(),
        ],
      ),
    );
  }

  _paymentCellItem() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 8),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                "images/background.jpg",
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
              flex: 8,
              child: Container(
                padding: const EdgeInsets.only(left: 8),
                child: Stack(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Pelatihan UMKM Ecommerce",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                          maxLines: 2,
                        ),
                        Text(
                          "Gratis",
                          style: TextStyle(fontSize: 14),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Kadaluwarsa pada : ",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Text(
                          "2019-01-24 08:00",
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),
              )),
          Expanded(
              flex: 2,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "images/ticket.png",
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    "Lunas",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
