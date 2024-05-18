import 'package:flutter/material.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({Key? key}) : super(key: key);

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
                  Text("Koushik Roy", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(height: 2,),
                  Text("Junior Software Engineer", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.zero),
                  Image(
                    image: AssetImage('assets/facebook.png'),
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(width: 20),
                  Image(
                    image: AssetImage('assets/instagram.png'),
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(width: 20),
                  Image(
                    image: AssetImage('assets/twitter.png'),
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(width: 15),
                  Image(
                    image: AssetImage('assets/linkedin.png'),
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(width: 15),
                  Image(
                    image: AssetImage('assets/github.png'),
                    height: 40,
                    width: 40,
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
                  "Hello! I am Koushik Roy, a Junior Software Engineer passionate about creating user-friendly software solutions. I enjoy problem-solving and continuously learning new technologies to improve my skills.",
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
                    subtitle: Text('FSD1111022'),
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
                    subtitle: Text('Junior Software Engineer'),
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
                    subtitle: Text('rkoushik755@gmail.com'),
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