import 'dart:math';

class CalculatorBrain {
  // final int inheight;
  // final int inweight;

  double _bmi = 0;

  // to calculate bmi
  double calculateBMI({required double inheight, required double inweight}) {
    _bmi = inweight / pow(inheight / 100, 2);
    return double.parse(_bmi.toStringAsFixed(1));
  }

  // bmi string result
  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
