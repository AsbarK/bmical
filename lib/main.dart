import 'package:flutter/material.dart';
import 'package:bmical/resultpage.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
double height =150;
double weight = 60;
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text(
            'BMI CALCULATOR',
              style: TextStyle(
            color: Colors.white,
                fontFamily: 'Kdam'
        ),
      ),
        centerTitle: true,

      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "In this app you can find your BMI(Body Mass Index)",
                    style: TextStyle(
                        color: Colors.black38,
                        fontFamily: 'Kdam',
                        fontSize: 40,
                    ),
            ),
            //SizedBox(height: 1.0 ),
            Row(
              children:[
            Container(
              margin: EdgeInsets.all(10.0),
              height: 230,
              width: 160,
              decoration: BoxDecoration(color: Colors.black26,
                  border: Border.all(
                      color: Colors.white
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Text(
                    "weight(kg)",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,


                    ),
                  ),
                 Padding(
                     padding:  EdgeInsets.all(15.0),
                   child: Text("${weight.round()}",
                     style: TextStyle(
                       color: Colors.black,
                       fontSize: 48,
                       fontWeight: FontWeight.bold,
                     ),

                   ),


                 ),

                  Slider(
                    activeColor: Colors.blueAccent,
                    inactiveColor: Colors.white60,
                    thumbColor: Colors.black,
                    value: weight,
                    min: 10,
                    max: 200,
                    onChanged: (newValue){
                      setState((){
                        weight=newValue;
                      });
                    },
                  ),


                ],

              ),
            ),

                Container(
                  margin: EdgeInsets.all(10.0),
                  height: 230,
                  width: 160,
                  decoration: BoxDecoration(color: Colors.black26,
                    border: Border.all(
                      color: Colors.white
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Center(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        Text(
                          "height(cm)",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,

                          ),
                        ),
                        Padding(padding:
                        const EdgeInsets.all(15.0),
                          child: Text("${height.round()}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                            ),

                          ),
                        ),
                        Slider(
                          activeColor: Colors.blueAccent,
                          inactiveColor: Colors.white60,
                          thumbColor: Colors.black,
                          value: height,
                          max: 300,
                          min: 40,

                          onChanged: (newValue){
                            setState((){
                              height =newValue;
                            });
                        },

                        )

                      ],
                    ),
                  ),
                )
            ],

      ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Result(bmi:(( weight *10000)/(height*height)) ,)));
                      },
                      child: Container(


                        child: Center(
                          child: Text(
                            'click to calculate BMI',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),


                        height: 50,
                        width: 360,
                        decoration: BoxDecoration(color: Colors.grey,
                            border: Border.all(
                                color: Colors.black
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),


                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],



        ),



      ),

    );


  }

}



