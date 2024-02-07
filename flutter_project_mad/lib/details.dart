import 'package:flutter/material.dart';
import 'package:flutter_project_mad/foodlist.dart';
import 'cartlist.dart';
import 'package:provider/provider.dart';

class Details extends StatefulWidget {
 final FoodList food;

   Details({Key key, this.food}) : super(key: key);
    int counter = 0;
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  

  int quantityCount = 0;

  void decrementQuantity ()
  {
    setState(() {
      if (quantityCount >0){
      quantityCount--;
      }
    });
  }
void increamentQuantity()
{setState(() {
  quantityCount++;
});}

void addtoCart()
{
  if(quantityCount >0 )
  {
    final shop = context.read<CartList>();

    shop.addtoCart(widget.food , quantityCount);

    showDialog(context: context,
    barrierDismissible: false,
    builder: (context)=>AlertDialog(
      content: Text("Sucessfully Added to cart",
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
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar:AppBar(title:Text( widget.food.name +' Details',style: TextStyle(color: Colors.black),),
      shadowColor:Colors.transparent,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black),
      
    
     
      ),
    
    body: SingleChildScrollView(
              child: Container(
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), ),
          child:Column(
            children: [
               Image.asset(
                widget.food.imagepath
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(color:Colors.white),
                child:  
                Column(
                  children: [   

                      Align(
                alignment: Alignment.topLeft,
                child:  Row(
                  children: [
                    Padding(padding: EdgeInsets.all(5)),
                    Icon(Icons.star,color:Colors.orange,),
                    SizedBox(width: 10),
                    Text(widget.food.rating,style:TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
                    
                
                  
                  ],
                )
              ),
                 SizedBox(height: 10,),

                    Align(
                alignment: Alignment.topLeft,
                child:   Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                  widget.food.name,
                  style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)
              ),
                ),
              
              


              ),

              SizedBox(height:10),
                    Align(
                alignment: Alignment.topLeft,
                child:   Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text("Description",
              
                  style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold,)
              ),
                ),
                    ),

                    SizedBox(height: 5,),
                                        Align(
                alignment: Alignment.topLeft,
                child:   Padding(
                  padding: const EdgeInsets.all(5),
                  child:    Text(
                widget.food.description,
                style:TextStyle(fontSize: 14,height: 2),
              ),
                ),
                    ),
           
              ],
                ),
                

              ),
   SizedBox(height: 20,),
   Container(
  color: Colors.pink,
  padding: EdgeInsets.all(25),
  child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      Text(
        "\$"+ widget.food.price,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      //Decrement button
      Container(
        decoration: BoxDecoration(color: Colors.pink,shape: BoxShape.circle),
        child: IconButton(
          icon: Icon(Icons.remove),
          onPressed: decrementQuantity,
        ),
      )  ,//end of decrement buttom
      SizedBox(width:20, 
      child: Center(child: Text(quantityCount.toString(),style: TextStyle(color: Colors.white,fontSize: 15),))),
       Container(
        decoration: BoxDecoration(color: Colors.pink,shape: BoxShape.circle),
        child: IconButton(
          icon: Icon(Icons.add),
          onPressed: increamentQuantity,
        ),
      ),  //end of decrement buttom
      ],
      ),
      SizedBox(height: 10,),
      Container(
        height: 50,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
        color: Colors.pink[100],),
        child: Center(child:TextButton(onPressed: addtoCart, child: Text("Add to cart",style: TextStyle(color:Colors.white,fontSize:20),),)),
      )
    ],
  ),
   ),

  
           
   
             
        
            ],
          ),
        ),
      ),
    );
    
  }
}