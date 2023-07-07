import 'package:flutter/material.dart';
import 'package:task4/info.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,title: 'Hello World Demo Application', home: sec());
  }
}

class sec extends StatefulWidget {
  const sec({super.key});

  @override
  State<sec> createState() => _secState();
}

class _secState extends State<sec> {
  List name = ['Laurent', 'Tracy', 'Claire', 'Joe','Mark','Williams'];
  List Massage = [
    "How About meeting tomorrow",
    "I love that Idea,it's great",
    "I wasn't aware of that,let me check",
    "Nice to meet you",
    "I was there",
    "No problem, Pro"
  ];
  List Pic = [
    "https://images.pexels.com/photos/326212/pexels-photo-326212.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/750565/pexels-photo-750565.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/1287145/pexels-photo-1287145.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/709552/pexels-photo-709552.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/462162/pexels-photo-462162.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text(
          "Messages",
          style: TextStyle(
            color: Colors.amber,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(radius: 30,
              backgroundImage: NetworkImage(Pic[index]),
            ),
            title: Text(name[index]),
            subtitle: Text(
              Massage[index],
            ),
            trailing: Icon(Icons.double_arrow_outlined),
            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => info()   )
            )
           ,


          );
        }
      ),
    );
  }
}
