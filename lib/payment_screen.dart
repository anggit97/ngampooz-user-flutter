import 'package:flutter/material.dart';

import 'ticket_scholarship_screen.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          "Pembayaran",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.history), onPressed: null)
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: Color.fromRGBO(7, 26, 56, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Saldo",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 80,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(13, 41, 81, 1),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Rp. 250.000",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Color.fromRGBO(103, 224, 126, 1),
                          child: Icon(Icons.add),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: DefaultTabController(
                length: 2,
                child: Scaffold(
                  appBar: PreferredSize(
                    preferredSize: Size.fromHeight(kToolbarHeight),
                    child: TabBar(
                      tabs: [
                        Tab(
                          text: "Event",
                        ),
                        Tab(
                          text: "Open Class",
                        )
                      ],
                      labelColor: Colors.black,
                    ),
                  ),
                  body:
                      TabBarView(children: [ TicketScholarship(), TicketScholarship()]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
