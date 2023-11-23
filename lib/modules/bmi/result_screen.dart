import 'package:flutter/material.dart';

class BMI_RES extends StatelessWidget {

  final double result;
  final bool isMale;
  final int weight;
  final int age ;
  final int height;
  BMI_RES({
    required this.height,
    required this.weight,
    required this.age,
    required this.isMale,
    required this.result

});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bmi result'
        ),

      ),
      body: Center(
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('gender: ${isMale?'male':'female'} '),
            Text("age : ${age}"),
            Text("height : ${height}"),
            Text("weight : ${weight}"),
            Text("result : ${result}"),

          ],
        ),
      ),
    );
  }
}
