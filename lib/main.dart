//채널랭킹 만들기 (새로고침을 하면 그래프 비율 바뀌는거)
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double gold = 0.8;
  double silver = 0.6;
  double bronze = 0.4;

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ranking",
      theme: ThemeData(
        accentColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ranking 시스템"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: new LinearPercentIndicator(
                  // width: MediaQuery.of(context).size.width - 50,
                  leading: CircleAvatar(
                    child: Image.asset('assets/images/gold.png')
                  ),
                  animation: true,
                  lineHeight: 40.0,
                  animationDuration: 2000,
                  percent: gold,
                  center: Text("CH. 이봉희"),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Colors.yellow[400],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: new LinearPercentIndicator(
                  leading: CircleAvatar(
                      child: Image.asset('assets/images/silver.png')
                  ),
                  // width: MediaQuery.of(context).size.width - 50,
                  animation: true,
                  lineHeight: 40.0,
                  animationDuration: 2000,
                  percent: silver,
                  center: Text("CH. 이봉희2"),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Colors.lightBlue[200],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: new LinearPercentIndicator(
                  leading: CircleAvatar(
                      child: Image.asset('assets/images/bronze.png')
                  ),
                  // width: MediaQuery.of(context).size.width - 50,
                  animation: true,
                  lineHeight: 40.0,
                  animationDuration: 2000,
                  percent: bronze,
                  center: Text("CH. 이봉희3"),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Colors.brown[400],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RaisedButton(onPressed: () {
                      setState(() {
                        gold = Random().nextDouble();
                        while(gold < 0.5){
                          gold = Random().nextDouble();
                          if(gold >= 0.5){
                            break;
                          }
                        }

                        silver = Random().nextDouble();
                        while(silver<0.3 || silver >= 0.5){
                          silver = Random().nextDouble();
                          if(silver>=0.3 && silver < 0.5){
                            break;
                          }
                        }

                        bronze = Random().nextDouble();
                        while(bronze>= 0.3){
                          bronze = Random().nextDouble();
                          if(bronze < 0.3){
                            break;
                          }
                        }
                      });
                    }, child:Text("새로고침")),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
