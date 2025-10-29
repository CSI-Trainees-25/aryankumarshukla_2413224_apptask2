import 'package:coffee_app/widgets/BoldText.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

   List Names =[
    "Espresso",
    "Cappucciono",
    "Latte",
    "Cafetiere",
   ];





  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
           body: Padding(
             padding: const EdgeInsets.all(16.0),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                      Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
               child:  Image.asset("assets/homepagetop.png"),
                height: 40,
                width: 40,
                //color: Colors.white,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
                ),
                ),
               Container(
               child:  Image.asset("assets/coffelogoimage.png"),
                height: 54,
                width: 54,
                //color: Colors.white,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
                ),
                )
             ],),
                      ),
                      
                      BoldText(''
                      ,size: 30, text: 'Find the best \ncoffee for you',
                      ),
                      Container(
                        child: Padding(
           padding: const EdgeInsets.all(16.0),
        child: Row(
            children: [
              // Search TextField
             Expanded(
               child: Container(
                height: 50,
               decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                 boxShadow: [
                  BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Find your coffee...',
              hintStyle: TextStyle(
                color: Colors.grey[400],
                fontSize: 14,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey[400],
                size: 22,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            ),
          ),
        ),
      ),
      SizedBox(width: 10), 
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Color.fromRGBO(150, 114, 89, 1),
          shape: BoxShape.circle,
          //borderRadius: BorderRadius.horizontal(left: Radius.circular(25), right: Radius.circular(35))
        ),
        child: IconButton(
          icon: Icon(
            Icons.tune, // Filter icon
            color: Colors.white,
            size: 24,
                          ),
                         onPressed: () {
                            // Handle filter button press
                          print('Filter pressed');
                           },
                          ),
                         ),
                       ],
                      ),
                       ),
                      ),
                      Container(
                        height: 30,
                       // width: double.maxFinite,
                       // color: Colors.red,
                        child: ListView.builder(
                          padding: EdgeInsets.only(right: 5),
                          scrollDirection: Axis.horizontal,
                          itemCount: Names.length,
                          itemBuilder:(context,index){
                            return Container(
                                               margin: EdgeInsets.only(right: 5),
                                               height: 30,
                                               width: 90,
                                              //color: Colors.brown,
                                               child: Center(
                                               child: Text(
                                              Names[index],
                                              style: TextStyle(
                                              color: index == 0 
                                                ? 
                                             Color.fromRGBO(150, 114, 89, 1) 
                                                : 
                                             Colors.grey,
                                           ),
                                        ),
                                     ),
                                );
                          }),
                      )
              ],//children
             ),
           ),
      ),
    );
  }
}