import 'package:flutter/material.dart';

class InAttendance extends StatefulWidget {
  const InAttendance({Key? key}) : super(key: key);

  @override
  State<InAttendance> createState() => _InAttendanceState();
}

class _InAttendanceState extends State<InAttendance> {
  late TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

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
            "Daily In Attendance",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          actions: [
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 5),
            Icon(Icons.notifications, color: Colors.white),
            SizedBox(width: 5),
          ],
          backgroundColor: Color(0xff022F40),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 8)),
              Container(
                width: 340,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), // Set border radius
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xff022F40), // Set border color here
                    width: 2, // Set border width here
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18), // Clip image to the same border radius as container
                  child: Image.asset(
                    'assets/Attendance-Management-System.png', // Replace 'your_image.png' with your asset image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Text("Daily In Attendance", style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff022F40),fontSize: 30),),
              SizedBox(height: 5,),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  readOnly: true, // Set the text field as read-only
                  controller: TextEditingController(
                    // Use TextEditingController to control the text field value
                    text: selectedTime.format(context), // Initialize with selected time
                  ),
                  decoration: InputDecoration(
                    hintText: 'Select Time',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onTap: () {
                    _selectTime(context); // Call _selectTime method when the text field is tapped
                  },
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        print("Submitted");
                      },

                      child: Text('Submit'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
