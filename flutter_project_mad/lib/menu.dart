import 'package:flutter/material.dart';
import 'package:flutter_project_mad/cartlist.dart';
import 'details.dart';
import 'foodlist.dart';
import 'FoodTile.dart';

class Menu extends StatefulWidget {

  @override
  State <Menu> createState() =>  MenuState();
}

class  MenuState extends State<Menu> {

  //get shop and its menu 


  List foodMenu = [
    FoodList(
      name:'Song Fa Bak Kut Teh',
      price: '18.00',
      rating: '4.8',
      imagepath: 'images/Bakkuteh.jpg',
      description: 'A Chinese soup dish originating from Malaysia and Singapore.Dish consist of pork ribs simmered in a flavorful broth infused with herbs and spices such as star anise, cloves, garlic, and cinnamon.The soup is rich, and often accompanied by sides like rice, fried dough fritters (you tiao). Bak Kut Teh is popular for its hearty and comforting qualities, making it beloved dish in Southeast Asian cuisine .' ,
  ),

    FoodList(
      name:'Katong Laksa',
      price: '5.50',
      rating: '4.2',
      imagepath: 'images/back2.jpg',
      description: 'A Chinese soup dish originating from Malaysia and Singapore.Dish consist of pork ribs simmered in a flavorful broth infused with herbs and spices such as star anise, cloves, garlic, and cinnamon.The soup is rich, and often accompanied by sides like rice, fried dough fritters (you tiao). Bak Kut Teh is popular for its hearty and comforting qualities, making it beloved dish in Southeast Asian cuisine .' ,
  ),
     FoodList(
      name:'Simon Road Hokkien Mee',
      price: '8.00',
      rating: '4.5',
      imagepath: 'images/hokkienmee.jpg',
      description: 'A Chinese soup dish originating from Malaysia and Singapore.Dish consist of pork ribs simmered in a flavorful broth infused with herbs and spices such as star anise, cloves, garlic, and cinnamon.The soup is rich, and often accompanied by sides like rice, fried dough fritters (you tiao). Bak Kut Teh is popular for its hearty and comforting qualities, making it beloved dish in Southeast Asian cuisine .' ,
  ),
    FoodList(
      name:'Punggol Nasi Lemak',
      price: '4.30',
      rating: '4.3',
      imagepath: 'images/nasi.jpg',
      description: 'A Chinese soup dish originating from Malaysia and Singapore.Dish consist of pork ribs simmered in a flavorful broth infused with herbs and spices such as star anise, cloves, garlic, and cinnamon.The soup is rich, and often accompanied by sides like rice, fried dough fritters (you tiao). Bak Kut Teh is popular for its hearty and comforting qualities, making it beloved dish in Southeast Asian cuisine .' ,
  ),
      FoodList(
      name:'Chomp Chomp Satay',
      price: '12.90',
      rating: '4.4',
      imagepath: 'images/satay.jpg',
      description: 'A Chinese soup dish originating from Malaysia and Singapore.Dish consist of pork ribs simmered in a flavorful broth infused with herbs and spices such as star anise, cloves, garlic, and cinnamon.The soup is rich, and often accompanied by sides like rice, fried dough fritters (you tiao). Bak Kut Teh is popular for its hearty and comforting qualities, making it beloved dish in Southeast Asian cuisine .' ,
  ),
  
      FoodList(
      name:'Tian Tian Chicken Rice',
      price: '4.00',
      rating: '4.7',
      imagepath: 'images/chickenrice.jpg',
      description: 'A Chinese soup dish originating from Malaysia and Singapore.Dish consist of pork ribs simmered in a flavorful broth infused with herbs and spices such as star anise, cloves, garlic, and cinnamon.The soup is rich, and often accompanied by sides like rice, fried dough fritters (you tiao). Bak Kut Teh is popular for its hearty and comforting qualities, making it beloved dish in Southeast Asian cuisine .' ,
  ),
  


  ];
    void navigatetodetails (int index)
  {
    
    Navigator.push(context, MaterialPageRoute(builder: (context) => Details()));
  }
  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(itemCount:foodMenu.length, scrollDirection: Axis.vertical,
    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,  crossAxisSpacing: 15,
      mainAxisSpacing: 10,childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.3),),
            
    
     itemBuilder:(context,index)=>FoodTile(
                food: foodMenu[index],  
              ),
              );
  }
}















