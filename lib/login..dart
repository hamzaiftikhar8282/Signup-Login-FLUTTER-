import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:projectflutter/siign.dart';
import 'package:flutter/widgets.dart';

import 'Authentication.dart';

class login extends StatelessWidget {
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text(
              "Login Here",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
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
      body: login1(),
    );
  }
}

class login1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return loginup();
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
        child: TextFormField(
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
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(30),
                    topRight: const Radius.circular(30),
                  ),
                  borderSide: BorderSide(color: Colors.orange, width: 3)),
              errorStyle: TextStyle(
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "Book Antiqua")),

          keyboardType: TextInputType.emailAddress,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter Username';
            }
            return null;
          },
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
        child: TextFormField(
          obscureText: isSecure,
          keyboardType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            } else if (value.length < 3) {
              return 'Password should contain 5 numbers';
            }
            return null;
          },
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 14),
            errorStyle: TextStyle(
                color: Colors.orangeAccent,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                fontFamily: "Book Antiqua"),
            prefixIcon: Icon(
              Icons.password,
              color: Color.fromARGB(255, 196, 162, 162),
            ),
            hintText: "Enter Password",
            suffixIcon: toogle(),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(30),
                  topRight: const Radius.circular(30),
                ),
                borderSide: BorderSide(color: Colors.orange, width: 3)),
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
        onPressed: () => login(),
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

class loginup extends State<login1> {
  bool isSecure = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  //late bool isSecure;
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
                image: new AssetImage("image/a.jpg"),
              ),
            ),
            child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Login ",
                          style: TextStyle(
                              color: Colors.amber,
                              fontFamily: "Broadway",
                              fontSize: 29)),
                      SizedBox(height: 50),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
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
                                child: TextFormField(
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
                                      errorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: const Radius.circular(30),
                                            topRight: const Radius.circular(30),
                                          ),
                                          borderSide: BorderSide(
                                              color: Colors.orange, width: 3)),
                                      errorStyle: TextStyle(
                                          color: Colors.orangeAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          fontFamily: "Book Antiqua")),

                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Enter Username';
                                    }
                                    return "enter valid username";
                                  },
                                )),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Password",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(width: 20),
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white38,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border:
                                              Border.all(color: Colors.white)),
                                      child: TextFormField(
                                        obscureText: isSecure,
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter some text';
                                          } else if (value.length < 3) {
                                            return 'Password should contain 5 numbers';
                                          }
                                          return null;
                                        },
                                        style: TextStyle(color: Colors.white),
                                        decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.only(top: 14),
                                          errorStyle: TextStyle(
                                              color: Colors.orangeAccent,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              fontFamily: "Book Antiqua"),
                                          prefixIcon: Icon(
                                            Icons.password,
                                            color: Color.fromARGB(
                                                255, 196, 162, 162),
                                          ),
                                          hintText: "Enter Password",
                                          suffixIcon: toogle(),
                                          errorBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.only(
                                                topLeft:
                                                    const Radius.circular(30),
                                                topRight:
                                                    const Radius.circular(30),
                                              ),
                                              borderSide: BorderSide(
                                                  color: Colors.orange,
                                                  width: 3)),
                                        ),
                                      )),

                                  //         buildEmial(),
                                  //    buildpass(),
                                  //       forget(),
                                  //   loginbtn(),
                                  //  builsign(),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 20),
                                      alignment: Alignment.center,
                                      child: ElevatedButton(
                                        child: Text(
                                          '  Login  ',
                                          style: TextStyle(
                                              fontFamily: "Berlin Sans FB Demi",
                                              fontWeight: FontWeight.bold),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.deepOrange),
                                        onPressed: () {
                                          if (formKey.currentState!
                                              .validate()) {
                                            formKey.currentState!.save();

                                            AuthenticationHelper()
                                                .signIn(
                                                    email: email.text,
                                                    password: password.text)
                                                .then((result) {
                                              if (result == null) {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            login()));
                                              }
                                            });
                                          }
                                        },
                                      )),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 10),
                                      alignment: Alignment.centerRight,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.transparent),
                                        onPressed: () {
                                          if (formKey.currentState!
                                              .validate()) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                                    content: Text(
                                                        'Processing Data')));
                                          }
                                        },
                                        child: const Text(
                                          'Forget Password?',
                                          style: TextStyle(
                                              fontFamily: "Lucida Console",
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )),
                                  Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 20),
                                      alignment: Alignment.center,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          if (formKey.currentState!
                                              .validate()) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                                    content: Text(
                                                        'Processing Data')));
                                          }

                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => signup(),
                                            ),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.transparent,
                                          textStyle: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        child: const Text(
                                          ' Do you have an account? SignUp ',
                                          style: TextStyle(
                                              fontFamily: "Berlin Sans FB Demi",
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )),
                                ]),
                          ])
                    ])),
          )
        ]),
      ),
    );
  }
}
