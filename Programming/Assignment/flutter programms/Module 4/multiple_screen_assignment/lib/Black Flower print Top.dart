import 'package:flutter/material.dart';
class Myblackflowerprinttop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow.shade700,
        ),
        body: Column(
          children: [
            SizedBox(width: 400,),
            SizedBox(height: 50,),

            Container(
                child: Image.asset('assets/images/pic11.jpeg',height: 200,)
            ),
            SizedBox(height: 10,),

            Text('₹450',style: TextStyle( fontSize: 20,color: Colors.black),),
            Text('MRP ₹599 (30% off)',style: TextStyle( fontSize: 18,color: Colors.black),),

            SizedBox(height: 10,),

            Text('Price inclusive of all taxes',style: TextStyle( fontSize: 17,color: Colors.black),),
            Text('Select Size  -> XS  S  M  L  XL  XXL',style: TextStyle( fontSize: 20,color: Colors.black),),

            SizedBox(height: 20,),

            Text(' Product Details :',style: TextStyle( fontSize: 25,fontWeight: FontWeight.bold),),

            SizedBox(height: 10,),
           // Text('Single button squared cuffs',style: TextStyle( fontSize: 20,color: Colors.black),),
            Text('Package contains: 1 shirt',style: TextStyle( fontSize: 20,color: Colors.black),),
            Text('Machine wash ',style: TextStyle( fontSize: 20,color: Colors.black),),
            Text('Cotton Blend',style: TextStyle( fontSize: 20,color: Colors.black),),
            Text('Relaxed Fit',style: TextStyle( fontSize: 20,color: Colors.black),),
            Text('Product Code: 443048945026',style: TextStyle( fontSize: 20,color: Colors.black),)
          ],
        )
    );
  }
}
