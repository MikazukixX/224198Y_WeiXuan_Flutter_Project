import 'package:flutter/material.dart';

class Profile extends StatefulWidget {


  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {



    void savecomplete()
  {  

    showDialog(context: context,
    barrierDismissible: false,
    builder: (context)=>AlertDialog(
      content: Text("Sucessfully Save Information",
      style: TextStyle(color: Colors.white),),
      backgroundColor:Colors.red,
      actions: [
        IconButton(icon: Icon(Icons.done), 
        onPressed:(){
        //pop once to remove dialog
        Navigator.pop(context);
        //pop again to go back to menu
         Navigator.pop(context);
        },
        ),
      ],
    ),
    );
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.pink,
      appBar:AppBar(title:Text('Profile',style: TextStyle(color: Colors.black),),
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      ),
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 20,),

        //Image
        Padding(
        padding: EdgeInsets.all(10),
        child:    
        Container(
                width: 180,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image:DecorationImage(image:AssetImage('images/back.jpg'),fit: BoxFit.cover),
                  
                ),
              ),
                ),
    
   //End Image
    
              SizedBox(height: 40,),
    
              Container(
                width: 420,
                height: 400,
                color: Colors.white,
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
 /////////////////// ///Username Field
                      Padding(padding: EdgeInsets.all(18),
                      child:
            TextField(
              decoration:
             InputDecoration(
              hintText: 'WeiXuan',
              hintStyle: TextStyle(
                fontWeight: FontWeight.w300,
                color:Colors.grey
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:BorderSide(color:Colors.pink,) ,
                borderRadius: BorderRadius.circular(20),
              ),
                 focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink,),
                  borderRadius: BorderRadius.circular(20),
              ),

              contentPadding: EdgeInsets.all(20),
            ),
            ),
            ),
//////////////////////////End Of Username field
///
        Padding(padding: EdgeInsets.all(18),
            child:
              TextField(
                decoration: InputDecoration(
              hintText: 'WeiXuan@nyp.edu.sg',
              hintStyle: TextStyle(
                fontWeight: FontWeight.w300,
                color:Colors.grey
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:BorderSide(color:Colors.pink,) ,
                    borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink,),
                  borderRadius: BorderRadius.circular(20),
              ),
              contentPadding: EdgeInsets.all(20),
            ),
            obscureText: true, // hide password
            ),
            
             ),


//////////////////////////////password field
             Padding(padding: EdgeInsets.all(18),
            child:
              TextField(
                decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(
                fontWeight: FontWeight.w300,
                color:Colors.grey
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:BorderSide(color:Colors.pink,) ,
                    borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink,),
                  borderRadius: BorderRadius.circular(20),
              ),
              contentPadding: EdgeInsets.all(20),
            ),
            obscureText: true, // hide password
            ),
            
             ),
/////////////////end of password field
///
///
////////////////Start of Save button
                              SizedBox(height: 30),
              Container( 
              width: 300,
              decoration: BoxDecoration(
             
              color: Colors.pink[400],
              borderRadius: BorderRadius.circular(30),
            ),
              child:
              IconButton(icon: Text("Save Information",style:TextStyle(color:Colors.white,fontWeight: FontWeight.w900),) ,
              iconSize: 10,
              onPressed:savecomplete,
              ),
             ),



                    ],
                  ),
                ),
    
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


// Widget profilelayout () {
  
//   return Center(
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         SizedBox(height: 20,),

//         //Image
//         Padding(
//         padding: EdgeInsets.all(10),
//         child:    
//         Container(
//                 width: 140,
//                 height: 160,
//                 decoration: BoxDecoration(
//                   image:DecorationImage(image:AssetImage('images/locateus.png'),fit: BoxFit.cover),
//                   shape:BoxShape.circle,
//                 ),
//               ),
//                 ),
    
//    //End Image
    
//               SizedBox(height: 40,),
    
//               Container(
//                 width: 420,
//                 height: 400,
//                 color: Colors.white,
//                 child: Center(
//                   child: Column(
//                     children: [
//                       SizedBox(height: 20,),
//  /////////////////// ///Username Field
//                       Padding(padding: EdgeInsets.all(18),
//                       child:
//             TextField(
//               decoration:
//              InputDecoration(
//               hintText: 'UserName',
//               hintStyle: TextStyle(
//                 fontWeight: FontWeight.w300,
//                 color:Colors.grey
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderSide:BorderSide(color:Colors.pink,) ,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink,),
//                   borderRadius: BorderRadius.circular(20),
//               ),

//               contentPadding: EdgeInsets.all(20),
//             ),
//             ),
//             ),
// //////////////////////////End Of Username field


// //////////////////////////////password field
//              Padding(padding: EdgeInsets.all(18),
//             child:
//               TextField(
//                 decoration: InputDecoration(
//               hintText: 'Password',
//               hintStyle: TextStyle(
//                 fontWeight: FontWeight.w300,
//                 color:Colors.grey
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderSide:BorderSide(color:Colors.pink,) ,
//                     borderRadius: BorderRadius.circular(20),
//               ),
//               focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink,),
//                   borderRadius: BorderRadius.circular(20),
//               ),
//               contentPadding: EdgeInsets.all(20),
//             ),
//             obscureText: true, // hide password
//             ),
            
//              ),
// /////////////////end of password field
// ///
// ///
// ////////////////Start of Save button
//                               SizedBox(height: 30),
//               Container( 
//               width: 300,
//               decoration: BoxDecoration(
             
//               color: Colors.red,
//               shape:BoxShape.rectangle,
//             ),
//               child:
//               IconButton(icon: Text("Login",style:TextStyle(color:Colors.white,fontWeight: FontWeight.w900),) ,
//               iconSize: 10,
//               onPressed:savecomplete,
//               ),
//              ),



//                     ],
//                   ),
//                 ),
    
//               ),
    
    
    
//           ],
//   ),

//     );
  

// }