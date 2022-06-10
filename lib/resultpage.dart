import 'package:flutter/material.dart';


class Result extends StatefulWidget {
  Result({Key? key, required this.bmi}) : super(key: key);
  double bmi;
  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text(
            "Result",
                style: TextStyle(
                  color: Colors.black38,
                  fontFamily: 'Kdam',
                  fontSize: 40,
                ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          SizedBox(height: 20.0 ),
          Container(

              child: Text("Your BMI is ${(widget.bmi).round()}",
                style: TextStyle(color: Colors.black38,
                  fontFamily: 'Kdam',
                  fontSize: 20,
                ),


              ),


          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child:
            Center(
              child: Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(color: Colors.black26,
                    border: Border.all(
                        color: Colors.white
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Center(child: Text("Recalculate")),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
