import 'package:flutter/material.dart';

import 'drawer.dart';


class About extends StatefulWidget {
  

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.white,
          title:Text('About Us',style: TextStyle(color: Colors.black),),
          leading: IconButton(  icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),),
        ),

              
        backgroundColor:Colors.pink[200],
        body:SingleChildScrollView(
          child: Column(
            children:[
              aboutus()
                ] 
            ),
            
            ) ,
               drawer: MyDrawer(),
           
      ),
    );
}
}



class aboutus extends StatelessWidget {


  
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Container(  
          width: 800,
          height: 250,
        decoration: BoxDecoration(
        image: DecorationImage(image:AssetImage('images/back2.jpg'),
        fit:BoxFit.cover,
        colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.3), BlendMode.darken)),
      ),
         ),

         SizedBox(height: 10,), 
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
            decoration: BoxDecoration( 
              color: Colors.black,
            borderRadius:BorderRadius.circular(15),),
          
            child: Column(
              children: [
  //About us
     Align(
      alignment:Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
            "About us",
            style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
        ),
      ),
     ),
     ///End of alignmnet
     
//About content
Align(
  alignment:Alignment.center,
  child:Padding(
    padding: EdgeInsets.all(10.0),
    child: Text( "Welcome to Express Munch,where passion for food meets the convenience of technology .\n"
    ,style: TextStyle(fontSize: 15,color: Colors.white,height: 2 ),
    ),
  )
),
///

/// //Mission
     Align(
      alignment:Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
            "Our Mission",
            style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
        ),
      ),
     ),
     ///End of alignmn
     ///
     //Mission content
Align(
  alignment:Alignment.center,
  child:Padding(
    padding: EdgeInsets.all(15.0),
    child: Text( "At Express Munch,our mission is to redefine the way you experinece food. We are dedicated to providing a seamless and enjoyable culinary journey,connecting you with a diverse array of flavours from around the world.Wheater you're a busy professional,a food enthusiast, or somebody simply looking for a delightful meal,we're here to make every dining experinece exceptional"
    ,style: TextStyle(fontSize: 15,color: Colors.white,height: 2),),
  )
),
///
   

/// //end
     Align(
      alignment:Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
            "Join us on This Culinary Adventure!",
            style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
        ),
      ),
     ),
     ///End of alignmn
     ///
     ///
     ///
     ///     //end content
Align(
  alignment:Alignment.center,
  child:Padding(
    padding: EdgeInsets.all(15.0),
    child: Text( "Whether you're a seasonal foodie or someone looking to simplify mealtime,Express Munch is your go-to destination for delicious,convenient, and memorable dining experince.\n \nThank you for choosing Express Munch-where great food meets cutting-edge technology.Bon appétit!"
    ,style: TextStyle(fontSize: 15,color: Colors.white,height: 2),),
  )
),
///
   ],
            ),
           ),
         ),





 
      ],
    );
  }
  
}