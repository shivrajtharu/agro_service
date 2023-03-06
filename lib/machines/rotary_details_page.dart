import 'package:flutter/material.dart';

class RotaryDetailsPage extends StatelessWidget {
  const RotaryDetailsPage({Key? key}) : super(key: key);
  Widget _categories({required String name}){
    return Container(
      height: 60,
      width: 200,
      decoration: BoxDecoration(
          color: Color(0xfffafbfd),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 50,
            width: 45,
            child: Icon(Icons.construction,color: Color(0xff47648c),),
          ),
          Text(name),
        ],
      ),
    );
  }
  Widget _bottomContainer({required Color color,required double price,
    required String name,required String title,required String subtitle,required String images}){
    return Container(
      height: 160,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 190,
            padding: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('\$ $price HR'),
                SizedBox(height: 10,),
                Text(name,style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff0c3469),
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,style: TextStyle(
                        color: Color(0xff0c3469)),),
                    SizedBox(height: 5,),
                    Text(subtitle,style: TextStyle(
                        color: Color(0xff0c3469)),),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 190,
            width: 162,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(images),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.amber,
            title: Text('Our Services',style: TextStyle(fontWeight: FontWeight.bold)),
            centerTitle: true,
            foregroundColor: Colors.black
        ),
        body:SafeArea(
          child: ListView(
            children: [
              Container(
                color: Color(0xfff3f3f3),
                height: 330,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          prefixIcon: Icon(Icons.search,color: Color(0xff0c3469),),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Search any things...'
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xfffafbfd),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('You are in good',style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xff0c3469),
                                          fontWeight: FontWeight.bold),),
                                      Text('Hand With US', style: TextStyle(
                                        fontSize: 22,color: Color(0xff0c3469),
                                        fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                      SizedBox(height: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('We are delighted\nTo provide the',style: TextStyle(
                                              color: Color(0xff0c3469)
                                          ),),
                                          Text('Best Services',style: TextStyle(
                                              color: Color(0xff0c3469)
                                          ),)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 200,
                            width: 171,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/rotary.png',),fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                )
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.white,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            _categories(
                                name: 'Mixing'),
                            SizedBox(width: 10,),
                            _categories(
                                name: 'Leveling'),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey[300],
                    ),
                    Padding(
                        child: Column(
                          children: [
                            _bottomContainer(
                                color: Color(0xffffeedf),
                                price: 100,
                                name: 'Mixing',
                                title: 'We offer services to improve',
                                subtitle: 'your quality of life',
                                images: 'assets/images/rotary_mixing.png'
                            ),
                            SizedBox(height: 20,),
                            _bottomContainer(
                                color: Color.fromARGB(204, 204, 204, 255),
                                price: 150,
                                name: 'Leveling',
                                title: 'We offer services to improve',
                                subtitle: 'your quality of life',
                                images: 'assets/images/rotary_leveling.png'
                            ),
                          ],
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20))
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
