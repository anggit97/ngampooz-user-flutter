import 'package:flutter/material.dart';

class TicketScholarship extends StatefulWidget {
  @override
  _TicketScholarshipState createState() => _TicketScholarshipState();
}

class _TicketScholarshipState extends State<TicketScholarship> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(16),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _scholarshipCellItem(),
          _scholarshipCellItem(),
          _scholarshipCellItem(),
        ],
      ),
    );
  }

  _scholarshipCellItem() {
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
                          "Paragon Scholarship",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                          maxLines: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Penyalur Beasiswa : ",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Text(
                          "Anggit Prayogo",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(237, 61, 58, 1)),
                        ),
                        RaisedButton(
                            elevation: 2,
                            child: Text("Kartu Ujian", style: TextStyle(color: Colors.white),),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7))),
                            color: Color.fromRGBO(237, 61, 58, 1),
                            onPressed: (){})
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
