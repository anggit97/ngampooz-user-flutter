import 'package:flutter/material.dart';

import 'util/custom_popup_menu.dart';

import 'ticket_scholarship_screen.dart';
import 'ticket_event_screen.dart';
import 'open_class_profile_screen.dart';

List<CustomPopupMenu> choices = <CustomPopupMenu>[
  CustomPopupMenu(title: 'Ubah Profil', icon: Icons.edit),
  CustomPopupMenu(title: 'Ubah Password', icon: Icons.security),
  CustomPopupMenu(title: 'About', icon: Icons.block),
  CustomPopupMenu(title: 'Logout', icon: Icons.exit_to_app),
];

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
//  CustomPopupMenu _selectedChoices = choices[0];

  _select(CustomPopupMenu choice) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text(choice.title)));
//    setState(() {
//      _selectedChoices = choice;
//    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          "Profil",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: <Widget>[
          _popupMenuButton()
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Image.asset('images/organizer_profile.png', alignment: Alignment.centerLeft, fit: BoxFit.contain, width: 70, height: 70,),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Anggit Prayogo", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
                        Text("anggitprayogo@gmail.com", style: TextStyle(color: Color.fromRGBO(86,86,86, 1), fontSize: 16),)
                      ],
                    ),
                  )),
                ],
              ),
            ),
            _statisticProfile(),
            _tabProfile(),
          ],
        ),
      )
    );
  }

  _tabProfile(){
    return Expanded(
      child: Container(
        color: Colors.green,
        child: DefaultTabController(
          length: 3,
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
                  ),
                  Tab(
                    text: "Beasiswa",
                  )
                ],
                labelColor: Colors.black,
              ),
            ),
            body:
            TabBarView(children: [ TicketEvent(), OpenClassProfile(), TicketScholarship()]),
          ),
        ),
      ),
    );
  }

  _popupMenuButton(){
    return PopupMenuButton(
      elevation: 3.2,
      onSelected: _select,
      itemBuilder: (BuildContext context) {
        return choices.map((CustomPopupMenu choice) {
          return PopupMenuItem<CustomPopupMenu>(
            value: choice,
            child: Text(choice.title),
          );
        }).toList();
      },
      icon: Icon(Icons.more_vert, color: Colors.grey,),
    );
  }

  _statisticProfile(){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)),
              color: Color.fromRGBO(7, 26, 56, 1),
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
              children: <Widget>[
                Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("1300", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text("Following", style: TextStyle(fontSize: 16, color: Colors.white),),
                    )
                  ],
                )),
                Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("100K", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text("Follower", style: TextStyle(fontSize: 16, color: Colors.white),),
                    )
                  ],
                )),
                Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset("images/qr_code.png", fit: BoxFit.contain, height: 30, width: 30,),
                    Text("My QR", style: TextStyle(fontSize: 16, color: Colors.white),)
                  ],
                ))
              ],
            )
          )
        ],
      ),
    );
  }
}
