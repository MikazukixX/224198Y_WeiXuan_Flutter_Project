
import 'package:flutter/material.dart';
import 'package:flutter_project_mad/main.dart';



class Register extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          leading: IconButton(  icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),),
        ),
        body:SingleChildScrollView(
          child: Column(
            children:[
              SizedBox(height: 50,),
              Registerstyle()] 
            ),
            ) ,
      ),
    );
  }
}

class  Registerstyle extends StatefulWidget {


  @override
  State<Registerstyle> createState() => _RegisterstyleState();
}

class _RegisterstyleState extends State<Registerstyle> {
  TextEditingController _usernameController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
TextEditingController _confirmpasswordController = TextEditingController();

  bool isbuttonenabled = false;

  @override
 void initState()
 {
  super.initState();
  _usernameController.addListener(_checkbuttonState);
  _passwordController.addListener(_checkbuttonState);
    _confirmpasswordController.addListener(_checkbuttonState);
 }

 @override
 void dispose()
 {
  _usernameController.dispose();
  _passwordController.dispose();
    _confirmpasswordController.dispose();
  super.dispose();
 }

 void _checkbuttonState()
 {
  setState(() {
    isbuttonenabled = _usernameController.text.isNotEmpty &&
    _passwordController.text.isNotEmpty
    &&   _confirmpasswordController.text.isNotEmpty;
  });
 }

 void _handleRegister(){
  Navigator.of(context).push(MaterialPageRoute(builder:(context)=>MyApp(
             
                ),
                )
  );

}


  @override
  Widget build(BuildContext context) {
   return Container(

    decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
    color:Colors.white),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

      Text("Sign up Account",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      SizedBox(height: 50,),




      Padding(padding: EdgeInsets.all(18),  
            child:
            
           
            TextField(
              controller: _usernameController,
              decoration:
             InputDecoration(
              
              prefixIcon:Icon(Icons.people_alt),
            
            
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



            Padding(padding: EdgeInsets.all(18),
            child:
            
           
            TextField(
              controller:_passwordController,
              decoration:
             InputDecoration(
            prefixIcon: Icon(Icons.lock_outline),
              hintText:'Password',
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



            Padding(padding: EdgeInsets.all(18),
            child:
            
           
            TextField(
        
              controller:_confirmpasswordController,
              decoration:
              
             InputDecoration(
               prefixIcon: Icon(Icons.lock_outline),
              hintText: 'Confirm Password',
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


            
             TextButton(onPressed:(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MyApp()),);}, child:Text("Already have an account? Login here"),),
         




            SizedBox(height: 20,),

//Register button

              ElevatedButton(onPressed:isbuttonenabled ? _handleRegister:null,
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
              child:  Text("Register",style:TextStyle(color:Colors.white,fontWeight: FontWeight.w900),) ,),
            
             
             
            



      ], //children

    ),
  );
}
}




