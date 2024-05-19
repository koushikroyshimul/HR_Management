import 'package:flutter/material.dart';
import 'package:hrm_project/out_attendance.dart';
import 'package:hrm_project/profile.dart';
import 'package:hrm_project/regScreen.dart';
import 'package:hrm_project/shortleave.dart';
import 'package:hrm_project/notification.dart';
import 'WelcomeScreen.dart';
import 'get_data_model.dart';
import 'in_attendance.dart';
import 'leave.dart';

class Homepage extends StatefulWidget {
  Homepage({required this.getApi});

  GetApi getApi;

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Colors.white, // Change the color of the hamburger menu icon
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "ZenithhBD HRM",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          actions: [
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 5),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationPage()),
                );
              },
              child: Icon(Icons.notifications, color: Colors.white),
            ),
            SizedBox(width: 5),
          ],
          backgroundColor: Color(0xff022F40),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [

              UserAccountsDrawerHeader(
                accountName: Text(
                  "${widget.getApi.name}",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                accountEmail: Text(
                  "${widget.getApi.eEmail}",
                  style: TextStyle(fontSize: 16),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/Koushik.jpg"),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff022F40),
                ),
              ),
              ListTile(
                leading: //Image.asset("assets/user-pen.png"),
                Icon(Icons.person),
                title: Text(
                  "Profile",
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Myprofile(getApi: widget.getApi,)),
                  );
                },
              ),
              ListTile(
                leading: //Image.asset("assets/attendance.png"),
                Icon(Icons.co_present),
                title: Text(
                  "Attendance",
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () => print("Attendance"),
              ),
              ListTile(
                leading: //Image.asset("assets/payslip.png"),
                Icon(Icons.payments_outlined),
                title: Text(
                  "Pay Slip",
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () => print("Pay Slip"),
              ),
              ListTile(
                leading: //Image.asset("assets/activity-.png"),
                Icon(Icons.manage_history),
                title: Text(
                  "Leave History",
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () => print("Leave History"),
              ),
              ListTile(
                leading: //Image.asset("assets/call.png"),
                Icon(Icons.call),
                title: Text(
                  "Live Calling",
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () => print("Live Calling"),
              ),
              ListTile(
                leading: //Image.asset("assets/loan (1).png"),
                Icon(Icons.attach_money),
                title: Text(
                  "HR Loan",
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () => print("HR Loan"),
              ),
              ListTile(
                leading: //Image.asset("assets/tracking.png"),
                Icon(Icons.location_on),
                title: Text(
                  "Employee Tracking",
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () => print("Employee Tracking"),
              ),
              ListTile(
                leading: //Image.asset("assets/share.png"),
                Icon(Icons.share),
                title: Text(
                  "Share App",
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () => print("Share App"),
              ),
              ListTile(
                leading: //Image.asset("assets/logout.png"),
                Icon(Icons.logout),
                title: Text(
                  "Logout",
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomeScreen()),
                  );
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 6)),
                Container(
                  width: 340,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), // Set border radius
                    color: Color(0xff022F40),
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding:  EdgeInsets.only(left: 5,top: 8),
                      child: Row(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              'assets/Koushik.jpg', // Replace 'your_image.png' with your asset image path
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            'Koushik Roy\nJunior Software Engineer\nEmployee ID: 1111022\nEmail: rkoushik@gmail.com',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 11)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InAttendance()),
                        );
                      },
                      child:Container(
                        width: 165,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20), // Set border radius
                          color: Color(0xff022F40),
                        ),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding:  EdgeInsets.only(left: 5,top:12),
          
                            child: Column(
                              children: [
                                Image(image: AssetImage('assets/add 64.png'),height: 20,width: 20,),
                                SizedBox(height: 2,),
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Text(
                                  'In Attendance',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 0,),
                    Padding(padding: EdgeInsets.only(left: 11)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OutAttendance()),
                        );
                      },
                    child: Container(
                      width: 164,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), // Set border radius
                        color: Color(0xff022F40),
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding:  EdgeInsets.only(left: 5,top:12),
                          child: Column(
                            children: [
                              Image(image: AssetImage('assets/add 64.png'),height: 20,width: 20,),
                              SizedBox(height: 2,),
                              Padding(padding: EdgeInsets.only(left: 5)),
                              Text(
                                'Out Attendance',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 11)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Leave()),
                        );
                      },
                    child: Container(
                      width: 165,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), // Set border radius
                        color: Color(0xff022F40),
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding:  EdgeInsets.only(left: 5,top:12),
                          child: Column(
                            children: [
                              Image(image: AssetImage('assets/exit 64.png'),height: 90,width: 90,),
                              SizedBox(height: 2,),
                              Padding(padding: EdgeInsets.only(left: 5)),
                              Text(
                                'Leave',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),),
                    SizedBox(width: 0,),
                    Padding(padding: EdgeInsets.only(left: 11)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ShortLeave()),
                        );
                      },
                    child:Container(
                      width: 164,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), // Set border radius
                        color: Color(0xff022F40),
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding:  EdgeInsets.only(left: 5,top:12),
                          child: Column(
                            children: [
                              Image(image: AssetImage('assets/check-out 64.png'),height: 90,width: 90,),
                              SizedBox(height: 2,),
                              Padding(padding: EdgeInsets.only(left: 5)),
                              Text(
                                'Short Leave',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 11)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegScreen()),
                        );
                      },
                    child: Container(
                      width: 165,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), // Set border radius
                        color: Color(0xff022F40),
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding:  EdgeInsets.only(left: 5,top:12),
                          child: Column(
                            children: [
                              Image(image: AssetImage('assets/computer-worker 64.png'),height: 90,width: 90,),
                              SizedBox(height: 2,),
                              Padding(padding: EdgeInsets.only(left: 5)),
                              Text(
                                'Out Work',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),),
                    SizedBox(width: 0,),
                    Padding(padding: EdgeInsets.only(left: 11)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegScreen()),
                        );
                      },
                    child:Container(
                      width: 164,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), // Set border radius
                        color: Color(0xff022F40),
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding:  EdgeInsets.only(left: 5,top:12),
                          child: Column(
                            children: [
                              Image(image: AssetImage('assets/immigration 64.png'),height: 90,width: 90,),
                              SizedBox(height: 2,),
                              Padding(padding: EdgeInsets.only(left: 5)),
                              Text(
                                'Attendance',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 11)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegScreen()),
                        );
                      },
                    child:Container(
                      width: 165,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), // Set border radius
                        color: Color(0xff022F40),
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding:  EdgeInsets.only(left: 5,top:12),
                          child: Column(
                            children: [
                              Image(image: AssetImage('assets/notice 64.png'),height: 90,width: 90,),
                              SizedBox(height: 2,),
                              Padding(padding: EdgeInsets.only(left: 5)),
                              Text(
                                'Notice',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),),
                    SizedBox(width: 0,),
                    Padding(padding: EdgeInsets.only(left: 11)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegScreen()),
                        );
                      },
                    child: Container(
                      width: 164,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), // Set border radius
                        color: Color(0xff022F40),
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding:  EdgeInsets.only(left: 5,top:12),
                          child: Column(
                            children: [
                              Image(image: AssetImage('assets/work-schedule 64.png'),height: 90,width: 90,),
                              SizedBox(height: 2,),
                              Padding(padding: EdgeInsets.only(left: 5)),
                              Text(
                                'Daily Work',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),),
                  ],
                ),
              ],
          
            ),
          ),
        ),
      ),
    );
  }
}
