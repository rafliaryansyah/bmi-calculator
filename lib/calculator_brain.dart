import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Kegemukan';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Kurang berat';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Berat badan Anda lebih tinggi dari biasanya. Cobalah berolahraga lebih banyak.';
    } else if (_bmi >= 18.5) {
      return 'Anda memiliki berat badan normal. bagus!';
    } else {
      return 'Berat badan Anda lebih rendah dari biasanya. Anda bisa makan lebih banyak.';
    }
  }
}
