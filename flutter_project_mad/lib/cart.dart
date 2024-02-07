import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_project_mad/cartlist.dart';
import 'package:flutter_project_mad/foodlist.dart';




class Cart extends StatelessWidget {
  void removedFromCart(FoodList food , BuildContext context)
{
  //get access to shop
  final cart = context.read<CartList>();
  cart.removecart(food);

}


 @override
  Widget build(BuildContext context) {
    return Consumer<CartList>(builder:(context,value,child) => Scaffold(
      backgroundColor: Colors.white,
           appBar: AppBar(
            backgroundColor:Colors.transparent,
            shadowColor:Colors.transparent,
            iconTheme: IconThemeData(color: Colors.pink),
        title: Text('Cart',style: TextStyle(color:Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(  
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),    color:Colors.white,border:Border.all(width:3,color:Colors.pink[100])),
          child: ListView.builder(
            itemCount: value.cart.length,
            itemBuilder: (context , index)
          {
            
            //get food from cart 
            final FoodList food = value.cart[index];
            //get food name
            final String foodname = food.name;
            //get food price
            final String foodprice = '\$'+food.price;
            //return list title
            return Container(
              decoration: BoxDecoration(color:Colors.pink,borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.only(left: 20,top: 20,right:20),
              child: ListTile(
                title: Text(foodname,style:TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
                subtitle: Text(foodprice,style:TextStyle(color: Colors.white)),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed:() => removedFromCart(food, context)
                ),
              ),
            );
            
          },
          ),
        ),
      ),
    ),
    );
  }
}
    
 



