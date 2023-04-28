import 'package:flutter/material.dart';
import 'package:household/plots/plot_details_page.dart';
import 'package:http/http.dart' as http;
import '../models/post_model.dart';

class PlotOwners extends StatefulWidget {
  @override
  _PlotOwnersState createState() => _PlotOwnersState();
}

class _PlotOwnersState extends State<PlotOwners> {
  List<Datum>? _data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('http://localhost:8000/home/plot/fetch'));
    final postModel = postModelFromJson(response.body);
    setState(() {
      _data = postModel.data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Plot Owners",style: TextStyle(fontWeight: FontWeight.bold)
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
        actions:<Widget> [
          IconButton(
            icon: Padding(
              padding: const EdgeInsets.only(right:40),
              child: Icon(Icons.search,size: 30,),
            ),
            onPressed: () {
              showSearch(context: context, delegate: MYSearchDelegate(),);
            },
          )
        ],
      ),
      body: _data == null
          ? Center(
        child: CircularProgressIndicator(),
      )
          : ListView.builder(
        itemCount: _data?.length,
        padding: EdgeInsets.only(top:5,bottom: 5),
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .04,vertical: 4),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 0.2,
            color: Colors.grey.shade100,
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                child: Text(getUserCharacter(_data![index].fullname), style: TextStyle(color: Colors.white)),
              ),
              trailing: getStatusContainer(_data![index].active_status),
              isThreeLine: true,
              title: Text(_data![index].fullname),
              subtitle:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_data![index].email),
                  Text(_data![index].address),
                ],
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PlotDetails(plotData: _data![index])),
                );
              },
            ),
          );
        },
      ),
    );
  }

  static getStatusContainer(bool status){
    if(!status){
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.0),
          color: Colors.red,
        ),
        child: Text('Inactive', style: TextStyle(color: Colors.white,),
        ),
      );
    }else{
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.0),
          color: Colors.green,
        ),
        child: Text('Active', style: TextStyle(color: Colors.white,),
        ),
      );
    }
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
class MYSearchDelegate extends SearchDelegate{
  List<String>searchResults = [
    'Shivraj Tharu',
    'Sulav Dahal',
    'Dilip Chaudhary',
    'Raj Tharu',
    'Anil Singh Dhami',
    'Utsav Gautam',
    'Abisekh Giri',
    'Ritesh Yadav',
    'Ajay Tharu',
    'Bijay Tharu',

  ];

  // String? get username => null;
  @override
  List<Widget>? buildActions(BuildContext context)=>[
    IconButton(
        icon:Icon(Icons.clear),
        onPressed: () {
          if (query.isEmpty) {
            close(context, PlotOwners());
          } else {
            query = '';
          }
        }
    ),
  ];
  // TODO: implement buildActions

  @override
  Widget? buildLeading(BuildContext context)=>IconButton(
    icon: Icon(Icons.arrow_back),
    onPressed: ()=>close(context,PlotOwners()),
  );
  // TODO: implement buildLeading

  @override
  Widget buildResults(BuildContext context)=>Center(
    child: Text(query,style: TextStyle(fontSize: 64,fontWeight:FontWeight.bold),),
  );
  // TODO: implement buildResults

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String>suggestions = searchResults.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();

    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context,index) {
          final suggestion = suggestions[index];

          return ListTile(
            title: Text(suggestion),
            onTap: () {
              query = suggestion;
              showResults(context);
            },
          );
        }
    );
    // TODO: implement buildSuggestions
  }
}


/*import 'package:flutter/material.dart';
import 'package:household/plots/plot_details_page.dart';

import '../ui/home.dart';

class User{
  final String username;
  final String email;
  final bool active_status;
  final String urlAvatar;

  const User({
    required this.username,
    required this.email,
    required this.active_status,
    required this.urlAvatar,

  });
}
class PlotsOwnersPage extends StatefulWidget {
  const PlotsOwnersPage({Key? key}) : super(key: key);

  @override
  State<PlotsOwnersPage> createState() => _PlotsOwnersPageState();
}

class _PlotsOwnersPageState extends State<PlotsOwnersPage> {
  List<User> users = [
    const User(
        username :'Shivraj Tharu',
        email:'shivrajtharu62@gmail.com\nhourly,Rs.500\n'
            'daily,Rs.1000',
        active_status: true,
        urlAvatar:'https://wallpaperaccess.com/full/749909.jpg'

    ),
    const User(
        username :'Dilip Chaudhary',
        email:'diliptharu62@gmail.com\nhourly,Rs.500\n'
            'daily,Rs.1000',
        active_status: false,
        urlAvatar:'https://wallpaperaccess.com/full/749909.jpg'
    ),
    const User(
        username :'Raj Tharu',
        email:'rajtharu62@gmail.com\nhourly,Rs.500\n'
            'daily,Rs.1000',
        active_status: true,
        urlAvatar:'https://cn.i.cdn.ti-platform.com/content/2145/ekans/showpage/sa/ekans-show-square.e6b074b9.png'
    ),
    const User(
        username :'Anil Singh Dhami',
        email:'dhamianil62@gmail.com\nhourly,Rs.500\n'
            'daily,Rs.1000',
        active_status: false,
        urlAvatar:' https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrU7tCyw4chOsfu_ntme8GOlc5Ll15jIybHg&usqp=CAU'
    ),
    const User(
        username :'Sulav Dahal',
        email:'dahalsulav62@gmail.com\nhourly,Rs.500\n'
            'daily,Rs.1000',
        active_status: true,
        urlAvatar:'https://cn.i.cdn.ti-platform.com/content/2017/ben-10/showpage/sa/b10_sq.28167bbe.png'
    ),
    const User(
        username :'Utsav Gautam',
        email:'gautamutsav62@gmail.com\nhourly,Rs.500\n'
            'daily,Rs.1000',
        active_status: true,
        urlAvatar:'https://cn.i.cdn.ti-platform.com/content/2145/ekans/showpage/sa/ekans-show-square.e6b074b9.png'
    ),
    const User(
        username :'Abisekh Giri',
        email:'giriabisekh62@gmail.com\nhourly,Rs.500\n'
            'daily,Rs.1000',
        active_status: false,
        urlAvatar:' https://cn.i.cdn.ti-platform.com/content/2017/ben-10/showpage/sa/b10_sq.28167bbe.png'
    ),
    const User(
        username :'Ritesh Yadav',
        email:'yadavritesh62@gmail.com\nhourly,Rs.500\n'
            'daily,Rs.1000',
        active_status: true,
        urlAvatar:' https://cn.i.cdn.ti-platform.com/content/2017/ben-10/showpage/sa/b10_sq.28167bbe.png'
    ),
    const User(
        username :'Ajay Tharu',
        email:'tharuajay62@gmail.com\nhourly,Rs.500\n'
            'daily,Rs.1000',
        active_status: true,
        urlAvatar:' https://cn.i.cdn.ti-platform.com/content/2017/ben-10/showpage/sa/b10_sq.28167bbe.png'
    ),
    const User(
        username :'Bijay Tharu',
        email:'tharubijay62@gmail.com\nhourly,Rs.500\n'
            'daily,Rs.1000',
        active_status: true,
        urlAvatar:'https://cn.i.cdn.ti-platform.com/content/2145/ekans/showpage/sa/ekans-show-square.e6b074b9.png'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Plots Owners",style: TextStyle(fontWeight: FontWeight.bold)
          ),
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.amber,
          actions:<Widget> [
            IconButton(
              icon: Padding(
                padding: const EdgeInsets.only(right:40),
                child: Icon(Icons.search,size: 30,),
              ),
              onPressed: () {
                showSearch(context: context, delegate: MYSearchDelegate(),);
              },
            )
          ],
        ),
        body: Stack(
          children: [
            ListView.builder(
                itemCount:users.length,
                padding: EdgeInsets.only(top:5),
                physics: BouncingScrollPhysics(),
                itemBuilder:(context,index) {
                  final user = users[index];
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .04,vertical: 4),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    elevation: 0.2,
                    color: Colors.grey.shade100,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PlotsOwnersUserPage(user:user,),));
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          child: Text(getUserCharacter(user.username), style: TextStyle(color: Colors.white)),
                        ),

                        title: Text(user.username),
                        subtitle: Text(user.email,),
                        isThreeLine: true,
                        // dense: true,
                        trailing: getStatusContainer(user.active_status),
                      ),
                    ),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }

  static getStatusContainer(bool status){
    if(!status){
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.0),
          color: Colors.red,
        ),
        child: Text('Inactive', style: TextStyle(color: Colors.white,),
        ),
      );
    }else{
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.0),
          color: Colors.green,
        ),
        child: Text('Active', style: TextStyle(color: Colors.white,),
        ),
      );
    }
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

class MYSearchDelegate extends SearchDelegate{
  List<String>searchResults = [
    'Shivraj Tharu',
    'Sulav Dahal',
    'Dilip Chaudhary',
    'Raj Tharu',
    'Anil Singh Dhami',
    'Utsav Gautam',
    'Abisekh Giri',
    'Ritesh Yadav',
    'Ajay Tharu',
    'Bijay Tharu',

  ];

  // String? get username => null;
  @override
  List<Widget>? buildActions(BuildContext context)=>[
    IconButton(
        icon:Icon(Icons.clear),
        onPressed: () {
          if (query.isEmpty) {
            close(context,PlotsOwnersPage());
          } else {
            query = '';
          }
        }
    ),
  ];
  // TODO: implement buildActions

  @override
  Widget? buildLeading(BuildContext context)=>IconButton(
    icon: Icon(Icons.arrow_back),
    onPressed: ()=>close(context,PlotsOwnersPage()),
  );
  // TODO: implement buildLeading

  @override
  Widget buildResults(BuildContext context)=>Center(
    child: Text(query,style: TextStyle(fontSize: 64,fontWeight:FontWeight.bold),),
  );
  // TODO: implement buildResults

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String>suggestions = searchResults.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();

    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context,index) {
          final suggestion = suggestions[index];

          return ListTile(
            title: Text(suggestion),
            onTap: () {
              query = suggestion;
              showResults(context);
            },
          );
        }
    );
    // TODO: implement buildSuggestions
  }
}*/



