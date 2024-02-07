import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LocatePage extends StatefulWidget {



  



  @override
  State<LocatePage> createState() => _LocatePageState();
}

class _LocatePageState extends State<LocatePage> {


   Future<void> _launchEmaill()async{
    String url ='ExpressMunch@epsa.com.sg';
    Uri uri = Uri.parse(url);

    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: url,
    queryParameters: {
      'subject': ' ',
      'body':'',
    },
  );
   if (await canLaunch(_emailLaunchUri.toString())) {
    await launch(_emailLaunchUri.toString());
   
 }else{
  throw 'Could not launch $_emailLaunchUri';
 }
 

 }



  Future<void> _launchphone()async{
 
    final Uri phoneurl = Uri(
      scheme: 'tel',
      path: "65 6321 4502",
  );
   if (await canLaunch(phoneurl.toString())) {
    await launch(phoneurl.toString());
   
 }else{
  throw 'Could not launch $phoneurl';
 }
 

 }



  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
children: [
    
Padding(
    padding: const EdgeInsets.all(8.0),
    child:   Align(
      alignment: Alignment.topLeft,
      child: Text("Contact us"
      ,style:TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold  
      ),
      ),
    
    ),
),
SizedBox(height: 25,),
 Container(
                  height:200,
                  width: 400,
                  decoration: BoxDecoration(border:Border.all(color:Colors.pink,width:10),image:DecorationImage(image:AssetImage('images/locateus.png'),fit: BoxFit.cover),),
                ),
                SizedBox(height: 40,),
//Icon Row
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [

         Container(
          height: 80,
          width: 100,
           decoration: BoxDecoration(border:Border.all(color:Colors.pink,width:5),shape: BoxShape.circle,),
           child: Center(child:IconButton(icon:Icon(Icons.phone_in_talk_rounded,size: 33), onPressed:()
           {_launchphone();})
           ),
        ),
         Container(
          height: 80,
          width: 100,
           decoration: BoxDecoration(border:Border.all(color:Colors.pink,width:5),shape: BoxShape.circle,),
           child: Center(child:IconButton(icon:Icon(Icons.email_rounded,size: 33), onPressed:()
           {_launchEmaill();})
           ),
        ),
      ],
    ),
//End of Icon ROW
SizedBox(height: 20,),


    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround  ,
      children: [

         Text("Contact No",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.pink),),
          Text("Email  ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.pink),),
      ],
    ),

SizedBox(height: 10,),

       Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(width: 50,),
         TextButton(onPressed:(){_launchphone();},child:Text("65 6321 4502",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.pink),),),
         SizedBox(width: 15,),
         TextButton(onPressed:(){_launchEmaill();}, child:Text("ExpressMunch@epsa.com.sg",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.pink),),),
      
      ],
    ),

],


    ),
  );
}

  }



//  if (await canLaunch(_emailLaunchUri.toString())) {
//   await launch(_emailLaunchUri.toString());
//  }else{
//   throw 'could not launch $_emailLaunchUri';
//  }
  
 

