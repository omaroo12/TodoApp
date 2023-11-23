import 'dart:math';

import 'package:firstproj/modules/bmi/result_screen.dart';
import 'package:flutter/material.dart';

class Bmi_Screen extends StatefulWidget {
  const Bmi_Screen({Key? key}) : super(key: key);

  @override
  State<Bmi_Screen> createState() => _Bmi_ScreenState();
}

class _Bmi_ScreenState extends State<Bmi_Screen> {
   int height=130;
   int age=30;
   bool isMale=true;
   int weight = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bmi Calculator ',

        ),

      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                 Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=true;
                        });
                      },
                      child: Container(



                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [

                                Image(
                                  image:AssetImage(
                                    'pics/male.png',

                                  )
                                  ,
                                  width: 90,
                                  height: 90,
                                ),

                                   Text(
                                    'Male',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                    ),
                                  ),


                              ],
                            ),
                          ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(10.0),
                          color: isMale ? Colors.blue:Colors.grey
                        ),

                        ),
                    ),
                      
                    ),
                  ),
                
              
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(10.0),
                          color: isMale?Colors.grey:Colors.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [

                                 Image(
                                  image:AssetImage(
                                    'pics/female.png',

                                  )
                                   ,
                                   width: 90,
                                   height: 90,
                                 ),


                                 Text(
                                  'Female',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                  ),
                                ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],

            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(

                  color: Colors.grey,
                  borderRadius: BorderRadiusDirectional.circular(10)
                ),
                child: Column(
           children: [
                 Text(
                   'Height',
                   style: TextStyle(
                     color: Colors.grey,
                     fontSize: 30.0,

                   ),

                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.baseline,
                   textBaseline: TextBaseline.alphabetic,
                   children: [
                     Text(
                       '${height}',
                       style: TextStyle(
                         fontSize: 40,

                       ),
                     ),
                     Text(
                       'cm',
                       style: TextStyle(
                         fontSize: 20,
                       ),
                     ),
                   ],
                 ),
                 Slider(
                     value: height.toDouble(),
                     min: 80,
                 max: 220,
                 onChanged: (value){
                       setState(() {
                          height=value.round();
                       });


                 },)


           ],
                ),
              ),
            ),
          ),
          
          Expanded(
            child:
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [

                 Expanded(
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadiusDirectional.circular(10.0),
                           color: Colors.grey,
                         ),
                         child: Column(
                           children: [
                             Text(
                               'Age',
                               style: TextStyle(
                                 fontSize: 40,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                             Text(
                               '${age}',
                               style: TextStyle(
                                 color:Colors.black,
                                 fontSize: 40,
                               ),

                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 FloatingActionButton(
                                   mini:true,
                                   child: Icon(
                                       Icons.add
                                   ),
                                   onPressed: (){
                                     setState(() {
                                       age++;
                                     });
                                   },

                                 ),

                                 FloatingActionButton(
                                   mini: true,
                                   child: Icon(
                                       Icons.remove
                                   ),
                                   onPressed: (){
                                     setState(() {
                                       age--;
                                     });
                                   },

                                 ),
                               ],
                             ),

                           ],
                         ),
                       ),
                     ),
                    SizedBox(
                      width: 20,
                    ),

                    Expanded(
                      child: Container(
                   decoration: BoxDecoration(
                       borderRadius: BorderRadiusDirectional.circular(10.0),
                       color: Colors.grey,
                   ),
                   child: Column(
                       children: [
                         Text(
                           'Weight',
                           style: TextStyle(
                             fontSize: 40,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         Text(
                           '${weight}',
                           style: TextStyle(
                             color:Colors.black,
                             fontSize: 40,
                           ),

                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             FloatingActionButton(
                               mini:true,
                               child: Icon(
                                   Icons.add
                               ),
                               onPressed: (){
                                 setState(() {
                                   weight++;
                                 });
                               },

                             ),

                             FloatingActionButton(
                               mini: true,
                               child: Icon(
                                   Icons.remove
                               ),
                               onPressed: (){
                                 setState(() {
                                   age--;
                                 });
                               },

                             ),
                           ],
                         ),

                       ],
                   ),
                 ),
                    ),


               ],
              ),
            ),
          ),


          Container(
            width: double.infinity,
            color: Colors.black,
            child: MaterialButton(
              onPressed: () {
                double result= weight/pow(height/100, 2);
                     Navigator.push(context,
                       MaterialPageRoute(builder: (context)=>BMI_RES(
                         age:age,
                         height: height,
                         weight: weight,
                         isMale: isMale,
                         result: result,
                       ))

                     );

              },
              child: Text(
                'Calculate',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
          ),

        ],
      ),

    );
  }
}
