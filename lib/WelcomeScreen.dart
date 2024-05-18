import 'package:flutter/material.dart';
import 'package:hrm_project/regScreen.dart';
import 'loginScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff022F40),
          ),
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/HRM.png'),
                // height: 400, // set the height here if needed
                // width: 400, // set the width here if needed
              ),
              Column(
                children: [
                  Padding(padding: EdgeInsets.zero),
                  Text(
                    'WELCOME',
                    style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => loginScreen()),
                      );
                    },
                    child: Container(
                      height: 53,
                      width: 320,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(
                        child: Text(
                          'SIGN IN',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegScreen()),
                      );
                    },
                    child: Container(
                      height: 53,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 200),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "By signing I accept the terms of use and the data",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "privacy policy",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff38AECC),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:hrm_project/regScreen.dart';
// import 'loginScreen.dart';
//
// class WelcomeScreen extends StatelessWidget {
//   const WelcomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             height: double.infinity,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                color:Color(0xff022F40),
//               // gradient: LinearGradient(colors: [
//               //
//               //   Color(0xff022F40),
//               //   Color(0xff022F40),
//               // ],
//               //   ),
//             ),
//             child: Column(
//               children: [
//                 Image(
//                   image: AssetImage('assets/HRM.png',),
//                   // height: 400, // set the height here
//                   // width: 400, // set the width here
//                 ),
//                 Column(
//                   children: [
//                     Padding(padding: EdgeInsets.zero),
//                     Text(
//                       'WELCOME',
//                       style: TextStyle(
//                         fontSize: 45,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => loginScreen()),
//                         );
//                       },
//                       child: Container(
//                         height: 53,
//                         width: 320,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(30),
//                           border: Border.all(color: Colors.white),
//                         ),
//                         child: Center(
//                           child: Text(
//                             'SIGN IN',
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => RegScreen()),
//                         );
//                       },
//                       child: Container(
//                         height: 53,
//                         width: 320,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(30),
//                           border: Border.all(color: Colors.white),
//                         ),
//                         child: Center(
//                           child: Text(
//                             'SIGN UP',
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 200),
//                     Align(
//                       alignment: Alignment.bottomCenter,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text(
//                             "By signing I accept the terms of use and the data",
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.grey,
//                             ),
//                           ),
//                           Text(
//                             "privacy policy",
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Color(0xff38AECC),
//                             ),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

