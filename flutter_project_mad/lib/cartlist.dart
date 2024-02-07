import 'package:flutter/material.dart';
import 'foodlist.dart';

class CartList extends ChangeNotifier{
   final List<FoodList> _foodMenu = [
    FoodList(
      name:'Song Fa Bak Kut Teh',
      price: '10.00',
      imagepath: 'images/back2.jpg',
      description: 'A Chinese soup dish originating from Malaysia and Singapore.Dish consist of pork ribs simmered in a flavorful broth infused with herbs and spices such as star anise, cloves, garlic, and cinnamon.The soup is rich, and often accompanied by sides like rice, fried dough fritters (you tiao). Bak Kut Teh is popular for its hearty and comforting qualities, making it beloved dish in Southeast Asian cuisine .' ,
  ),

    FoodList(
      name:'Katong Laksa',
      price: '10.00',
      imagepath: 'images/back2.jpg',
      description: 'A Chinese soup dish originating from Malaysia and Singapore.Dish consist of pork ribs simmered in a flavorful broth infused with herbs and spices such as star anise, cloves, garlic, and cinnamon.The soup is rich, and often accompanied by sides like rice, fried dough fritters (you tiao). Bak Kut Teh is popular for its hearty and comforting qualities, making it beloved dish in Southeast Asian cuisine .' ,
  ),
     FoodList(
      name:'Simon Road Hokkien Mee',
      price: '10.00',
      imagepath: 'images/back2.jpg',
      description: 'A Chinese soup dish originating from Malaysia and Singapore.Dish consist of pork ribs simmered in a flavorful broth infused with herbs and spices such as star anise, cloves, garlic, and cinnamon.The soup is rich, and often accompanied by sides like rice, fried dough fritters (you tiao). Bak Kut Teh is popular for its hearty and comforting qualities, making it beloved dish in Southeast Asian cuisine .' ,
  ),
    FoodList(
      name:'Punggol Nasi Lemak',
      price: '10.00',
      imagepath: 'images/back2.jpg',
      description: 'A Chinese soup dish originating from Malaysia and Singapore.Dish consist of pork ribs simmered in a flavorful broth infused with herbs and spices such as star anise, cloves, garlic, and cinnamon.The soup is rich, and often accompanied by sides like rice, fried dough fritters (you tiao). Bak Kut Teh is popular for its hearty and comforting qualities, making it beloved dish in Southeast Asian cuisine .' ,
  ),
      FoodList(
      name:'Chomp Chomp Satay',
      price: '10.00',
      imagepath: 'images/back2.jpg',
      description: 'A Chinese soup dish originating from Malaysia and Singapore.Dish consist of pork ribs simmered in a flavorful broth infused with herbs and spices such as star anise, cloves, garlic, and cinnamon.The soup is rich, and often accompanied by sides like rice, fried dough fritters (you tiao). Bak Kut Teh is popular for its hearty and comforting qualities, making it beloved dish in Southeast Asian cuisine .' ,
  ),
  
      FoodList(
      name:'Tian Tian Chicken Rice',
      price: '10.00',
      imagepath: 'images/back2.jpg',
      description: 'A Chinese soup dish originating from Malaysia and Singapore.Dish consist of pork ribs simmered in a flavorful broth infused with herbs and spices such as star anise, cloves, garlic, and cinnamon.The soup is rich, and often accompanied by sides like rice, fried dough fritters (you tiao). Bak Kut Teh is popular for its hearty and comforting qualities, making it beloved dish in Southeast Asian cuisine .' ,
  ),
    ];

    //cart 
    List <FoodList>_cart = [];

    //getter method
    List<FoodList> get foodMenu => _foodMenu;
    List<FoodList> get cart => _cart;

    //add to cart

    void addtoCart(FoodList fooditem , int quantity)
    {
      for (int i=0; i<quantity; i++)
      {
        _cart.add(fooditem);
      }
      notifyListeners();
    }
  //remove cart 
  void removecart(FoodList food)
  {
    _cart.remove(food);
    notifyListeners();
  }
  //adding price
  

  
}