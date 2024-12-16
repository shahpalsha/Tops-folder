import 'package:flutter/material.dart';
import 'package:multiple_screen_assignment/Black%20Flower%20print%20Top.dart';
import 'package:multiple_screen_assignment/Black%20T-shirt.dart';
import 'package:multiple_screen_assignment/Blue%20Kid%20Shirt.dart';
import 'package:multiple_screen_assignment/Brown%20Shirt%20Top.dart';
import 'package:multiple_screen_assignment/Brown%20T-shirt.dart';
import 'package:multiple_screen_assignment/Maroon%20Top.dart';
import 'package:multiple_screen_assignment/Peach%20Top.dart';
import 'package:multiple_screen_assignment/Printed%20Kid%20Shirt.dart';
import 'package:multiple_screen_assignment/Red%20T-shirt.dart';
import 'package:multiple_screen_assignment/Shadded%20Top.dart';
import 'package:multiple_screen_assignment/Shirt.dart';
import 'package:multiple_screen_assignment/Skyblue%20Shirt.dart';
import 'package:multiple_screen_assignment/T-shirt.dart';

class MyProductList extends StatefulWidget {
  const MyProductList({super.key});

  @override
  State<MyProductList> createState() => _MyProductListState();
}

class _MyProductListState extends State<MyProductList> {
  @override
  Widget build(BuildContext context) {

    var img_list = [
      'pic1.jpeg',
      'pic2.jpeg',
      'pic3.jpeg',
      'pic4.jpeg',
      'pic5.jpeg',
      'pic6.jpeg',
      'pic7.jpeg',
      'pic8.jpeg',
      'pic9.jpeg',
      'pic10.jpeg',
      'pic11.jpeg',
      'pic12.jpeg',
      'pic13.jpeg',
    ];

    var img_name = [
      'Shirt',
      'Maroon Top',
      'Peach Top',
      'Shadded Top',
      'Printed Kid Shirt',
      'Brown Shirt Top',
      'Blue Kid Shirt',
      'Brown T-shirt',
      'Red T-shirt',
      'Skyblue Shirt',
      'Black Flower print Top',
      'T-shirt',
      'Black T-shirt',
    ];


    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        backgroundColor: Colors.purpleAccent.shade400,
      ),

      body: ListView.separated(itemBuilder: (context, index) {
        return ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          hoverColor: Colors.grey.shade400,
          onTap: () {
            if (img_name[index] == 'Shirt') {
              // Navigate to the Maroon Top screen.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Myshirt(), // Navigate to the MaroonTop screen.
                ),
              );
            }


            else if (img_name[index] == 'Maroon Top') {
              // Navigate to the Maroon Top screen.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Mymaroontop(), // Navigate to the MaroonTop screen.
                ),
              );
            }


            else if (img_name[index] == 'Peach Top') {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Mypeachtop(),
                ),
              );
            }


            else if (img_name[index] == 'Shadded Top') {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Myshaddedtop(),
                ),
              );
            }

            else if (img_name[index] == 'Printed Kid Shirt') {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Myprintedkidshirt(),
                ),
              );
            }

            else if (img_name[index] == 'Brown Shirt Top') {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Mybrownshirttop(),
                ),
              );
            }

            else if (img_name[index] == 'Blue Kid Shirt') {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Mybluekidshirt(),
                ),
              );
            }

            else if (img_name[index] == 'Brown T-shirt') {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Mybrowntshirt(),
                ),
              );
            }

            else if (img_name[index] == 'Red T-shirt') {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Myredtshirt(),
                ),
              );
            }

            else if (img_name[index] == 'Skyblue Shirt') {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Myskyblueshirt(),
                ),
              );
            }

            else if (img_name[index] == 'Black Flower print Top') {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Myblackflowerprinttop(),
                ),
              );
            }

            else if (img_name[index] == 'T-shirt') {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Mytshirt(),
                ),
              );
            }

            else {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Myblacktshirt(),
                ),
              );
            }
          },

          leading: Container(
            width: 80,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: AssetImage('assets/images/${img_list[index]}'),
                fit: BoxFit.cover
              ),
            ),
          ),

          title: Container(
              child: Text('${img_name[index]}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
          trailing: Icon(Icons.favorite_border, color: Colors.black,),

        );

      }, separatorBuilder: (context, index) {
        return Divider(height: 5,
        thickness: 2,);
      },
          itemCount: img_list.length),
    );
  }
}
