import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Notification",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          backgroundColor: Color(0xff022F40),
        ),
        body: SingleChildScrollView(

        ),
      ),
    );
  }
}
