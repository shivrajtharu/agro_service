import 'package:flutter/material.dart';
import 'package:household/models/colors.dart';
import 'package:household/pages/Notification_view.dart';
import 'package:household/pages/account_page.dart';
import 'package:household/pages/calculator_page.dart';
import 'package:household/pages/calendar_page.dart';
import 'package:household/pages/customer_page.dart';
import 'package:household/pages/drawer.dart';
import 'package:household/pages/farming_page.dart';
import 'package:household/pages/settings_page.dart';
import 'package:household/pages/share_page.dart';
import 'package:household/pages/time_sheets.dart';
import 'package:household/pages/tractor_Page.dart';
import 'package:household/pages/workers_page.dart';
import 'package:household/ui/login_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    SingleChildScrollView();
    return Scaffold(
      backgroundColor: CustomColors.backgroundcolor,
         body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            child: GridView(children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (
                        context) => AccountPage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/account.png'),
                          fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Accounts', style: TextStyle(color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (
                        context) => WorkersPage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/workers.png'),
                          fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Workers', style: TextStyle(color: Colors.black,
                            fontSize: 27,
                            fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (
                        context) => TractorPage()));
                  },
                  child: Container(decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/tractor.png'),
                          fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Tractor', style: TextStyle(color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (
                        context) => TimeSheetsPage()));
                  },
                  child: Container(decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/timesheets.png'),
                          fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Time sheets', style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (
                        context) => FarmingPage()));
                  },
                  child: Container(decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/farming.png'),
                          fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Farming', style: TextStyle(color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (
                        context) => CustomerPage()));
                  },
                  child: Container(decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/customer.png'),
                          fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Customers', style: TextStyle(color: Colors.black,
                            fontSize: 27,
                            fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (
                        context) => CalendarsPage()));
                  },
                  child: Container(decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/calendar.png'),
                          fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Calendar', style: TextStyle(color: Colors.black,
                            fontSize: 27,
                            fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (
                        context) => CalculatorPage()));
                  },
                  child: Container(decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/calculator.png'),
                          fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Calculator', style: TextStyle(color: Colors.black,
                            fontSize: 27,
                            fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 0),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Household',style: TextStyle(fontWeight: FontWeight.bold)),
            // centerTitle: true,
          foregroundColor: Colors.black,
           leadingWidth: 60,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(),
              child: IconButton(
                  icon: Icon(Icons.notifications, size: 28,),
                onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>NotificationPage()));
                },
              ),
            ),
               Padding(
                 padding: const EdgeInsets.only(),
                 child: IconButton(
                    icon: Icon(Icons.search, size: 30,),
                  onPressed: () {
                    showSearch(context: context, delegate: WorkerSearchDelegate());
                  },
              ),
               ),
               PopupMenuButton<int>(
                color: Colors.white,
                onSelected: (item) => onSelected(context, item),
                itemBuilder: (context) =>
                [
                  PopupMenuItem<int>(
                    value: 0,
                    child: Row(
                      children: [
                        Icon(Icons.settings, color: Colors.black,),
                        Text('Settings'),
                      ],
                    ),
                  ),
                  PopupMenuItem<int>(
                    value: 1,
                    child: Row(
                      children: [
                        Icon(Icons.share, color: Colors.black,),
                        Text('Share'),
                      ],
                    ),
                  ),
                  PopupMenuDivider(),
                  PopupMenuItem<int>(
                    value: 2,
                    child: Row(
                      children: [
                        Icon(Icons.logout, color: Colors.black,),
                        Text('logout'),
                      ],
                    ),
                  )
                ],
              ),
          ],
        ),
       drawer:MyDrawer(),
    );
  }

  onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SettingsPage()),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SharePage()),
        );
        break;
      case 2:
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => LoginPage()),
              (route) => false,
        );
    }
  }
}

class WorkerSearchDelegate extends SearchDelegate{
  List<String>searchResults = [
   'Accounts',
    'Workers',
    'Tractor',
    'Time sheets',
    'Farming',
    'Customers',
    'Calendar',
    'Calculator',

  ];

  // String? get username => null;
  @override
  List<Widget>? buildActions(BuildContext context)=>[
    IconButton(
        icon:Icon(Icons.clear),
        onPressed: () {
          if (query.isEmpty) {
            close(context, WorkersPage());
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
    onPressed: ()=>close(context,WorkersPage()),
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
