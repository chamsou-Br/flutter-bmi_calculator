import 'package:bmi_calculator/component/CalculatorBrain.dart';
import 'package:bmi_calculator/component/Resabled_Card.dart';
import 'package:bmi_calculator/screens/screen1.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constante.dart';
import 'package:bmi_calculator/component/RawMaterialButton.dart';

enum Genre { Female, Male }

class Screen0 extends StatefulWidget {
  @override
  _Screen0State createState() => _Screen0State();
}

class _Screen0State extends State<Screen0> {
  Genre selectedGenre;

  int height = heightValue;
  int width = widthValue;
  int age = ageValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGenre = Genre.Female;
                        });
                      },
                      child: ResabledCard(
                        colour: selectedGenre == Genre.Female
                            ? colorThird
                            : colorSecond,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.pregnant_woman, size: 80),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Female'),
                          ],
                        ),
                      ),
                    )),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGenre = Genre.Male;
                        });
                      },
                      child: ResabledCard(
                        colour: selectedGenre == Genre.Male
                            ? colorThird
                            : colorSecond,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.ac_unit, size: 80),
                            SizedBox(
                              height: 10,
                            ),
                            Text('male'),
                          ],
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ResabledCard(
                  colour: colorSecond,
                  child: Column(
                    children: [
                      Text('Height'),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'cm',
                          )
                        ],
                      ),
                      SliderTheme(
                          data: SliderThemeData(
                            activeTrackColor: Colors.white,
                            inactiveTickMarkColor: Color(0xFF8D8E98),
                            thumbColor: Colors.pinkAccent,
                            overlayColor: Color(0x55EB1555),
                          ),
                          child: Slider(
                              value: height.toDouble(),
                              min: 120,
                              max: 220,
                              inactiveColor: Color(0xFF8D8E98),
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.round();
                                });
                              }))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ResabledCard(
                        colour: colorSecond,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Width',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  width.toString(),
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1),
                                ),
                                Text('kg')
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                ResabledIconButton(
                                  icon: Icons.add,
                                  onPresse: () {
                                    setState(() {
                                      width++;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ResabledIconButton(
                                  icon: Icons.remove,
                                  onPresse: () {
                                    setState(() {
                                      width--;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ResabledCard(
                        colour: colorSecond,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Age',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  age.toString(),
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1),
                                ),
                                Text('Years')
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                ResabledIconButton(
                                  icon: Icons.add,
                                  onPresse: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ResabledIconButton(
                                  icon: Icons.remove,
                                  onPresse: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  color: Colors.pink,
                  height: 50,
                  child: GestureDetector(
                    child: Center(
                        child: Text(
                      'calculate',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    )),
                    onTap: () {
                      CalculatorBrain calc = CalculatorBrain(
                          heightCalculator: height, widthCalculator: width);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Screen1(
                                    resultat: calc.calculateTaille(),
                                    status: calc.getResult(),
                                    note: calc.getMark(),
                                  )));
                    },
                  ))
            ]),
      ),
    );
  }
}
