import 'dart:math';

class BmiCalculator {
  double bmi({required double height, required int weight}) {
    final res = weight / pow(height / 100, 2);
    return res;
  }

  String bmiResult(res) {
    if (res <= 18.5) {
      // print('Сиз арыксыз:$res');
      return 'Сиз арыксыз';
    } else if (res >= 18.6 && res >= 25) {
      // print('Сиз нормалдуусуз:$res');
      return 'Нормалдуу';
    } else if (res >= 25.1 && res <= 30) {
      // print('Сиз ашыкча салмактуусуз:$res');
      return 'Сизде ашыкча салмак бар';
    } else {
      (res <= 30);
      // print('Сиз семизсиз:$res');
      return 'Сиз семизсиз';
    }
  }

  String bmiDescription(res) {
    if (res <= 18.5) {
      // print('Сиз арыксыз:$res');
      return 'Тамактанууга туура конул коюнуз';
    } else if (res >= 18.6 && res >= 25) {
      // print('Сиз нормалдуусуз:$res');
      return ' Сиздин дене салмагыныз нормалдуу азаматсыз';
    } else if (res >= 25.1 && res <= 30) {
      // print('Сиз ашыкча салмактуусуз:$res');
      return 'Сиз ашыкча салмактуу экенсиз,спорт менен алектениниз';
    } else {
      (res <= 30);
      // print('Сиз семизсиз:$res');
      return 'Сиз семиз экенсиз,срочно фитнес клубга барыныз,аз жениз!';
    }
  }
}
