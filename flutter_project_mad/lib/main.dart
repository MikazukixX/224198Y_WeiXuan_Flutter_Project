
import 'package:flutter/material.dart';
import 'package:flutter_project_mad/cart.dart';
import 'package:flutter_project_mad/home.dart';
import 'package:flutter_project_mad/register.dart';
import 'package:provider/provider.dart';
import 'cartlist.dart';


void main ()
{
   runApp(
  ChangeNotifierProvider(
    create:(context) => CartList(),
    child:  MyApp(),
    ));
}


class MyApp extends StatelessWidget {


  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body:SingleChildScrollView(
        child: Container(  
        decoration: BoxDecoration(
        image: DecorationImage(image:AssetImage('images/back2.jpg'),
        fit:BoxFit.cover,
        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)),
      ),

 

          
      child: Column(
      children: [
                  

      SizedBox(height: 300,), 

      LoginStyle(),
      ],
      ),
      ),
      )
       
         
        

      ),
    );
  }
}


class LoginStyle extends StatefulWidget {

  @override
  State<LoginStyle> createState() => _LoginStyleState();
}




class _LoginStyleState extends State<LoginStyle> {

    TextEditingController _usernameController = TextEditingController();
TextEditingController _passwordController = TextEditingController();


  bool isbuttonenabled = false;

  @override
 void initState()
 {
  super.initState();
  _usernameController.addListener(_checkbuttonState);
  _passwordController.addListener(_checkbuttonState);

 }

 @override
 void dispose()
 {
  _usernameController.dispose();
  _passwordController.dispose();

  super.dispose();
 }

 void _checkbuttonState()
 {
  setState(() {
    isbuttonenabled = _usernameController.text.isNotEmpty &&
    _passwordController.text.isNotEmpty
   ;
  });
 }

 void _handleLogin(){
  Navigator.of(context).push(MaterialPageRoute(builder:(context)=>homepage(),
    ),
  );

}



  
  @override
  Widget build(BuildContext context) {
  
  return Container(
   

  
    decoration: BoxDecoration(borderRadius:BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20)
    ),

      color:Colors.white),
      
    child: Align(
      alignment:Alignment.center,
      
        
        child:
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Padding(padding: EdgeInsets.all(5)),
          
          Text("Sign in",style: TextStyle(fontSize: 22,fontWeight:FontWeight.bold)),
          SizedBox(height: 10,),
          
            Padding(padding: EdgeInsets.all(18),
            child:
            
           
            TextField(
              controller: _usernameController,
              decoration:
             InputDecoration(
              hintText: 'Userid',
              hintStyle: TextStyle(
                fontWeight: FontWeight.w300,
                color:Colors.grey
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:BorderSide(color:Colors.grey,) ,
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red,),
                  borderRadius: BorderRadius.circular(20),
              ),
              contentPadding: EdgeInsets.all(20),
            ),
            ),
            ),

            //password field
             Padding(padding: EdgeInsets.all(18),
            child:
              TextField(
                controller:_passwordController,
                decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(
                fontWeight: FontWeight.w300,
                color:Colors.grey
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:BorderSide(color:Colors.grey,) ,
                    borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue,),
                  borderRadius: BorderRadius.circular(20),
              ),
              contentPadding: EdgeInsets.all(20),
            ),
            obscureText: true, // hide password
            ),
            
             ),
             TextButton(onPressed:(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Register()),);}, child:Text("Dosen't have a account? Register here")),
          

              SizedBox(height: 30),
              //Login Button
          
              ElevatedButton(onPressed:isbuttonenabled ? _handleLogin:null,
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  
                ),
                 backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState>states)
                {
                  if(states.contains(MaterialState.disabled))
                  {
                    //if button is disabaled
                    return Colors.grey;
                  }
                  // if button is enbaled
                  return Colors.red;
                }
                 ),
              ),
              child:  Text("Login",style:TextStyle(color:Colors.white,fontWeight: FontWeight.w900),) ,),
            
             
             
         
            
          ], //children
        ),
      
      
    ),
  );
  }
}