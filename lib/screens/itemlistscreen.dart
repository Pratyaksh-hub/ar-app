// ignore: file_names
import 'package:ar_aapp/models/ItemModel.dart';
import 'package:ar_aapp/screens/arviewscreen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemListScreen extends StatelessWidget {
  
  List<ItemModel> items = [
    ItemModel( 
     'Double Bed',
     'Double Bed With 2 Lamps',
     "item/bed.png",
     145,
    ),

    ItemModel(
     'Single Sofa T55',
     'White Sofa for your Home',
     "item/sofa_white.png",
     150,
    ),

    ItemModel(
     'Double Sofa',
     'Three Seater Branded Sofa',
     "item/sofa_yellow.png",
     100,
    ),

    ItemModel(
     'Chair Brown',
     'A Small Chair For your Backyard',
     "item/pc_table.png",
     75,
    ),

    ItemModel(
     'G78 Single Sofa',
     'Branded Single Yellow Sofa',
     "item/single_sofa.png",
     149,
    ),

    ItemModel(
     'Dinner Table',
     'Beautiful Dinner Table For your Family',
     "item/dinner_table.png",
     125,
    ),

    ItemModel(
     'Braded PC Table',
     'PC Table for your Computer',
     "item/pc_table2.png",
     164,
    ),

    ItemModel(
     'Chair Short',
     'A Small Cheap Chair',
     "item/chair2.png",
     166,
    ),

    ItemModel(
     'Woooden Table',
     'Wooden Branded UK Table',
     "item/table.png",
     145,
    ),

    ItemModel(
     'Thai Double Bed',
     'Branded Double Bed With Locker',
     "item/bed_double.png",
     59,
    ),

    ItemModel(
     'Rotatable Chair',
     'A brand New Rotatable Chair',
     "item/rot_chair.png",
     85,
    ),

    ItemModel(
     'UK5 Sofa',
     'Brand New Single Sofa',
     "item/sofa_uk.png",
     154,
    ),

    ItemModel(
     'T80 Dinner Table',
     'Beautiful Dinner Table for your house',
     "item/dinner_table2.png",
     123,
    ),

    ItemModel(
     '2 Seat Sofa',
     'This Is Brand New double Sofa',
     "item/sofa_pellow.png",
     187,
    ),

    ItemModel(
     'Grey Sofa',
     '2 Seater Brand New Double Sofa',
     "item/sofa_grey.png",
     143,
    ),

    ItemModel(
     'Chair Brown Y9',
     'A Beautiful Chair For Sitting',
     "item/chair1.png",
     189,
    ),

    ItemModel(
     'HU9 Dinner Table',
     'Beautiful Table for Dinner',
     "item/dinner_table3.png",
     154,
    ),
  ];

  ItemListScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color.fromARGB(255, 230, 192, 88),
     body: SafeArea(
       child: Column(
        children: <Widget> [
          const SizedBox(height: 20,),
          Padding(
            padding:const EdgeInsets.all(25),
            child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: const <Widget>[
               Text('AR', style: TextStyle(fontSize: 48, color: Color.fromARGB(204, 223, 189, 189), fontWeight: FontWeight.w400),),
               Text('Furniture', style: TextStyle(fontSize: 38, color: Color.fromARGB(204, 223, 189, 189), fontWeight: FontWeight.w400),),
               Text('App', style: TextStyle(fontSize: 38, color: Color.fromARGB(204, 223, 189, 189), fontWeight: FontWeight.w400),),
           ], 
           ),
           ),

            Expanded(
             child: Padding(
               padding:const EdgeInsets.all(30),
               child: Container(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 6),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                 ),

                child: ListView.separated(
                 itemBuilder: (BuildContext context, int index){
                   return GestureDetector(
                     onTap: () {
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: ((context) => ARViewScreen(
                            itemImg: items[index].pic,
                          )
                         ))
                        );
                     },
                     child: Row(
                       children: <Widget> [
                         SizedBox(
                           width: 80,
                           height: 80,
                           // ignore: unnecessary_string_interpolations
                           child: Image.asset("${items[index].pic}", width: 60,),
                            ),

                              Text(items[index].name, style: const TextStyle(fontSize: 16, color: Colors.black38,),),
                              Text(items[index].detail, style: const TextStyle(fontSize: 10, color: Colors.black54,),),
                             ],
                             ),
                   );
                 },
               itemCount: items.length,
            separatorBuilder: (BuildContext context, int index) => const Divider(), 
               ),
              ),
             ),
       ),
      ],
        ),
       ),
      );
  }
}