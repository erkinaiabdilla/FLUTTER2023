import 'package:sabak15_quize_app/model.dart';

class UseQuize {
  int index = 0;
  List<QuizeModel> surooJoop = [
    QuizeModel(suroo: 'Is happiness in Islam?', joop: true),
    QuizeModel(suroo: 'Prophet Muhammad was born around 570', joop: true),
    QuizeModel(suroo: 'You will not die you are eternal', joop: false),
    QuizeModel(suroo: 'Everything is created by Allah', joop: true),
    QuizeModel(suroo: 'Is this the only world?', joop: false),
    QuizeModel(suroo: 'Heaven is under mothers feet', joop: true),
    QuizeModel(suroo: 'Can you stop time?', joop: false),
  ];
  String surooAluu() {
    return surooJoop[index].suroo;
  }

  bool joopAluu() {
    return surooJoop[index].joop;
  }

  void nextQuestion() {
    if (index <= surooJoop.length) {
      index++;
    }
  }

  bool isFinished() {
    if (surooJoop[index] == surooJoop.last) {
      return true;
    } else {
      return false;
    }
  }

  void indexZero() {
    index = 0;
  }
}
