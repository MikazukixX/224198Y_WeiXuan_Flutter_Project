
import 'package:flutter/material.dart';
import 'package:flutter_project_mad/foodlist.dart';
import 'package:path/path.dart' as Path;
import 'details.dart';



class FoodTile extends StatelessWidget {
  final FoodList food;

  const FoodTile({Key key, this.food}) : super(key: key);
  


  @override
  
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),    color:Colors.white,border:Border.all(width: 0.8,color:Colors.pink[100])),

    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
              children: [
                Container(
                  width:200,
                  height:120,
                  child:Image.asset(food.imagepath)
                ),
                SizedBox(height: 5,),
                Text(
                  food.name,
                  softWrap: true,
                  style:TextStyle(fontSize:13, fontWeight: FontWeight.bold,),
                ),
                SizedBox(height: 10,),
                Text(
                  "Price:\$" + food.price,
                  style:TextStyle(fontSize:13, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 10,),
                Container(
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),    color:Colors.pink),
                  width: 360,
                  height:40,
                  child: IconButton(
                    icon:Icon(Icons.explore,color: Colors.white,), 
                    onPressed: () {
                      Navigator.of(context).push
                      (MaterialPageRoute(
                        builder: (context) => Details(food: food,),
                      ),
                      );
                  }),
                ),
           
              ],
            ),
    ),
  );
  }
}