import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.indigo[500]);
    return Scaffold(
      appBar: AppBar(
        title: Text('My TODOS'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.indigo[500],
      ),
      body: Stack(children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/bg.jpg'),
          ),
          decoration: BoxDecoration(
              color: Colors.indigo[500],
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          height: MediaQuery.of(context).size.height * 0.25,
          width: double.infinity,
        ),
        Container(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.25),
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    elevation: 5.0,
                    color: Colors.indigo[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Hi'),
                          subtitle: Text('This is list tile'),
                          leading: Icon(Icons.alarm),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.10,
              vertical: MediaQuery.of(context).size.width * 0.10),
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            backgroundColor: Colors.indigo[400],
            onPressed: () {},
            child: Icon(Icons.alarm_add),
          ),
        ),
      ]),
    );
  }
}
