import 'package:flutter/material.dart';
import 'package:household/pages/account_page.dart';
import 'package:household/pages/agricultural_tools_owners_page.dart';
import 'package:household/pages/balers_owners_page.dart';
import 'package:household/pages/fertilizer_spreader_owner_page.dart';
import 'package:household/pages/mini_tractors_owners_page.dart';
import 'package:household/pages/pesticides_spreader_owners_page.dart';
import 'package:household/pages/plows_owners_page.dart';
import 'package:household/pages/pump_sets_owners_page.dart';
import 'package:household/pages/rotary_owners_page.dart';
import 'package:household/pages/tractor_owners_page.dart';
import 'package:household/pages/trailers_owners_page.dart';
import 'Seeders_owners_page.dart';
import 'combine_harvester_owner_page.dart';

class MachineTypesPage extends StatefulWidget {
  const MachineTypesPage({Key? key}) : super(key: key);

  @override
  State<MachineTypesPage> createState() => _MachineTypesPageState();
}

class _MachineTypesPageState extends State<MachineTypesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
              "Types of Machines", style: TextStyle(fontWeight: FontWeight.bold)
          ),
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.amber,
          actions: <Widget>[
            IconButton(
              icon: Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Icon(Icons.search, size: 30,),
              ),
              onPressed: () {
                showSearch(context: context, delegate: MYSearchDelegate(),);
              },
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 655,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Stack(
                      children: [
                        Column(
                          children: [
                            Card(
                              margin: EdgeInsets.symmetric(horizontal: MediaQuery
                                  .of(context)
                                  .size
                                  .width * .04, vertical: 4),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              elevation: 0.2,
                              color: Colors.grey.shade100,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => TractorOwnersPage(),));
                                },
                                child: ListTile(
                                  title: Text('Tractor'),
                                  trailing: Container(
                                    height: 40,
                                    width: 40,
                                    decoration:BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(30)
                                    ),
                                      child: Icon(Icons.arrow_forward_ios_rounded)),
                                ),
                              ),
                            ),
                        Card(
                          margin: EdgeInsets.symmetric(horizontal: MediaQuery
                              .of(context)
                              .size
                              .width * .04, vertical: 4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 0.2,
                          color: Colors.grey.shade100,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>  MiniTractorsOwnersPage(),));
                            },
                            child: ListTile(
                              title: Text('Mini Tractor'),
                              trailing: Container(
                                  height: 40,
                                  width: 40,
                                  decoration:BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Icon(Icons.arrow_forward_ios_rounded)),
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(horizontal: MediaQuery
                              .of(context)
                              .size
                              .width * .04, vertical: 4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 0.2,
                          color: Colors.grey.shade100,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => RotaryOwnersPage(),));
                            },
                            child: ListTile(
                              title: Text('Rotary'),
                              trailing: Container(
                                  height: 40,
                                  width: 40,
                                  decoration:BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Icon(Icons.arrow_forward_ios_rounded)),
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(horizontal: MediaQuery
                              .of(context)
                              .size
                              .width * .04, vertical: 4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 0.2,
                          color: Colors.grey.shade100,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CombineHarvesterOwnerPage(),));
                            },
                            child: ListTile(
                              title: Text('Combine harvester'),
                              trailing: Container(
                                  height: 40,
                                  width: 40,
                                  decoration:BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Icon(Icons.arrow_forward_ios_rounded)),
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(horizontal: MediaQuery
                              .of(context)
                              .size
                              .width * .04, vertical: 4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 0.2,
                          color: Colors.grey.shade100,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PumpSetsOwnersPage(),));
                            },
                            child: ListTile(
                              title: Text('Pumpsets'),
                              trailing: Container(
                                  height: 40,
                                  width: 40,
                                  decoration:BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Icon(Icons.arrow_forward_ios_rounded)),
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(horizontal: MediaQuery
                              .of(context)
                              .size
                              .width * .04, vertical: 4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 0.2,
                          color: Colors.grey.shade100,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => FertilizerSpreaderOwnerPage(),));
                            },
                            child: ListTile(
                              title: Text('Fertilizer Spreader'),
                              trailing: Container(
                                  height: 40,
                                  width: 40,
                                  decoration:BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Icon(Icons.arrow_forward_ios_rounded)),
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(horizontal: MediaQuery
                              .of(context)
                              .size
                              .width * .04, vertical: 4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 0.2,
                          color: Colors.grey.shade100,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PesticidesSpreaderOwnersPage(),));
                            },
                            child: ListTile(
                              title: Text('Pesticides Spreader'),
                              trailing: Container(
                                  height: 40,
                                  width: 40,
                                  decoration:BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Icon(Icons.arrow_forward_ios_rounded)),
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(horizontal: MediaQuery
                              .of(context)
                              .size
                              .width * .04, vertical: 4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 0.2,
                          color: Colors.grey.shade100,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PlowsOwnersPage(),));
                            },
                            child: ListTile(
                              title: Text('Plows'),
                              trailing: Container(
                                  height: 40,
                                  width: 40,
                                  decoration:BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Icon(Icons.arrow_forward_ios_rounded)),
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(horizontal: MediaQuery
                              .of(context)
                              .size
                              .width * .04, vertical: 4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 0.2,
                          color: Colors.grey.shade100,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SeedersOwnersPage(),));
                            },
                            child: ListTile(
                              title: Text('Seeders'),
                              trailing: Container(
                                  height: 40,
                                  width: 40,
                                  decoration:BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Icon(Icons.arrow_forward_ios_rounded)),
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(horizontal: MediaQuery
                              .of(context)
                              .size
                              .width * .04, vertical: 4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 0.2,
                          color: Colors.grey.shade100,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => BalersOwnersPage(),));
                            },
                            child: ListTile(
                              title: Text('Balers'),
                              trailing: Container(
                                  height: 40,
                                  width: 40,
                                  decoration:BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Icon(Icons.arrow_forward_ios_rounded)),
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(horizontal: MediaQuery
                              .of(context)
                              .size
                              .width * .04, vertical: 4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 0.2,
                          color: Colors.grey.shade100,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => TrailersOwnersPage(),));
                            },
                            child: ListTile(
                              title: Text('Wagons or Trailers'),
                              trailing: Container(
                                  height: 40,
                                  width: 40,
                                  decoration:BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Icon(Icons.arrow_forward_ios_rounded)),
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(horizontal: MediaQuery
                              .of(context)
                              .size
                              .width * .04, vertical: 4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 0.2,
                          color: Colors.grey.shade100,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AgriculturalToolsOwnersPage(),));
                            },
                            child: ListTile(
                              title: Text('Agricultural tools'),
                              trailing: Container(
                                  height: 40,
                                  width: 40,
                                  decoration:BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Icon(Icons.arrow_forward_ios_rounded)),
                            ),
                          ),
                        ),
                         ]
                        )
                      ]
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 55),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AccountPage(),));
                        },
                        child: Icon(Icons.account_balance_wallet,size: 30,)),
                  ),
                  SizedBox(width: 70,),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: InkWell(
                        onTap: (){

                        },
                        child: Icon(Icons.notes_rounded,size: 30,)),
                  ),
                  SizedBox(width: 70,),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: InkWell(
                        onTap: (){

                        },
                        child: Icon(Icons.add,size: 30,)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}

class MYSearchDelegate extends SearchDelegate{
  List<String>searchResults = [
    'Tractor',
    'Mini Tractor',
    'Rotatory',
    'Combine harvester',
    'Pumpsets',
    'Plows',
    'Fertilizer Spreader',
    'Pesticides Spreader',
    'Seeders',
    'Balers',
    'Wagons or Trailers',
    'Agricultural tools'
  ];

  // String? get username => null;
  @override
  List<Widget>? buildActions(BuildContext context)=>[
    IconButton(
        icon:Icon(Icons.clear),
        onPressed: () {
          if (query.isEmpty) {
            close(context, MachineTypesPage());
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
    onPressed: ()=>close(context,MachineTypesPage()),
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
