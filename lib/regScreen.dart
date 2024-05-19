import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hrm_project/api.dart';
import 'package:hrm_project/loginScreen.dart';
import 'package:http/http.dart' as http;
import 'homepage.dart';

class RegScreen extends StatefulWidget {
  const RegScreen({Key? key}) : super(key: key);

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController e_email = TextEditingController();
  TextEditingController e_password = TextEditingController();
  TextEditingController designation = TextEditingController();
  TextEditingController department = TextEditingController();


  insert_api() async {
    final response = await http.post(
      Uri.parse('http://${Api_name().api}/hr_management/insert.php'),
      body: jsonEncode(<String, dynamic>{
        "name": name.text,
        "e_email": e_email.text,
        "e_password": e_password.text,
        "designation": designation.text,
        "department": department.text
      }),
    );
    print(response.body);
    print(response.statusCode);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => loginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff022F40),
                  Color(0xff38AECC),
                ]),
              ),
              child:  Padding(
                padding: EdgeInsets.only(top: 60.0, left: 22),
                child: Text(
                  'Create Your\nAccount',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 200.0),
              child: Container(
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                height: double.infinity,
                width: double.infinity,
                child:  SingleChildScrollView(
                  child: Padding(
                    padding:  EdgeInsets.only(left: 18.0,right: 18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          controller: name,
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.check,color: Colors.grey,),
                              label: Text('Name',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xff022F40),
                              ),)
                          ),
                        ),
                        TextField(
                          controller: e_email,
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.check,color: Colors.grey,),
                              label: Text('Email or Phone',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xff022F40),
                              ),)
                          ),
                        ),
                        TextField(
                          controller: e_password,
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                              label: Text('Password',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xff022F40),
                              ),)
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                              label: Text('Conform Password',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xff022F40),
                              ),)
                          ),
                        ),
                        TextField(
                          controller: designation,
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                              label: Text('Designation',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xff022F40),
                              ),)
                          ),
                        ),
                        TextField(
                          controller: department,
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                              label: Text('Department',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xff022F40),
                              ),)
                          ),
                        ),
                  
                        SizedBox(height: 40,),
                                GestureDetector(
                  onTap: () {
                    insert_api();
                  },
                        child: Container(
                          height: 55,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient:  LinearGradient(
                                colors: [
                                  Color(0xff022F40),
                                  Color(0xff38AECC),
                                ]
                            ),
                          ),
                          child:  Center(child: Text('SIGN IN',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white
                          ),),),
                        ),),
                        SizedBox(height: 30,),
                        // SizedBox(height: 25),
                        Center(
                          child: Text(
                            'Or sign up with',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(padding: EdgeInsets.zero),
                            Image(
                              image: AssetImage('assets/search.png'),
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(width: 20),
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
                            SizedBox(width: 15),
                          ],
                        ),
                        SizedBox(height: 25),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 4),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => loginScreen()), // Replace RegScreen with your target screen
                                  );
                                },
                                child: Text(
                                  "Sign in",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}