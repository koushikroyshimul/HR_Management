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
          child: Column(
            children: [
          Padding(
          padding: EdgeInsets.only(left: 5, top: 5),
          child: Card(
            elevation: 0,
            child: ListTile(
              leading: ClipOval(
                child: Image.asset(
                  'assets/2.png',
                  width: 100,  // Adjusted width to fit within ListTile constraints
                  height: 100, // Adjusted height to fit within ListTile constraints
                  fit: BoxFit.cover,
                ),
              ),
              title: Text('Employee ID'),
            ),
          ),
        ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 0,
                  child: ListTile(
                    leading: Icon(Icons.work),
                    title: Text('Current Position'),
                    subtitle: Text('Junior Software Engineer'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 0,
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text('Email'),
                    subtitle: Text('rkoushik755@gmail.com'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 0,
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Phone'),
                    subtitle: Text('+8801706412485'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 0,
                  child: ListTile(
                    leading: Icon(Icons.date_range),
                    title: Text('Started Job'),
                    subtitle: Text('01/01/2024'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
