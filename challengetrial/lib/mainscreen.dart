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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Container(
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
            SizedBox(height: 30),
            Container(),
          ],
        ),
      ),
    );
  }
}
