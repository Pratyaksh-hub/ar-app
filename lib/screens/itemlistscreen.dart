// ignore: file_names
import 'package:ar_aapp/models/ItemModel.dart';
import 'package:ar_aapp/screens/arviewscreen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemListScreen extends StatelessWidget {
  
  List<ItemModel> items = [

    ItemModel(
     'Single Sofa',
     'White Sofa for your Home',
     "items/sofa_white.png",
     150,
    ),

    ItemModel(
     'Double Sofa',
     'Three Seater Branded Sofa',
     "items/sofa_yellow.png",
     100,
    ),

    ItemModel(
     'Chair Brown',
     'A Small Chair For your Backyard',
     "items/pc_table.png",
     75,
    ),

    ItemModel(
     'G78 Single Sofa',
     'Branded Single Yellow Sofa',
     "items/single_sofa.png",
     149,
    ),

    ItemModel(
     'Dinner Table',
     'Beautiful Dinner Table For your Family',
     "items/dinner_table.png",
     125,
    ),

    ItemModel(
     'PC Table',
     'PC Table for your Computer',
     "items/pc_table2.png",
     164,
    ),

    ItemModel(
     'Chair Small',
     'A Small Cheap Chair',
     "items/chair2.png",
     166,
    ),

    ItemModel(
     'Wooden Table',
     'Wooden Branded Table',
     "items/table.png",
     145,
    ),

    ItemModel(
     'Thai Double Bed',
     'Branded Double Bed With Locker',
     "items/bed_double.png",
     59,
    ),

    ItemModel(
     'Rotatable Chair',
     'A brand New Rotatable Chair',
     "items/rot_chair.png",
     85,
    ),

    ItemModel(
     'UK5 Sofa',
     'Brand New Single Sofa',
     "items/sofa_uk.png",
     154,
    ),

    ItemModel(
     'T80 Dinner Table',
     'Beautiful Dinner Table for house',
     "items/dinner_table2.png",
     123,
    ),

    ItemModel(
     '2 Seat Sofa',
     'This Is Brand New double Sofa',
     "items/sofa_pellow.png",
     187,
    ),

    ItemModel(
     'Grey Sofa',
     '2 Seater Brand New Double Sofa',
     "items/sofa_grey.png",
     143,
    ),

    ItemModel(
     'Chair Brown Y9',
     'A Beautiful Chair For Sitting',
     "items/chair1.png",
     189,
    ),

    ItemModel(
     'HU9 Dinner Table',
     'Beautiful Table for Dinner',
     "items/dinner_table3.png",
     154,
    ),
  ];

  ItemListScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
     body: SafeArea(
       child: Column(
        children: <Widget> [
          const SizedBox(height: 20,),
          Padding(
            padding:const EdgeInsets.all(25),
            child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
               Text('Augmented Reality', style: TextStyle(fontSize: 28, color: Colors.yellow.shade900, fontWeight: FontWeight.bold),),
               const SizedBox(width: 8,),
               Text('App', style: TextStyle(fontSize: 28, color: Colors.yellow.shade900, fontWeight: FontWeight.bold),),
           ], 
           ),
           ),

            Expanded(
             child: Padding(
               padding:const EdgeInsets.all(30),
               child: Material(
                 elevation: 20,
                 shadowColor: Colors.black,
                 child: Container(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 20, bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.shade400,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                    borderRadius: const BorderRadius.only(
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
                                const SizedBox(width: 2,),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(items[index].name, style: const TextStyle(fontSize: 20, color: Colors.white70,),),
                                    Text(items[index].detail, style: const TextStyle(fontSize: 15, color: Colors.white70,),),
                                  ],
                                )
                               ],
                               ),
                     );
                   },
                  itemCount: items.length,
                  separatorBuilder: (BuildContext context, int index) => const Divider(
                    thickness: 1.0,
                    color: Colors.black,
                  ),
                 ),
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