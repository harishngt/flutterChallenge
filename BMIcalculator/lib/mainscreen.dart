import 'package:flutter/material.dart';

void main() {
  runApp(homepg());
}

class homepg extends StatefulWidget {
  const homepg({super.key});

  @override
  State<homepg> createState() => _homepgState();
}

class _homepgState extends State<homepg> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsetsDirectional.all(20),
              height: 180,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.purple),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Interesting for you:',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25)),
                  SizedBox(height: 15),
                  Text('Yoga: benefits and risks',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20)),
                  SizedBox(height: 50),
                  Text('Tap to read more',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15)),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              child: Text(
                "BMI Calculator",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Stack(
                children: [
                  Container(
                    height: 40,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.purple.withAlpha(100)),
                  ),
                  AnimatedPositioned(
                    duration: Duration(seconds: 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: selected ? 200 : 150,
                          child: Text("Male"),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: selected
                                  ? Colors.purple
                                  : Colors.purple.withAlpha(0)),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: selected ? 200 : 150,
                          child: Text("Female"),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: selected
                                ? Colors.purple
                                : Colors.purple.withAlpha(0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'Age:',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    // Expanded(
                    //   child: TextField(
                    //     decoration: InputDecoration(
                    //         enabledBorder: InputBorder(
                    //             borderSide: BorderSide(
                    //                 color: Colors.white.withAlpha(0))),
                    //         focusedBorder: InputBorder(
                    //             borderSide: BorderSide(color: Colors.white)),
                    //         border: UnderlineInputBorder(
                    //             borderSide: BorderSide(
                    //                 color: Colors.white.withAlpha(0))),
                    //         hintText: 'Enter Age'),
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  children: [
                    Text(
                      'Weight:',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  children: [
                    Text(
                      'Height:',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                SizedBox(
                    width: 400,
                    child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.orange),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white)),
                        child: Text('Calculate'))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
