import 'package:flutter/material.dart';

class ShortLeave extends StatefulWidget {
  const ShortLeave({Key? key}) : super(key: key);

  @override
  State<ShortLeave> createState() => _ShortLeaveState();
}

class _ShortLeaveState extends State<ShortLeave> {
  String? _selectedItem;
  TimeOfDay? _fromTime;
  TimeOfDay? _toTime;

  Future<void> _selectFromTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != _fromTime) {
      setState(() {
        _fromTime = picked;
      });
    }
  }

  Future<void> _selectToTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != _toTime) {
      setState(() {
        _toTime = picked;
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
            "Short Leave",
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
              Padding(padding: EdgeInsets.only(top: 6)),
              Container(
                width: 340,
                height: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), // Set border radius
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black, // Set border color here
                    width: 2, // Set border width here
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18), // Clip image to the same border radius as container
                  child: Image.asset(
                    'assets/ShortLeave.jpg', // Replace 'your_image.png' with your asset image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 165,
                    child: TextFormField(
                      readOnly: true,
                      onTap: () => _selectFromTime(context),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.watch_later_outlined),
                        labelText: 'From',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      controller: _fromTime == null
                          ? null
                          : TextEditingController(
                        text:
                        '${_fromTime!.hour}:${_fromTime!.minute}',
                      ),
                    ),
                  ),
                  Container(
                    width: 165,
                    child: TextFormField(
                      readOnly: true,
                      onTap: () => _selectToTime(context),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.watch_later_outlined),
                        labelText: 'To',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      controller: _toTime == null
                          ? null
                          : TextEditingController(
                        text: '${_toTime!.hour}:${_toTime!.minute}',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: 340, // Set the width you desire
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter Reason',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 340, // Set the width you desire
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Emergency Contact',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.call),
                  ),
                ),
              ),
              SizedBox(height: 40),
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


