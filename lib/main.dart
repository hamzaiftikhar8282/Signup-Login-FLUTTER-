import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:projectflutter/about.dart';

import 'package:projectflutter/firebase_options.dart';
import 'package:projectflutter/login..dart';
import 'package:intl/intl.dart';

import 'package:projectflutter/siign.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'loveyousomuch',
      home: signup(),
    );
  }
}

class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Text(
                "SignUp Here",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
        body: sign1());
  }
}

class sign1 extends StatefulWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  State<StatefulWidget> createState() {
    return signup1();
  }
}

Widget fname() {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
    Text(
      "Firstname: ",
      style: TextStyle(fontSize: 16),
    ),
    SizedBox(height: 5),
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
            errorStyle: TextStyle(
                color: Colors.orangeAccent,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                fontFamily: "Book Antiqua"),
            prefixIcon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            hintText: "Enter Firstname",
            hintStyle: TextStyle(color: Colors.white),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(30),
                  topRight: const Radius.circular(30),
                ),
                borderSide: BorderSide(color: Colors.orange, width: 1)),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return ("Fill above textfield");
            }
          },
        ))
  ]);
}

Widget email() {
  TextEditingController eemail = TextEditingController();
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
    Text(
      "Email Adress: ",
      style: TextStyle(fontSize: 16),
    ),
    SizedBox(height: 0),
    Container(
        decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white),
        ),
        child: TextFormField(
            controller: eemail,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: "Enter email",
              hintStyle: TextStyle(color: Colors.white),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                print("please enter email");
              } else if (value == "@gmail.com") {
                print("email format should be abcd@gmail.com ");
              }
            }))
  ]);
}

Widget conpass() {
  TextEditingController password = TextEditingController();
  bool isSecure = true;
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
    Text(
      "Confirm Password: ",
      style: TextStyle(fontSize: 16),
    ),
    SizedBox(height: 0),
    Container(
        decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white),
        ),
        child: TextFormField(
          controller: password,
          obscureText: isSecure,
          // keyboardType: TextInputType.emailAddress,
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
              color: Colors.white,
            ),
            hintText: "Enter confrim Password",
            hintStyle: TextStyle(color: Colors.white),
            suffixIcon: toogle(),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(30),
                  topRight: const Radius.circular(30),
                ),
                borderSide: BorderSide(color: Colors.orange, width: 1)),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              print("Please Fill this field");
            } else if (value.length < 11) {
              print("Phone number no be less than 11 digits");
            }
          },
        ))
  ]);
}

Widget pass() {
  TextEditingController password = TextEditingController();
  bool isSecure = true;
  return Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
    Text(
      "Password: ",
      style: TextStyle(fontSize: 16),
    ),
    SizedBox(height: 0),
    Container(
        decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white),
        ),
        child: TextField(
          controller: password,
          obscureText: isSecure,
          // keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 14),
            errorStyle: TextStyle(
                color: Colors.orangeAccent,
                fontWeight: FontWeight.bold,
                fontSize: 10,
                fontFamily: "Book Antiqua"),
            prefixIcon: Icon(
              Icons.password,
              color: Colors.white,
            ),
            hintText: "Enter Password",
            hintStyle: TextStyle(color: Colors.white),
            suffixIcon: toogle(),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(30),
                  topRight: const Radius.circular(30),
                ),
                borderSide: BorderSide(color: Colors.orange, width: 1)),
          ),
        ))
  ]);
}

Widget lname() {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
    Text(
      "Lastname: ",
      style: TextStyle(fontSize: 16),
    ),
    SizedBox(height: 1),
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
            errorStyle: TextStyle(
                color: Colors.orangeAccent,
                fontWeight: FontWeight.bold,
                fontSize: 10,
                fontFamily: "Book Antiqua"),
            prefixIcon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            hintText: "Enter Lastname",
            hintStyle: TextStyle(color: Colors.white),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(30),
                  topRight: const Radius.circular(30),
                ),
                borderSide: BorderSide(color: Colors.orange, width: 1)),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return ("Fill above textfield");
            }
          },
        ))
  ]);
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

Widget phone() {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
    Text(
      "Lastname: ",
      style: TextStyle(fontSize: 10),
    ),
    SizedBox(height: 1),
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
              errorStyle: TextStyle(
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "Book Antiqua"),
              prefixIcon: Icon(
                Icons.call,
                color: Colors.white,
              ),
              hintText: "Enter phone number",
              hintStyle: TextStyle(color: Colors.white),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(30),
                    topRight: const Radius.circular(30),
                  ),
                  borderSide: BorderSide(color: Colors.orange, width: 1)),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              } else if (value.length < 11) {
                return 'Phone number should be 11 digits';
              }
            })),
  ]);
}

class signup1 extends State<sign1> {
  bool isrememberme = false;
  bool isSecure = true;
  final formKey = GlobalKey<FormState>();
  var pas;

  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
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
                gradient: LinearGradient(colors: [
              Color.fromARGB(143, 150, 8, 55),
              Color.fromARGB(255, 128, 6, 43)
            ])),
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 70),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                      Widget>[
                Text("SignUp",
                    style: TextStyle(
                        color: Colors.amber,
                        fontFamily: "Geometr212 BkCn BT",
                        fontSize: 29)),
                SizedBox(height: 2),
                fname(),
                lname(),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Email Adress: ",
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(height: 0),
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.white),
                          ),
                          child: TextFormField(
                            controller: email,
                            // keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 14),
                              errorStyle: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: "Book Antiqua"),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                              hintText: "Enter email",
                              hintStyle: TextStyle(color: Colors.white),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(30),
                                    topRight: const Radius.circular(30),
                                  ),
                                  borderSide: BorderSide(
                                      color: Colors.orange, width: 1)),
                            ),
                            validator: ((value) {
                              if (value!.isEmpty) {
                                return 'Please enter some text';
                              } else if (value ==
                                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$') {
                                return ('Email patteren is not');
                              }
                            }),
                            onSaved: (val) {
                              // email = val as TextEditingController;
                            },
                          ))
                    ]),
                phone(),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Password: ",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white),
                        ),
                        child: TextFormField(
                          controller: password,
                          obscureText: isSecure,

                          // keyboardType: TextInputType.emailAddress,
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
                              color: Colors.white,
                            ),
                            hintText: "Enter Password",
                            hintStyle: TextStyle(color: Colors.white),
                            suffixIcon: toogle(),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: const Radius.circular(30),
                                  topRight: const Radius.circular(30),
                                ),
                                borderSide:
                                    BorderSide(color: Colors.orange, width: 1)),
                          ),
                          validator: (value) {
                            pas = value;
                            if (value!.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                    ]),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Confirm Password: ",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 0),
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.white),
                          ),
                          child: TextFormField(
                            controller: password,
                            obscureText: isSecure,
                            // keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 14),
                              errorStyle: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  fontFamily: "Book Antiqua"),
                              prefixIcon: Icon(
                                Icons.password,
                                color: Colors.white,
                              ),
                              hintText: "Enter confrim Password",
                              hintStyle: TextStyle(color: Colors.white),
                              suffixIcon: toogle(),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(30),
                                    topRight: const Radius.circular(30),
                                  ),
                                  borderSide: BorderSide(
                                      color: Colors.orange, width: 3)),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                print("Please Fill this field");
                              } else if (value.length < 11) {
                                print("Phone number no be less than 11 digits");
                              } else if (value != pas) {
                                print("password does not match");
                              }
                            },
                          )),
                    ]),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 03, vertical: 40),
                    alignment: Alignment.bottomLeft,
                    child: ElevatedButton(
                      child: Text(
                        ' Back to Login ',
                        style: TextStyle(
                            fontFamily: "Berlin Sans FB Demi",
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => login(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
                        textStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ))
              ]),
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                child: Text(
                  ' Submit ',
                  style: TextStyle(
                      fontFamily: "Berlin Sans FB Demi",
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                            email: email.text, password: password.text)
                        .then((result) {
                      if (result == null) {
                        print("hw");
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Processing Data')));
                      }
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange,
                  textStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ))
        ]),
      ),
    );
  }
}
