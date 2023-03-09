import 'package:flutter/material.dart';

import '../ui/home.dart';
import 'fertilizer_owners_user_page.dart';

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
class FertilizerOwnersPage extends StatefulWidget {
  const FertilizerOwnersPage({Key? key}) : super(key: key);

  @override
  State<FertilizerOwnersPage> createState() => _FertilizerOwnersPageState();
}

class _FertilizerOwnersPageState extends State<FertilizerOwnersPage> {
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
          leading: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (
                    context) => Home()));
              },
              child: Icon(Icons.home,size: 30,)),
          title: Text("Fertilizer Owners",style: TextStyle(fontWeight: FontWeight.bold)
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FertilizerOwnersUsersPage(user:user,),));
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
            close(context, FertilizerOwnersPage());
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
    onPressed: ()=>close(context,FertilizerOwnersPage()),
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
