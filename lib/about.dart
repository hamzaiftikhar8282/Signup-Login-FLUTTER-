import 'package:flutter/material.dart';

class ab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Image.asset(
              "image/qqq.png",
              width: 210,
              height: 130,
            )
          ],
        ),
        flexibleSpace: Container(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.red, Colors.black],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(children: <Widget>[
          Text(
            "About Us, What we are?",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          Text(
            "The company was formed in 2003 via the acquisition of",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Text(
              "of  hamza HIFI Pakistani  operations (which include), style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)"),
          Text(
              "The company operates cinemas across Pakistan, primarily under the ",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          Text(
              " brand HIFI Cinemas. Some flagship locations operate as Scotiabank Theatre, while",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          Text(
              " corporate predecessors (such as Famous Players, SilverCity, Odeon, and Galaxy, although some of them have since been converted to the Cineplex banner). The company also owns family entertainment centres under the brands the Rec Room and Playdium.",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          Text(
              " brand HIFI Cinemas. Some flagship locations operate as Scotiabank Theatre, while",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          Text(
              " brand HIFI Cinemas. Some flagship locations operate as Scotiabank Theatre, while",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          Image.asset(
            "image/ii.jpg",
            width: 400,
            height: 330,
          )
        ]),
      ),
    );
  }
}
