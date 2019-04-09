import 'package:flutter/material.dart';

import 'ticket_event_screen.dart';
import 'ticket_open_class_screen.dart';
import 'ticket_scholarship_screen.dart';

class TicketScreen extends StatefulWidget {
  @override
  _TicketScreenState createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          centerTitle: false,
          title: Text(
            "Tiket Saya",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Event",
              ),
              Tab(
                text: "Open Class",
              ),
              Tab(
                text: "Beasiswa",
              ),
            ],
            labelColor: Colors.black,
            indicatorColor: Colors.blueAccent,
          ),
        ),
        body: TabBarView(
            children: [TicketEvent(), TicketOpenClass(), TicketScholarship()]),
      ),
    );
  }
}
