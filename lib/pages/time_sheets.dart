import 'package:flutter/material.dart';

class Timesheet {
  final String date;
  final String startTime;
  final String endTime;
  final String description;

  Timesheet(
      {required this.date,
        required this.startTime,
        required this.endTime,
        required this.description});
}

class TimeSheetsPage extends StatefulWidget {
  @override
  _TimeSheetsPageState createState() => _TimeSheetsPageState();
}

class _TimeSheetsPageState extends State<TimeSheetsPage> {
  List<Timesheet> _timesheets = [];

  final _formKey = GlobalKey<FormState>();
  final _dateController = TextEditingController();
  final _startTimeController = TextEditingController();
  final _endTimeController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TimeSheets'),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: _timesheets.length,
        itemBuilder: (context, index) {
          final timesheet = _timesheets[index];
          return ListTile(
            title: Text(timesheet.date),
            subtitle: Text('${timesheet.startTime} - ${timesheet.endTime}'),
            trailing: Text(timesheet.description),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Add Timesheet'),
                content: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextFormField(
                        controller: _dateController,
                        decoration: InputDecoration(labelText: 'Date'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a date';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: _startTimeController,
                        decoration: InputDecoration(labelText: 'Start Time'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a start time';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: _endTimeController,
                        decoration: InputDecoration(labelText: 'End Time'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter an end time';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: _descriptionController,
                        decoration: InputDecoration(labelText: 'Description'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a description';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  ElevatedButton(
                    child: Text('Add'),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final timesheet = Timesheet(
                          date: _dateController.text,
                          startTime: _startTimeController.text,
                          endTime: _endTimeController.text,
                          description: _descriptionController.text,
                        );
                        setState(() {
                          _timesheets.add(timesheet);
                        });
                        Navigator.of(context).pop();
                      }
                    },
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}