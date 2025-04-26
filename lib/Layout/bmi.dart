import 'dart:math';

import 'package:flutter/material.dart';
import 'package:aaa/Layout/bmi_result.dart';

class bmi_screen extends StatefulWidget {
  @override
  Mybmi createState() => Mybmi();
}

class Mybmi extends State<bmi_screen> {
  bool isMale=true;
  double height=120;
  int weight=80;
  int age=20;
  double result = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('BMI Calculator',
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: 25,
          fontWeight: FontWeight.bold
        )
    ),
        centerTitle: true,
      ),
      body:Column(
        children: [
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isMale = true;
                            });
                          },
                          child:
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.male,
                                    size: 80,
                                    color: isMale ? Colors.blue : Colors.blueGrey,
                                  ),
                                  Text('Male',style: TextStyle(color:isMale?Colors.blue:Colors.blueGrey,fontSize: 20),),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                              ),
                            ),
                        ),
                      ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = false;
                          });
                        },
                        child:
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female,
                                  size: 80,
                                  color: !isMale?Colors.pink:Colors.blueGrey,
                                ),
                                Text('Female',style: TextStyle(color: !isMale?Colors.pink:Colors.blueGrey,fontSize: 20),),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                            ),
                          ),
                      ),
                    ),
                  ],
                ),
              )
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Height',style: TextStyle(color: Colors.blueGrey,fontSize:35.0 ),),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text('${height.round()}',style: TextStyle(color: Colors.blueGrey,fontSize:35.0,  ),),
                          Text('cm',style: TextStyle(color: Colors.blueGrey,fontSize:25.0,  ),),
                        ],
                      ),
                      Slider(
                          value: height,
                          min: 80,
                          max: 250,
                          activeColor: Colors.blue,
                          inactiveColor: Colors.blueGrey,
                          onChanged:(value){
                            setState(() {
                              height=value;
                            });
                          } ,
                      ),
                    ]
                  )
                )
              )
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Weight',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('$weight',style: TextStyle(color: Colors.blueGrey,fontSize: 50),),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('kg',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                  mini: true,
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                  mini: true,
                                ),
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Age',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                            Text('$age',style: TextStyle(color: Colors.blueGrey,fontSize: 50),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                  mini: true,
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                  mini: true,
                                ),
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              )
          ),
          Container(
            width: double.infinity,
            color: Colors.blueGrey,
            child: MaterialButton(
              onPressed: (){
                result=weight/(pow(height/100, 2));
                print(result.round());
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BmiResult(
                  isMale: isMale,
                  height: height,
                  weight: weight,
                  age: age,
                  result: result,
                )));
              },
              child: Text('Calculate',style: TextStyle(color: Colors.white,fontSize: 25),),
            ),
          )
        ],
      )
    );
  }
}