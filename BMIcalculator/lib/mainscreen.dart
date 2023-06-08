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
  bool buttonindex = false;
  List<String> chipcontent = [
    'Male',
    'Female',
  ];
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < chipcontent.length; i++)
                  chips(
                    id: i,
                    name: chipcontent[i],
                  )
              ],
            ),
            SizedBox(
              height: 70,
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
                  ],
                ),
                SizedBox(
                  height: 80,
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

  Widget chips({
    int id = 0,
    String name = 'Male',
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 180,
      child: TextButton(
        onPressed: () {
          buttonindex = true;
        },
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor:
              (buttonindex = true) ? (Colors.purple) : (Colors.pink),
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          name,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
