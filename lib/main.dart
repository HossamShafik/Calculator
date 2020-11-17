import 'package:flutter/material.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  double result;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 30,right: 30),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Result :'),
                    Text('  ${result.toString()}',style: TextStyle(color: Colors.blue),),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                TextFormField(
                  controller: number1,
                  cursorColor: Colors.blue,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Number One :',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue[200],
                        width: 2,
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),



                TextFormField(
                  controller: number2,
                  cursorColor: Colors.blue,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue[200],
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.blue,
                      ),
                    ),
                    labelText: 'Number Two :',
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton(
                      highlightColor: Colors.blueAccent[100],
                      splashColor: Colors.white,
                      onPressed: (){
                        setState(() {
                          add(double.parse(number1.text),double.parse(number2.text));
                        });
                      },
                      child: Text('+'),
                      color: Colors.blue,
                    ),


                    FlatButton(
                      highlightColor: Colors.blueAccent[100],
                      splashColor: Colors.white,
                      onPressed: (){
                        setState(() {
                          subtract(double.parse(number1.text),double.parse(number2.text));
                        });
                      },
                      child: Text('-'),
                      color: Colors.blue,
                    ),
                  ],
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton(
                      highlightColor: Colors.blueAccent[100],
                      splashColor: Colors.white,
                      onPressed: (){
                        setState(() {
                          multiply(double.parse(number1.text),double.parse(number2.text));
                        });
                      },
                      child: Text('*'),
                      color: Colors.blue,
                    ),


                    FlatButton(
                      highlightColor: Colors.blueAccent[100],
                      splashColor: Colors.white,
                      onPressed: (){
                        setState(() {
                          divide(double.parse(number1.text),double.parse(number2.text));
                        });
                      },
                      child: Text('/'),
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  double divide(double number1,double number2) {
    result= number1/number2;
      return result;
  }
  double multiply(double number1,double number2) {
    result= number1*number2;
      return result;
  }
  double add(double number1,double number2) {
    result= number1+number2;
      return result;
  }
  double subtract(double number1,double number2) {
    result= number1-number2;
      return result;
  }
}
