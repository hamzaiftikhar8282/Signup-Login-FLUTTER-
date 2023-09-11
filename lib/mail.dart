import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';
import 'package:toast/toast.dart';

import 'crediantial.dart';

class sendmail extends StatefulWidget {
  @override
  _sendmailState createState() => _sendmailState();
}

class _sendmailState extends State<sendmail> {
  sendMail() async {
    String username = 'username';
    String password = 'password';

    final smtpServer = gmail(username, password);
    // Use the SmtpServer class to configure an SMTP server:
    // final smtpServer = SmtpServer('smtp.domain.com');
    // See the named arguments of SmtpServer for further configuration
    // options.

    // Create our message.
    final message = Message()
      ..from = Address(username, 'Your name')
      ..recipients.add('hamzaiftikhar8282@gmail.com')
//..ccRecipients.addAll(['destCc1@example.com', 'destCc2@example.com'])
      //    ..bccRecipients.add(Address('bccAddress@example.com'))
      ..subject = 'Test Dart Mailer library :: 😀 :: ${DateTime.now()}'
      ..text = 'This is the plain text.\nThis is line 2 of the text part.'
      ..html = "<h1>Test</h1>\n<p>Hey! Here's some HTML content</p>";

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
    } on MailerException catch (e) {
      print('Message not sent.');
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter sen mail")),
      body: Center(
          child: MaterialButton(
        color: Colors.black,
        child: Text("Send mail"),
        onPressed: () {
          sendMail();
        },
      )),
    );
    showToast(String msg, {int? durration, required int gravity}) {
      Toast.show(msg, duration: durration, gravity: gravity);
    }
  }
}
