
import 'package:flutter/material.dart';
import 'package:flutter_project_mad/foodlist.dart';
import 'package:flutter_project_mad/locate.dart';
import 'menu.dart';
import 'FoodTile.dart';
import 'cart.dart';
import 'drawer.dart';


class homepage extends StatefulWidget {


  final String rname;
  final String rpwd;

  const homepage({Key key, this.rname, this.rpwd}) : super(key: key);

  
  

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {



 

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
        floatingActionButton: FloatingActionButton(onPressed: ()=> Navigator.push(context,MaterialPageRoute(builder: (context){return Cart();})),
        backgroundColor: Colors.pink[400],
        child: Icon(Icons.shopping_bag),),
        backgroundColor: Colors.white,
        
        
        appBar: AppBar(
          backgroundColor:Colors.transparent,
          shadowColor:Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),    
          title: Text('HomePage',style:TextStyle(color:Colors.black),),
          bottom: TabBar(
            indicatorColor:Colors.red, //change the underline
            labelColor: Colors.pink,
            unselectedLabelColor: Colors.grey,
            tabs: [
            Tab(text:"Home",icon:Icon(Icons.home),),
            Tab(text:'Menu',icon:Icon(Icons.menu_book_rounded),),
            Tab(text:'Locate us',icon:Icon(Icons.location_on_outlined),),
            
            
            ]
            
            
          ),
        ),
        body:  Padding(
          padding: const EdgeInsets.all(10.0),
          child: TabBarView(
            children:[ 
              
         
              Content(),
            Menu(),
            //  Menu(),
              LocatePage(),
            ],
          
          ),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}

class  Content extends StatefulWidget {
 
  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
         //Banner Start
          Container(
            width: 420,
            height: 200,
            decoration: BoxDecoration(image: DecorationImage(image:AssetImage('images/back.jpg'),
          fit:BoxFit.cover,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ Padding(padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Text("Explore the wide variety \nof\nSingapore Dishes! 🍜🍛",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.white),),),],
          )
          ),
          //Banner End 

          Divider(height: 5,),
          SizedBox(height: 10,),

           Padding(padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Text("Best Recommended",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.pink),),),
          SizedBox(height: 10,),


          //Best Recommended
          Container(
          height: 120,
          width: 400,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),    color:Colors.black),
            child: Column(
              children:[
              Row(
                children: [
                Container(
                height:120,
                width: 180,
                decoration: BoxDecoration(shape: BoxShape.circle,image:DecorationImage(image:AssetImage('images/chickenrice.jpg'),fit: BoxFit.contain),),
              ),
             
              Column(
                children: [ Text("Tian Tian Chicken Rice",style:TextStyle(color: Colors.white,)),
                SizedBox(height: 10,),
                  Row(
                    children: [
                    Icon(Icons.star,color:Colors.orange,),
                    SizedBox(width: 10,),
                   Text("4.7",style:TextStyle(color:Colors.white),),
                       SizedBox(width: 20,),
                   Text("\$4.00",style:TextStyle(color:Colors.white),),],
                  )
                  ],
              )
             
                ],
              ),    
         ]
              ),
            ),
            //End of best reco 1 item
            SizedBox(height: 10,),

                  //Best Recommended 2
          Container(
          height: 120,
          width: 400,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),    color:Colors.black),
            child: Column(
              children:[
              Row(
                children: [
                Container(
                height:120,
                width: 180,
                
                decoration: BoxDecoration(shape:BoxShape.circle,image:DecorationImage(image:AssetImage('images/Bakkuteh.jpg'),fit: BoxFit.contain),),
              ),
             
              Column(
                children: [ Text("Song Fa Bak Kut Teh",style:TextStyle(color: Colors.white,)),
                SizedBox(height: 10,),
                  Row(
                    children: [
                     Icon(Icons.star,color:Colors.orange,),
                    SizedBox(width: 10,),
                   Text("4.8",style:TextStyle(color:Colors.white),),
                   SizedBox(width: 20,),
                   Text("\$18.00",style:TextStyle(color:Colors.white),),

                    ],
                  ),
                  ],
              )
             
                ],
              ),    
         ]
              ),
            ),
            //End of best reco 2 item
        

    SizedBox(height: 10,),
                  //Best Recommended 3
          Container(
          height: 120,
          width: 400,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),    color:Colors.black),
            child: Column(
              children:[
              Row(
                children: [
                Container(
                height:120,
                width: 180,
                decoration: BoxDecoration(shape: BoxShape.circle,image:DecorationImage(image:AssetImage('images/hokkienmee.jpg'),fit: BoxFit.contain),),
              ),
             
              Column(
                children: [ Text("Simon Road Hokkien Mee",style:TextStyle(color: Colors.white,)),
                SizedBox(height: 10,),
                  Row(
                    children: [
                     Icon(Icons.star,color:Colors.orange,),
                    SizedBox(width: 10,),
                   Text("4.5",style:TextStyle(color:Colors.white),),
                       SizedBox(width: 20,),
                   Text("\$8.00",style:TextStyle(color:Colors.white),),],
                  )
                  ],
              )
             
                ],
              ),    
         ]
              ),
            ),
            //End of best reco 3 item
        

          




          
        ],
       
        
        ),
    );
  }
}



