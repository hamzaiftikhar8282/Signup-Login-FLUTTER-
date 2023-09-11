import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:projectflutter/siign.dart';
import 'package:flutter/widgets.dart';

class fget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQipra8LGZipNAkCIGZVbYbAe4aMDyIGc96BgfrTCYqVcNoT1FTguuQBVnzgcCWsNAYZVI&usqp=CAU",
              width: 100,
              height: 100,
            )
          ],
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.red, Colors.black],
            ),
          ),
        ),
      ),
      body: fget2(),
    );
  }
}

class fget2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return fget3();
  }
}

Widget toogle() {
  bool isSecure = true;
  return IconButton(
    onPressed: () {
      isSecure = !isSecure;
    },
    icon: isSecure ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
    color: Colors.white,
  );
}

Widget buildEmial() {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
    Text(
      "Email",
      style: TextStyle(fontSize: 16),
    ),
    SizedBox(width: 20),
    Container(
        decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white),
        ),
        child: TextField(
          // keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            hintText: " Enter Username",
            hintStyle: TextStyle(color: Colors.white),
          ),
        ))
  ]);
}

Widget buildpass() {
  bool isSecure = true;
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
    Text(
      "Password",
      style: TextStyle(fontSize: 16),
    ),
    SizedBox(width: 20),
    Container(
        decoration: BoxDecoration(
            color: Colors.white38,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.white)),
        child: TextField(
          obscureText: isSecure,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.password,
              color: Colors.white,
            ),
            hintText: "Enter Password",
            suffixIcon: toogle(),
          ),
        )),
  ]);
}

Widget loginbtn() {
  final formKey = GlobalKey<FormState>();
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      alignment: Alignment.center,
      child: ElevatedButton(
        child: Text(
          '  Login  ',
          style: TextStyle(
              fontFamily: "Berlin Sans FB Demi", fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
        onPressed: () {},
      ));
}

Widget builsign() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      alignment: Alignment.center,
      child: ElevatedButton(
        child: Text(
          ' Do you have an account? SignUp ',
          style: TextStyle(
              fontFamily: "Berlin Sans FB Demi", fontWeight: FontWeight.bold),
        ),
        onPressed: null,
        style: ElevatedButton.styleFrom(primary: Colors.transparent),
      ));
}

Widget forget() {
  final formKey = GlobalKey<FormState>();
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        child: Text(
          'Forget Password?',
          style: TextStyle(
              fontFamily: "Lucida Console", fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(primary: Colors.transparent),
        onPressed: () {},
      ));
}

class fget3 extends State<fget2> {
  late bool isSecure;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: GestureDetector(
          child: Stack(children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.white.withOpacity(0.7), BlendMode.dstATop),
                  image: new NetworkImage(
                      "https://i.pinimg.com/736x/c4/b8/02/c4b802ce25d090a8fa60a4779892f7b8.jpg"),
                ),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Submit",
                          style: TextStyle(
                              color: Colors.amber,
                              fontFamily: "Geometr212 BkCn BT",
                              fontSize: 29)),
                      SizedBox(height: 50),
                      buildEmial(),
                      buildpass(),
                      //       forget(),
                      loginbtn(),
                      //  builsign(),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 14, vertical: 10),
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            child: Text(
                              'Forget Password?',
                              style: TextStyle(
                                  fontFamily: "Lucida Console",
                                  fontWeight: FontWeight.bold),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => forget(),
                                ),
                              );
                            },
                          )),
                    ]),
              ),
            ),
          ]),
        ));
  }
}
