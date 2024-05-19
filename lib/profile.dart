import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import 'get_data_model.dart';

class Myprofile extends StatefulWidget {
  Myprofile({required this.getApi});

  GetApi getApi;

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/Flutter.jpeg',
                  height: h/3.5,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: -40,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/Koushik.jpg',
                        width: 92,
                        height: 92,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 50,),
              Column(
                children: [
                  Text("${widget.getApi.name}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(height: 2,),
                  Text("${widget.getApi.designation}", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.zero),
                  GestureDetector(
                    onTap: () {
                      launch('https://www.facebook.com/profile.php?id=100005382408988');
                    },
                    child: Image(
                      image: AssetImage('assets/facebook.png'),
                      height: 40,
                      width: 40,
                    ),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      launch('https://www.instagram.com/rkoushik755/');
                    },
                    child: Image(
                      image: AssetImage('assets/instagram.png'),
                      height: 40,
                      width: 40,
                    ),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      launch('https://x.com/Koushik__roy');
                    },
                    child: Image(
                      image: AssetImage('assets/twitter.png'),
                      height: 40,
                      width: 40,
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      launch('https://www.linkedin.com/in/koushikroy755/');
                    },
                    child: Image(
                      image: AssetImage('assets/linkedin.png'),
                      height: 40,
                      width: 40,
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      launch('https://github.com/koushikroyshimul');
                    },
                    child: Image(
                      image: AssetImage('assets/github.png'),
                      height: 40,
                      width: 40,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "About",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Hello! I am ${widget.getApi.name}, a Junior Software Engineer passionate about creating user-friendly software solutions. I enjoy problem-solving and continuously learning new technologies to improve my skills.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 4,
                  child: ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Employee ID'),
                    subtitle: Text('${widget.getApi.id}'),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 4,
                  child: ListTile(
                    leading: Icon(Icons.work),
                    title: Text('Current Position'),
                    subtitle: Text('${widget.getApi.designation}'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 4,
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text('Email'),
                    subtitle: Text('${widget.getApi.eEmail}'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 4,
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
                  elevation: 4,
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