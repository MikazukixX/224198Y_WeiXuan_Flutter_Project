import 'package:flutter/material.dart';
import 'package:flutter_project_mad/About.dart';
import 'package:flutter_project_mad/home.dart';
import 'package:flutter_project_mad/main.dart';
import 'Profile.dart';


class MyDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width *0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.pink[400]),
              child: Padding(
                padding:EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      child: CircleAvatar(backgroundImage: AssetImage('images/back.jpg'),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('WeiXuan',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                      ),
                      SizedBox(height: 3,),
                      Text('WeiXuan@nyp.edu.sg',
                      style: TextStyle(color: Colors.white,
                      fontSize: 12),
                      ),
                  ],
                ),
              ),
            ),
            ListTile(leading: Icon(Icons.home),
            title: Text('Home'),onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context) => homepage(),),);},),
                  ListTile(leading: Icon(Icons.person),
            title: Text('Profile'),onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context) => Profile(),),);},),
                    ListTile(leading: Icon(Icons.crop_portrait_outlined),
            title: Text('About us'),onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context) => About(),),);},),

                  ListTile(leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context) => MyApp(),),);},
             ),
             
          ],
        ),
      ),
    );
  }
}