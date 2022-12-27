








import 'package:drawernavigationbar/screens/account.dart';
import 'package:drawernavigationbar/screens/home.dart';
import 'package:drawernavigationbar/screens/info.dart';
import 'package:drawernavigationbar/screens/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _selected = 0 ;

 void changeSelected(int value){
  setState(() {
    _selected = value ;
  });
 }

  var _pages = [ Home() , Info() , Services() , Account() ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
        title: Text("Drawer With Profile"),
        
      ),
      body: _pages[_selected],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader( decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://wallpapercave.com/wp/k76GRL8.jpg"), fit: BoxFit.cover)) ,accountName: Text("Abdur Rahman" , style: TextStyle(fontSize: 25),), accountEmail: Text("abdurrahmanasim7@gmail.com"), currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://tse4.mm.bing.net/th?id=OIP.ULVfdvO_OZ0nNWAriggY3wHaEo&pid=Api&P=0")) )
         ,ListTile(
          selected: _selected == 0 , 
          leading: Icon(Icons.home),
          title: Text("Home"),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          onTap: (() => {
            changeSelected(0) 
          }),
         )
        ,ListTile(
          selected: _selected == 1 , 
          leading: Icon(Icons.info),
          title: Text("Info"),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          onTap: (() => {
            changeSelected(1) 
          }),
         )
        ,ListTile(
          selected: _selected == 2 , 
          leading: Icon(Icons.room_service),
          title: Text("Sevices"),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          onTap: (() => {
            changeSelected(2) 
          }),
         )
         ,ListTile(
          selected: _selected == 3 , 
          leading: Icon(Icons.account_box),
          title: Text("Account"),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          onTap: (() => {
            changeSelected(3) 
          }),
         )
          ],
        ),
      ),),
    );
  }
}