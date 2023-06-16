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
  String gender = 'male';
  String defweight = 'Kg';
  String defheight = 'Metres';
  late FocusNode myFocusNode;
  //int age, weight, height;
  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  void dispose() {
    // Clean up the focus node when the Form is disposed.
    myFocusNode.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsetsDirectional.all(20),
                height: 180,
                width: width,
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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: () {
                    if (gender == 'male')
                      gender = 'female';
                    else
                      gender = 'male';
                    setState(() {});
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.purple.withAlpha(90),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      AnimatedAlign(
                        alignment: (gender == 'male')
                            ? (Alignment.centerLeft)
                            : (Alignment.centerRight),
                        duration: Duration(milliseconds: 600),
                        curve: Curves.fastLinearToSlowEaseIn,
                        child: Container(
                          height: 50,
                          width: (MediaQuery.of(context).size.width / 2) - 30,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withAlpha(120),
                                offset: Offset(0, 0),
                                blurRadius: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Male',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Female',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Age:     ',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Container(
                        height: 20,
                        width: 75,
                        child: TextField(
                          textAlign: TextAlign.center,
                          focusNode: myFocusNode,
                          style: TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1)),
                              hintText: '0',
                              hintStyle: TextStyle(
                                  fontSize: 20, color: Colors.blueGrey)),
                        ),
                      ),
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
                      SizedBox(
                        width: 60,
                      ),
                      Container(
                        height: 20,
                        width: 75,
                        child: TextField(
                          textAlign: TextAlign.center,
                          focusNode: myFocusNode,
                          style: TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1)),
                              hintText: '0',
                              hintStyle: TextStyle(
                                  fontSize: 20, color: Colors.blueGrey)),
                        ),
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
                      SizedBox(
                        width: 60,
                      ),
                      Container(
                        height: 20,
                        width: 75,
                        child: TextField(
                          textAlign: TextAlign.center,
                          focusNode: myFocusNode,
                          style: TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1)),
                              hintText: '0',
                              hintStyle: TextStyle(
                                  fontSize: 20, color: Colors.blueGrey)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  SizedBox(
                      width: width,
                      height: 50,
                      child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.orange),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          child: Text('Calculate'))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
