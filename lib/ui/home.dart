import 'package:flutter/material.dart';
import 'package:household/fertilizers/fertilizer_owners_page.dart';
import 'package:household/machines/machine_owners_page.dart';
import 'package:household/models/colors.dart';
import 'package:household/data/Notification_view.dart';
import 'package:household/pages/calculator_page.dart';
import 'package:household/pages/calendar_page.dart';
import 'package:household/widget/drawer.dart';
import 'package:household/plots/plots_owners_page.dart';
import 'package:household/settings_page.dart';
import 'package:household/pages/share_page.dart';
import 'package:household/pages/time_sheets.dart';
import 'package:household/ui/login_page.dart';
import '../farmers/farmer_page.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/home.png'),fit:BoxFit.cover)),
      child: Scaffold(
        backgroundColor: CustomColors.backgroundcolor,
           body:
           Column(
             children: [
                 Container(
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                 margin:EdgeInsets.all(5),
                 alignment: Alignment.center,
                 constraints: BoxConstraints.expand(height: 225),
                 /*child: MySwiper(
                   imageUrls: [
                     'https://images.unsplash.com/photo-1622383563227-04401ab4e5ea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGZhcm1pbmd8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                     'https://images.unsplash.com/photo-1627920769842-6887c6df05ca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGZhcm1pbmd8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                     'https://images.unsplash.com/photo-1563514227147-6d2ff665a6a0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGZhcm1pbmd8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                     'https://images.unsplash.com/photo-1625246333195-78d9c38ad449?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZmFybWluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                     'https://images.unsplash.com/photo-1614977645968-6db1d7798ac7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTh8fG1hY2hpbmVzJTIwb24lMjBmYXJtaW5nJTIwZmllbGR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                     'https://images.unsplash.com/photo-1659021181759-2f987070b6c9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTJ8fG1hY2hpbmVzJTIwb24lMjBmYXJtaW5nJTIwZmllbGR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                     'https://images.unsplash.com/photo-1532929900024-6413d2ed39c8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTgzfHxmYXJtZXJzJTIwb24lMjBmYXJtaW5nJTIwZmllbGR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                   ],
                 ),*/
               ),
               Padding(
                padding: const EdgeInsets.only(top:10),
                   child: Container(
                     height: 400,
                      child: GridView(children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (
                                  context) => FarmerPage()));
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/workers.png'),
                                        fit: BoxFit.cover
                                    ),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 20,
                                  child: Text('Farmers', style: TextStyle(color: Colors.white,
                                    fontSize: 15,),),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (
                                  context) => MachineOwners()));
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/machines.png'),
                                        fit: BoxFit.cover
                                    ),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 20,
                                  child: Text('Machines', style: TextStyle(color: Colors.white,)),
                                )
                              ],
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
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/timesheets.png'),
                                        fit: BoxFit.cover
                                    ),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 20,
                                  child: Text('Time sheets', style: TextStyle(color: Colors.white,
                                    fontSize: 15,)),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (
                                  context) => PlotOwners()));
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/plots.png'),
                                        fit: BoxFit.cover
                                    ),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 20,
                                  child: Text('Plots', style: TextStyle(color: Colors.white,
                                    fontSize: 15,)),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (
                                  context) => FertilizerOwnersPage()));
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/fertilizers.png'),
                                        fit: BoxFit.cover
                                    ),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 20,
                                  child: Text('Fertilizers', style: TextStyle(color: Colors.white,
                                    fontSize: 15,)),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (
                                  context) => CalendarPage()));
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/calendar.png'),
                                        fit: BoxFit.cover
                                    ),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 20,
                                  child: Text('Calendar', style: TextStyle(color: Colors.white,
                                    fontSize: 15,)),
                                )
                              ],
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
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/calculator.png'),
                                        fit: BoxFit.cover
                                    ),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 20,
                                  child: Text('Calculator', style: TextStyle(color: Colors.white,
                                    fontSize: 15,)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, mainAxisSpacing:5),
                      ),
                    ),
          ),
             ],
           ),
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: Text('Agro Service',style: TextStyle(fontWeight: FontWeight.bold)),
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
                          SizedBox(width: 7.0,),
                          Text('Settings'),
                        ],
                      ),
                    ),
                    PopupMenuItem<int>(
                      value: 1,
                      child: Row(
                        children: [
                          Icon(Icons.share, color: Colors.black,),
                          SizedBox(width: 7.0,),
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
                          SizedBox(width: 7.0,),
                          Text('logout'),
                        ],
                      ),
                    )
                  ],
                ),
            ],
          ),
         drawer:MyDrawer(),
      ),
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
    'Farmers',
    'Machines',
    'Time sheets',
    'Plots',
    'Fertilizers',
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
            close(context, FarmerPage());
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
    onPressed: ()=>close(context,FarmerPage()),
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
/*class MySwiper extends StatelessWidget {
  final List<String> imageUrls;

  MySwiper({required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return Swiper(
      autoplay: true,
      itemBuilder: (context, index) {
        return Image.network(
          imageUrls[index],
          fit: BoxFit.cover,
        );
      },
      viewportFraction: 0.7,
      scale: 0.7,
      itemCount: imageUrls.length,
    );
  }
}*/
