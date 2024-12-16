import 'package:flutter/material.dart';
class Mypeachtop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade200,
        ),
        body: Column(
          children: [
            SizedBox(width: 400,),
            SizedBox(height: 50,),

            Container(
                child: Image.asset('assets/images/pic3.jpeg',height: 200,)
            ),
            SizedBox(height: 10,),

            Text('₹450',style: TextStyle( fontSize: 20,color: Colors.black),),
            Text('MRP ₹599 (10% off)',style: TextStyle( fontSize: 18,color: Colors.black),),

            SizedBox(height: 10,),

            Text('Price inclusive of all taxes',style: TextStyle( fontSize: 17,color: Colors.black),),
            Text('Select Size  -> XS  S  M  L  XL  XXL',style: TextStyle( fontSize: 20,color: Colors.black),),

            SizedBox(height: 20,),

            Text(' Product Details :',style: TextStyle( fontSize: 25,fontWeight: FontWeight.bold),),

            SizedBox(height: 10,),

            Text('Package contains: 1 shirt',style: TextStyle( fontSize: 20,color: Colors.black),),
            Text('Machine wash ',style: TextStyle( fontSize: 20,color: Colors.black),),
            Text('Chiffon',style: TextStyle( fontSize: 20,color: Colors.black),),
            Text('Relaxed Fit',style: TextStyle( fontSize: 20,color: Colors.black),),

          ],
        )
    );
  }
}
