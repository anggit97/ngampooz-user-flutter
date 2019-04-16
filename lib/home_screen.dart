import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'model/events.dart';
import 'model/open_classes.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<Events> fetchEvents() async {
    final response = await http.get("https://dev.ngampooz.com/api/acara");
    if (response.statusCode == 200) {
      return Events.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }

  Future<OpenClasses> fetchOpenClass() async {
    final response = await http.get("https://dev.ngampooz.com/api/open_class");
    if (response.statusCode == 200) {
      return OpenClasses.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Image.asset(
          "images/logo.png",
          fit: BoxFit.contain,
          alignment: Alignment.center,
        ),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.search,
              textDirection: TextDirection.ltr,
            ),
            onPressed: null),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications,
                textDirection: TextDirection.ltr,
              ),
              onPressed: null),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 16, bottom: 10),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            _recomendationCell(),
            _eventCell(fetchEvents()),
            _openClassCell(fetchOpenClass()),
            _scholarshipCell(),
          ],
        ),
      ),
    );
  }

  _scholarshipCell() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: AutoSizeText(
                "Beasiswa ini menanti kamu!",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                maxLines: 1,
              )),
              AutoSizeText(
                "Lihat Semua",
                style: TextStyle(fontSize: 14, color: Colors.blueAccent),
              )
            ],
          ),
        ),
        Container(
          height: 160,
          padding: EdgeInsets.only(top: 10),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _scholarshipCellItem(),
              _scholarshipCellItem(),
              _scholarshipCellItem(),
              _scholarshipCellItem(),
            ],
          ),
        )
      ],
    );
  }

  _scholarshipCellItem() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: 160,
      child: Stack(
        children: <Widget>[
          _backgroundImage(),
          _backgroundOverlay(),
          Container(
            padding: EdgeInsets.only(left: 10, bottom: 10, right: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AutoSizeText(
                  "Beasiswa Djarum 2019",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                ),
                AutoSizeText(
                  "PT.Bank BCA Tbk",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                  maxLines: 1,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _openClassCell(Future<OpenClasses> fetchOpenClass) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: AutoSizeText(
                "Open Class Dari Para Ahli",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
              AutoSizeText(
                "Lihat Semua",
                style: TextStyle(fontSize: 16, color: Colors.blueAccent),
              )
            ],
          ),
        ),
        Container(
          height: 160,
          padding: EdgeInsets.only(top: 10),
          child: FutureBuilder<OpenClasses>(
            future: fetchOpenClass,
            builder: (context, response){
              if(response.hasData){
                return showListOpenClas(response.data.data);
              }else if(response.hasError){
                print(response.error);
                return Text(response.error);
              }
              return CircularProgressIndicator();
            }
          )
        )
      ],
    );
  }

  _openClassCellItem(DataListOpenClass data) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: 160,
      child: Stack(
        children: <Widget>[
          _backgroundImage(),
          _backgroundOverlay(),
          Container(
            height: 30,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                color: Color.fromRGBO(88, 175, 248, 1)),
            child: Center(
              child: AutoSizeText(
                "Open Class",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, bottom: 10, right: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AutoSizeText(
                  data.judul,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                ),
                AutoSizeText(
                  data.tanggal,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                  maxLines: 1,
                ),
                AutoSizeText(
                  data.biaya.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                  maxLines: 1,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _eventCell(Future<Events> fetchStatusUpdate) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: AutoSizeText(
                "Acara terbaru, Ikutan yuk!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
              AutoSizeText(
                "Lihat Semua",
                style: TextStyle(fontSize: 16, color: Colors.blueAccent),
              )
            ],
          ),
        ),
        Container(
            height: 160,
            padding: EdgeInsets.only(top: 10),
            child: FutureBuilder<Events>(
              future: fetchStatusUpdate,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return showListEvent(snapshot.data.data);
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                return CircularProgressIndicator();
              },
            ))
      ],
    );
  }

  _eventCellItem(DataListEvents data) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: 160,
      child: Stack(
        children: <Widget>[
          _backgroundImage(),
          _backgroundOverlay(),
          Container(
            padding: EdgeInsets.only(left: 10, bottom: 10, right: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AutoSizeText(
                  data.judul,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                ),
                AutoSizeText(
                  data.tanggal,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                  maxLines: 1,
                ),
                AutoSizeText(
                  data.biaya.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                  maxLines: 1,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _recomendationCell() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: AutoSizeText(
                "Acara terpopuler di Ngampooz",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
              AutoSizeText(
                "Lihat Semua",
                style: TextStyle(fontSize: 16, color: Colors.blueAccent),
              )
            ],
          ),
        ),
        Container(
          height: 160,
          padding: EdgeInsets.only(top: 10),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _recomendationCellItem(),
              _recomendationCellItem(),
              _recomendationCellItem(),
              _recomendationCellItem(),
            ],
          ),
        )
      ],
    );
  }

  _recomendationCellItem() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: 300.0,
      child: Stack(
        children: <Widget>[
          _backgroundImage(),
          _backgroundOverlay(),
          Container(
            height: 30,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                color: Color.fromRGBO(88, 175, 248, 1)),
            child: Center(
              child: AutoSizeText(
                "Fitur Baru",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, bottom: 10, right: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AutoSizeText(
                  "Telah hadir fitur Open Class",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                AutoSizeText(
                  "Berikan social impect! buka kelas untuk berbagi pengetahuan dengan banyak orang disekitar kamu.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                )
              ],
            ),
          ),
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

  showListEvent(List<DataListEvents> data) {
    return ListView.builder(
        itemCount: data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, position) {
          return _eventCellItem(data[position]);
        });
  }

  showListOpenClas(List<DataListOpenClass> data) {
    return ListView.builder(
        itemCount: data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, position) {
          return _openClassCellItem(data[position]);
        });
  }
}
