import 'package:flutter/material.dart';

class Leave extends StatefulWidget {
  const Leave({Key? key}) : super(key: key);

  @override
  State<Leave> createState() => _LeaveState();
}

class _LeaveState extends State<Leave> {
  String? _selectedItem;
  DateTime? _fromDate;
  DateTime? _toDate;

  Future<void> _selectFromDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _fromDate) {
      setState(() {
        _fromDate = picked;
      });
    }
  }

  Future<void> _selectToDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _toDate) {
      setState(() {
        _toDate = picked;
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
            "Leave",
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
                    'assets/Leave.png', // Replace 'your_image.png' with your asset image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black54), // Border decoration
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      hint: Text("Select Leave"),
                      value: _selectedItem,
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedItem = newValue;
                        });
                      },
                      items: <String>['Annual', 'Tour', 'CL', 'Other']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 340, // Set the width you desire
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter Leave Reason',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
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
                      onTap: () => _selectFromDate(context),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.calendar_month),
                        labelText: 'From',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      controller: _fromDate == null
                          ? null
                          : TextEditingController(
                        text:
                        '${_fromDate!.day}/${_fromDate!.month}/${_fromDate!.year}',
                      ),
                    ),
                  ),
                  Container(
                    width: 165,
                    child: TextFormField(
                      readOnly: true,
                      onTap: () => _selectFromDate(context),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.calendar_month),
                        labelText: 'To',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      controller: _fromDate == null
                          ? null
                          : TextEditingController(
                        text:
                        '${_fromDate!.day}/${_fromDate!.month}/${_fromDate!.year}',
                      ),
                    ),
                  ),
                ],
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

