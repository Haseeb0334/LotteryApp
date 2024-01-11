import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp( const LotteryApp());

class LotteryApp extends StatefulWidget {
  const LotteryApp({super.key});

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  Random random= Random();

  int x=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: const Center(child: Text('Lottery App', style: TextStyle(
            fontSize: 50,),

            )),
          backgroundColor: Colors.lightBlue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),

          child: x==4 ?
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const Center(child: Text('Lottery Winning Number is 4', style: TextStyle( fontSize: 20),)),
              const SizedBox(height: 20,),
              Container(
                height: 250,
                width: 400,

                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.5),
                    borderRadius: BorderRadius.circular(50)
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done, color: Colors.green, size: 40,),
                    SizedBox(height: 10,),

                    Text('CONGRATULATION YOU WON THE LOTTERY', textAlign: TextAlign.center,)

                  ],
                ),
              )

            ],
          )

              :
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const Center(child: Text('Lottery Winning Number is 4', style: TextStyle( fontSize: 20),)),
              const SizedBox(height: 20,),
              Container(
                height: 250,

                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.5),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.error, color: Colors.red, size: 40,),
                    const SizedBox(height: 10,),

                    Text('Better Luck Next time Your number is $x TRY AGAIN ', textAlign: TextAlign.center,)

                  ],
                ),
              )

            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){

            x=random.nextInt(6);
            print('$x');
            setState(() {

            });
          },

          child: const Icon(Icons.refresh),
        ),

      ),
    );
  }
}



