import 'package:flutter/material.dart';

class Developer {
  final String name;
  final String email;
  final String image;

  Developer({required this.name, required this.email, required this.image});
}

List<Developer> developers = [
  Developer(
      name: "Mr.Shivraj Tharu",
      email: "shivrajtharu62@gmail.com",
      image: "assets/images/shivraj.jpg"),
  Developer(
      name: "Mr.Utsav Gautam",
      email: "gautamutsav@com",
      image: "assets/images/utsav.jpg"),
  Developer(
      name: "Mr.Ritesh Yadav",
      email: "yadavritesh@.com",
      image: "assets/images/ritesh.png"),
  Developer(
      name: "Mr.Anil Singh Dhami",
      email: "singhdhami@.com",
      image: "assets/images/anil.png"),
];

class AboutDevelopersPage extends StatelessWidget {
  const AboutDevelopersPage({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Developers"),
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15,bottom: 10,left: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: developers
              .map((developer) => Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(developer.image),
                  radius: 65,
                ),
                SizedBox(
                  width: 17,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      developer.name,
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      developer.email,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ))
              .toList(),
        ),
      ),
    );
  }
}

