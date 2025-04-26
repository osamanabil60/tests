import 'package:flutter/material.dart';
import 'package:aaa/Layout/bmi.dart';

class BmiResult extends StatelessWidget {
  bool isMale;
  double height;
  int weight;
  int age;
  double result;
  BmiResult({
    required this.isMale,
    required this.height,
    required this.weight,
    required this.age,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.black,
        title: Text('BMI Result',
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 25,
                fontWeight: FontWeight.bold
            )
        ),
        centerTitle: true,
      ),
        body:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Gender is : ${isMale ? 'Male' : 'Female'}',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                              SizedBox(width: 10,),
                              Icon(isMale ? Icons.male : Icons.female,size: 70 ,color: isMale ? Colors.blue : Colors.pink,),
                            ],
                          ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                      ),
                    )
                ),
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Height is :',style: TextStyle(color: Colors.blueGrey,fontSize: 25),),
                            Text(' ${height.round()}',style: TextStyle(color: Colors.blueGrey,fontSize: 30),),
                            Text('cm',style: TextStyle(color: Colors.blueGrey,fontSize: 15),),
                            SizedBox(width: 10,),
                            Icon(Icons.height,size: 70 ,color: Colors.blueGrey,),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                      ),
                    )
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Weight is :',style: TextStyle(color: Colors.blueGrey,fontSize: 25),),
                            Text(' ${weight.round()}',style: TextStyle(color: Colors.blueGrey,fontSize: 30),),
                            Text('kg',style: TextStyle(color: Colors.blueGrey,fontSize: 15),),
                            SizedBox(width: 10,),
                            Icon(Icons.accessibility_rounded,size: 70 ,color: Colors.blueGrey,),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                      ),
                    )
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Age is :',style: TextStyle(color: Colors.blueGrey,fontSize: 25),),
                            Text(' ${age.round()}',style: TextStyle(color: Colors.blueGrey,fontSize: 30),),
                            Text('years',style: TextStyle(color: Colors.blueGrey,fontSize: 15),),
                            SizedBox(width: 10,),
                            Icon(Icons.cake_outlined,size: 70 ,color: Colors.blueGrey,),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                      ),
                    )
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Result is :',style: TextStyle(color: Colors.blueGrey,fontSize: 25),),
                                Text(' ${result.round()}',style: TextStyle(color: Colors.blueGrey,fontSize: 30),),
                                SizedBox(width: 10,),
                                Icon(Icons.receipt,size: 70 ,color: Colors.blueGrey,),
                              ],
                            ),
                            if(result<18.5)
                              Text('Underweight',style: TextStyle(color: Colors.red,fontSize: 20),),
                            if(result>=18.5 && result<25)
                              Text('Normal',style: TextStyle(color: Colors.green,fontSize: 20),),
                            if(result>=25 && result<30)
                              Text('Overweight',style: TextStyle(color: Colors.red,fontSize: 20),),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                      ),
                    )
                ),
                //Expanded(child: Container(child: Text('Result is : ${result.round()}'))),
              ]
        )
    );
  }
}
