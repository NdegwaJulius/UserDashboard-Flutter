import 'package:flutter/material.dart';
import 'package:ui_dashboard/item.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.sort),
                    iconSize: 30,
                    color: Colors.grey,
                    onPressed: () {},
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://media1-production-mightynetworks.imgix.net/asset/6976670/profilepic.jpeg?ixlib=rails-0.3.0&fm=jpg&q=100&auto=format&w=2004&h=2004&fit=crop&crop=faces&mask=ellipse'),
                  )
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 190,
                      height: 190,
                      alignment: Alignment.center,
                      child: Text(
                        '20%',
                        style: TextStyle(
                            color: Colors.blueAccent[200],
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        border: Border.all(
                            color: Colors.blue,
                            style: BorderStyle.solid,
                            width: 25),
                      ),
                    ),
                  ],
                ),
                flex: 1,
              ),
              Wrap(
                spacing: 17,
                runSpacing: 17,
                children: <Widget>[
                  Item(
                    title: 'Test',
                    icon: Icons.home,
                    color: Color(0xff8e8d8a),
                  ),
                  Item(
                    title: 'Favourites',
                    icon: Icons.star,
                    color: Color(0xffd7cc69),
                  ),
                  Item(
                    title: 'Income',
                    icon: Icons.monetization_on,
                    color: Color(0xff42a9f6),
                  ),
                  Item(
                    title: 'sales',
                    icon: Icons.show_chart_outlined,
                    color: Color(0xff70d74e),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
