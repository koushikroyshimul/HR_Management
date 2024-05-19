import 'package:flutter/material.dart';
import 'package:hrm_project/homepage.dart';
import 'package:hrm_project/regScreen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'api.dart';
import 'get_data_model.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  TextEditingController e_email = TextEditingController();
  TextEditingController e_passwordController = TextEditingController();

  late GetApi getApi;

  // insertApi() async {
  //   print(e_email.text);
  //   final response = await http.post(
  //     Uri.parse("http://${Api_name().api}/hr_management/login.php"),
  //     body: jsonEncode(<String, dynamic>{
  //       "e_email": e_email.text,
  //     }),
  //   );
  //
  //   print(response.body);
  //
  //   getApi = getApiFromJson(response.body);
  //
  //   print(getApi.eEmail == e_email.text);
  //
  //   if (getApi.eEmail == e_email.text) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => Homepage()),
  //     );
  //   }
  //   print(response.body);
  // }
  insertApi() async {
    print(e_email.text);
    final response = await http.post(
      Uri.parse("http://${Api_name().api}/hr_management/login.php"),
      body: jsonEncode(<String, dynamic>{
        "e_email": e_email.text,
      }),
    );

    print(response.body);

    getApi = getApiFromJson(response.body);

    print(getApi.eEmail == e_email.text);

    if (getApi.eEmail == e_email.text) {
      // Show a dialog if sign in is successful
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Sign In Successful"),
            content: Text("You have successfully signed in."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  // Navigate to the Homepage after closing the dialog
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage(getApi: getApi,)),
                  );
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    } else {
      // Show a dialog if sign in is unsuccessful
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Invalid Email or Password"),
            content: Text("Please enter a valid email and password."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
              child: Padding(
                padding: EdgeInsets.only(top: 60.0, left: 22),
                child: Text(
                  'Hello\nSign in!',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 200.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Colors.white,
                ),
                width: double.infinity,
                height: double.infinity,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: e_email,
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.check,
                            color: Colors.grey,
                          ),
                          labelText: 'Email or Phone',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff022F40),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        controller: e_passwordController,
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff022F40),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color(0xff281537),
                          ),
                        ),
                      ),
                      SizedBox(height: 45),
                      GestureDetector(
                        onTap: () {
                          insertApi();
                        },
                        child: Container(
                          height: 55,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(colors: [
                              Color(0xff022F40),
                              Color(0xff38AECC),
                            ]),
                          ),
                          child: Center(
                            child: Text(
                              'SIGN IN',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      Center(
                        child: Text(
                          'Or sign in with',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/search.png',
                            height: 40,
                            width: 40,
                          ),
                          SizedBox(width: 20),
                          Image.asset(
                            'assets/facebook.png',
                            height: 40,
                            width: 40,
                          ),
                          SizedBox(width: 20),
                          Image.asset(
                            'assets/instagram.png',
                            height: 40,
                            width: 40,
                          ),
                        ],
                      ),
                      SizedBox(height: 55),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
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
                                MaterialPageRoute(builder: (context) => RegScreen()), // Replace RegScreen with your target screen
                              );
                            },
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:hrm_project/homepage.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// import 'api.dart';
// import 'get_data_model.dart';
//
// class loginScreen extends StatefulWidget {
//   const loginScreen({Key? key}) : super(key: key);
//
//   @override
//   State<loginScreen> createState() => _loginScreenState();
// }
//
// class _loginScreenState extends State<loginScreen> {
//
//
//   TextEditingController e_email = TextEditingController();
//
//   TextEditingController e_passwordController = TextEditingController();
//
//   late GetApi getApi;
//   insertApi() async {
//     print(e_email.text);
//     final response = await http.post(
//       Uri.parse("http://${Api_name().api}/hr_management/login.php"),
//       //Uri.parse("http://192.168.0.104/hr_management/post_get.php"),
//       body: jsonEncode(<String, dynamic>{
//         "e_email": e_email.text,
//       }),
//     );
//
//     print(response.body);
//
//     getApi = getApiFromJson(response.body);
//
//     print(getApi.eEmail == e_email.text);
//
//     if (getApi.eEmail == e_email.text) {
//       Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) =>  Homepage())
//       );
//
//     }
//     print(response.body);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Stack(
//           children: [
//             Container(
//               height: double.infinity,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(colors: [
//                   Color(0xff022F40),
//                   Color(0xff38AECC),
//                 ]),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.only(top: 60.0, left: 22),
//                 child: Text(
//                   'Hello\nSign in!',
//                   style: TextStyle(
//                     fontSize: 30,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 200.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(40),
//                     topRight: Radius.circular(40),
//                   ),
//                   color: Colors.white,
//                 ),
//                 height: double.infinity,
//                 width: double.infinity,
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 18.0, right: 18),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       TextField(
//                         controller: e_email,
//                         decoration: InputDecoration(
//                           suffixIcon: Icon(
//                             Icons.check,
//                             color: Colors.grey,
//                           ),
//                           label: Text(
//                             'Email or Phone',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Color(0xff022F40),
//                             ),
//                           ),
//                         ),
//                       ),
//                       TextField(
//                         controller: e_passwordController,
//                         decoration: InputDecoration(
//                           suffixIcon: Icon(
//                             Icons.visibility_off,
//                             color: Colors.grey,
//                           ),
//                           label: Text(
//                             'Password',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Color(0xff022F40),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       Align(
//                         alignment: Alignment.centerRight,
//                         child: Text(
//                           'Forgot Password?',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                             color: Color(0xff281537),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 45),
//                       GestureDetector(
//                         onTap: () {
//                           insertApi();
//                         },
//                         child: Container(
//                           height: 55,
//                           width: 300,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(30),
//                             gradient: LinearGradient(colors: [
//                               Color(0xff022F40),
//                               Color(0xff38AECC),
//                             ]),
//                           ),
//                           child: Center(
//                             child: Text(
//                               'SIGN IN',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 20,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 25),
//                       Center(
//                         child: Text(
//                           'Or sign in with',
//                           style: TextStyle(
//                             fontSize: 15,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 15),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Padding(padding: EdgeInsets.zero),
//                           Image(
//                             image: AssetImage('assets/search.png'),
//                             height: 40,
//                             width: 40,
//                           ),
//                           SizedBox(width: 20),
//                           Image(
//                             image: AssetImage('assets/facebook.png'),
//                             height: 40,
//                             width: 40,
//                           ),
//                           SizedBox(width: 20),
//                           Image(
//                             image: AssetImage('assets/instagram.png'),
//                             height: 40,
//                             width: 40,
//                           ),
//                           SizedBox(width: 15),
//                         ],
//                       ),
//                       SizedBox(height: 55),
//                       Align(
//                         alignment: Alignment.bottomRight,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Text(
//                               "Don't have an account?",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.grey,
//                               ),
//                             ),
//                             SizedBox(width: 4),
//                             Text(
//                               "Sign up",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

