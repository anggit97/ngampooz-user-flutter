import 'package:flutter/material.dart';

class OpenClassProfile extends StatefulWidget {
  @override
  _OpenClassProfileState createState() => _OpenClassProfileState();
}

class _OpenClassProfileState extends State<OpenClassProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          _menuOpenClassRegistered(),
          _menuOpenClassCreated(),
        ],
      ),
    );
  }

  _menuOpenClassRegistered() {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 20),
      decoration: BoxDecoration(
          color: Color.fromRGBO(64, 152, 215, 1),
          borderRadius: BorderRadius.all(Radius.circular(7))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Open Class ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    "Yang pernah diikuti",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )),
          Expanded(
              child: Image.asset(
            "images/dashboard_statistic.png",
            width: 70,
            height: 70,
          ))
        ],
      ),
    );
  }

  _menuOpenClassCreated() {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
      decoration: BoxDecoration(
          color: Color.fromRGBO(29, 96, 155, 1),
          borderRadius: BorderRadius.all(Radius.circular(7))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Open Class Dashboard",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    "Yang pernah dibuat",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )),
          Expanded(
              child: Image.asset(
            "images/dashboard_statistic.png",
            width: 70,
            height: 70,
          ))
        ],
      ),
    );
  }
}
