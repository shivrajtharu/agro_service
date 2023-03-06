import 'package:flutter/material.dart';
import 'package:household/owners/magnesium_owners_page.dart';
import 'package:household/owners/organic_owners_page.dart';
import 'package:household/owners/phosphorus_owners_page.dart';
import 'package:household/owners/sulphur_owners_page.dart';
import 'package:household/owners/urea_owners_page.dart';
import '../owners/calcium_owners_page.dart';
import '../owners/dap_owners_page.dart';
import '../owners/micronutrient_owners_page.dart';
import '../owners/nitrogen_owners_page.dart';
import '../owners/potassium_owners_page.dart';
class FertilizerTypesPage extends StatefulWidget {
  const FertilizerTypesPage({Key? key}) : super(key: key);

  @override
  State<FertilizerTypesPage> createState() => _FertilizerTypesPageState();
}

class _FertilizerTypesPageState extends State<FertilizerTypesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("Types of Fertilizers", style: TextStyle(
              fontWeight: FontWeight.bold)
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
        body: SingleChildScrollView(
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
                                      builder: (context) => OrganicOwnersPage(),));
                                  },
                                  child: ListTile(
                                    title: Text('Organic Fertilizer'),
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
                                      builder: (context) =>  UreaOwnersPage(),));
                                  },
                                  child: ListTile(
                                    title: Text('Urea'),
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
                                      builder: (context) => DapOwnersPage(),));
                                  },
                                  child: ListTile(
                                    title: Text('DAP'),
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
                                      builder: (context) => PhosphorousOwnersPage(),));
                                  },
                                  child: ListTile(
                                    title: Text('phosphorus Fertilizer'),
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
                                      builder: (context) => PotassiumOwnersPage(),));
                                  },
                                  child: ListTile(
                                    title: Text('Potash Fertilizer'),
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
                                      builder: (context) => MicronutrientOwnersPage(),));
                                  },
                                  child: ListTile(
                                    title: Text('Micronutrient'),
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
                                      builder: (context) => CalciumOwnersPage(),));
                                  },
                                  child: ListTile(
                                    title: Text('Calcium Fertilizer'),
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
                                      builder: (context) => SulphurOwnersPage(),));
                                  },
                                  child: ListTile(
                                    title: Text('Sulphur Fertilizer'),
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
                                      builder: (context) => MagnesiumOwnersPage(),));
                                  },
                                  child: ListTile(
                                    title: Text('Magnesium Fertilizer'),
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
                                      builder: (context) => NitrogenOwnersPage(),));
                                  },
                                  child: ListTile(
                                    title: Text('Nitrogen Fertilizer'),
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
            close(context, FertilizerTypesPage());
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
    onPressed: ()=>close(context,FertilizerTypesPage()),
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
