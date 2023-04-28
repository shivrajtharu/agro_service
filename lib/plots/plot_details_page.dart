import 'package:flutter/material.dart';
import '../models/post_model.dart';

class PlotDetails extends StatelessWidget {
  final Datum plotData;
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _itemController = TextEditingController();
  final _addressController = TextEditingController();
  final _contactController = TextEditingController();
  PlotDetails({required this.plotData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(plotData.fullname),
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 60,
                    child: Text(getUserCharacter(plotData.fullname),
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white
                        )),
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  '${plotData.fullname}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '${plotData.email}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                Text(
                  '${plotData.address}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                Text(
                  '${plotData.active_status ? 'Active' : 'Inactive'}',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              color: Colors.grey,
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/cover_topic.png'),fit:BoxFit.cover)
                ),
                child: Text('Our Services',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              color: Colors.grey,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height:300,
                      margin: EdgeInsets.only(top: 5,bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                            width: 180,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/plot1.png'),fit: BoxFit.cover)
                            ),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            child: Column(
                              children: [
                                Text('Plot A',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text('daily,Rs.500\nhourly,Rs.100',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                ElevatedButton(onPressed: (){
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text('Send Details'),
                                        content: Form(
                                          key: _formKey,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              TextFormField(
                                                controller: _nameController,
                                                decoration: InputDecoration(labelText: 'Name'),
                                                validator: (value) {
                                                  if (value == null || value.isEmpty) {
                                                    return 'Please enter your name';
                                                  }
                                                  return null;
                                                },
                                              ),
                                              TextFormField(
                                                controller: _itemController,
                                                decoration: InputDecoration(labelText: 'ItemName'),
                                                validator: (value) {
                                                  if (value == null || value.isEmpty) {
                                                    return 'Please enter your ItemName';
                                                  }
                                                  return null;
                                                },
                                              ),
                                              TextFormField(
                                                controller: _addressController,
                                                decoration: InputDecoration(labelText: 'Address'),
                                                validator: (value) {
                                                  if (value == null || value.isEmpty) {
                                                    return 'Please enter your address';
                                                  }
                                                  return null;
                                                },
                                              ),
                                              TextFormField(
                                                controller: _contactController,
                                                decoration: InputDecoration(labelText: 'Contact'),
                                                validator: (value) {
                                                  if (value == null || value.isEmpty) {
                                                    return 'Please enter your contact';
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
                                            child: Text('Confirm'),
                                            onPressed: () {

                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }, child: Text('Send Request')),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height:300,
                      margin: EdgeInsets.only(top: 5,bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                            width: 180,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/plot2.png'),fit: BoxFit.cover)
                            ),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            child: Column(
                              children: [
                                Text('Plot B',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text('daily,Rs.500\nhourly,Rs.100',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                ElevatedButton(onPressed: (){
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text('Send Details'),
                                        content: Form(
                                          key: _formKey,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              TextFormField(
                                                controller: _nameController,
                                                decoration: InputDecoration(labelText: 'Name'),
                                                validator: (value) {
                                                  if (value == null || value.isEmpty) {
                                                    return 'Please enter your name';
                                                  }
                                                  return null;
                                                },
                                              ),
                                              TextFormField(
                                                controller: _itemController,
                                                decoration: InputDecoration(labelText: 'ItemName'),
                                                validator: (value) {
                                                  if (value == null || value.isEmpty) {
                                                    return 'Please enter your ItemName';
                                                  }
                                                  return null;
                                                },
                                              ),
                                              TextFormField(
                                                controller: _addressController,
                                                decoration: InputDecoration(labelText: 'Address'),
                                                validator: (value) {
                                                  if (value == null || value.isEmpty) {
                                                    return 'Please enter your address';
                                                  }
                                                  return null;
                                                },
                                              ),
                                              TextFormField(
                                                controller: _contactController,
                                                decoration: InputDecoration(labelText: 'Contact'),
                                                validator: (value) {
                                                  if (value == null || value.isEmpty) {
                                                    return 'Please enter your contact';
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
                                            child: Text('Confirm'),
                                            onPressed: () {

                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }, child: Text('Send Request')),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height:300,
                      margin: EdgeInsets.only(top: 5,bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                            width: 180,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/plot3.png'),fit: BoxFit.cover)
                            ),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            child: Column(
                              children: [
                                Text('Plot C',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text('daily,Rs.500\nhourly,Rs.100',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                ElevatedButton(onPressed: (){
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text('Send Details'),
                                        content: Form(
                                          key: _formKey,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              TextFormField(
                                                controller: _nameController,
                                                decoration: InputDecoration(labelText: 'Name'),
                                                validator: (value) {
                                                  if (value == null || value.isEmpty) {
                                                    return 'Please enter your name';
                                                  }
                                                  return null;
                                                },
                                              ),
                                              TextFormField(
                                                controller: _itemController,
                                                decoration: InputDecoration(labelText: 'ItemName'),
                                                validator: (value) {
                                                  if (value == null || value.isEmpty) {
                                                    return 'Please enter your ItemName';
                                                  }
                                                  return null;
                                                },
                                              ),
                                              TextFormField(
                                                controller: _addressController,
                                                decoration: InputDecoration(labelText: 'Address'),
                                                validator: (value) {
                                                  if (value == null || value.isEmpty) {
                                                    return 'Please enter your address';
                                                  }
                                                  return null;
                                                },
                                              ),
                                              TextFormField(
                                                controller: _contactController,
                                                decoration: InputDecoration(labelText: 'Contact'),
                                                validator: (value) {
                                                  if (value == null || value.isEmpty) {
                                                    return 'Please enter your contact';
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
                                            child: Text('Confirm'),
                                            onPressed: () {

                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }, child: Text('Send Request')),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height:300,
                      margin: EdgeInsets.only(top: 5,bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                            width: 180,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/plot5.png'),fit: BoxFit.cover)
                            ),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            child: Column(
                              children: [
                                Text('Plot D',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text('daily,Rs.500\nhourly,Rs.100',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                ElevatedButton(onPressed: (){
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text('Send Details'),
                                        content: Form(
                                          key: _formKey,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              TextFormField(
                                                controller: _nameController,
                                                decoration: InputDecoration(labelText: 'Name'),
                                                validator: (value) {
                                                  if (value == null || value.isEmpty) {
                                                    return 'Please enter your name';
                                                  }
                                                  return null;
                                                },
                                              ),
                                              TextFormField(
                                                controller: _itemController,
                                                decoration: InputDecoration(labelText: 'ItemName'),
                                                validator: (value) {
                                                  if (value == null || value.isEmpty) {
                                                    return 'Please enter your ItemName';
                                                  }
                                                  return null;
                                                },
                                              ),
                                              TextFormField(
                                                controller: _addressController,
                                                decoration: InputDecoration(labelText: 'Address'),
                                                validator: (value) {
                                                  if (value == null || value.isEmpty) {
                                                    return 'Please enter your address';
                                                  }
                                                  return null;
                                                },
                                              ),
                                              TextFormField(
                                                controller: _contactController,
                                                decoration: InputDecoration(labelText: 'Contact'),
                                                validator: (value) {
                                                  if (value == null || value.isEmpty) {
                                                    return 'Please enter your contact';
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
                                            child: Text('Confirm'),
                                            onPressed: () {

                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }, child: Text('Send Request')),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  static String getUserCharacter(String inputString, [int limitTo = 2]) {
    var buffer = StringBuffer();
    var wordList = inputString.trim().split(' ');

    if (inputString.isEmpty)
      return inputString;

    // Take first character if string is a single word
    if (wordList.length <= 1)
      return inputString.characters.first;

    /// Fallback to actual word count if
    /// expected word count is greater
    if (limitTo > wordList.length) {
      for (var i = 0; i < wordList.length; i++) {
        buffer.write(wordList[i][0]);
      }
      return buffer.toString();
    }

    // Handle all other cases
    for (var i = 0; i < (limitTo ?? wordList.length); i++) {
      buffer.write(wordList[i][0]);
    }
    return buffer.toString();
  }
}


