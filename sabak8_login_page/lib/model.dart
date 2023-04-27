import 'package:flutter/material.dart';

class Student {
  Student(
      {required this.id,
      required this.name,
      required this.surName,
      required this.age,
      this.phone,
      required this.email,
      this.address,
      required this.group,
      this.gender,
      this.marriage});

  final int id;
  final String name;
  final String surName;
  int age;
  String? phone;
  final String email;
  final String? address;
  int group;
  final String? gender;
  String? marriage;
}

final bilal = Student(
    id: 1,
    name: 'Bilal',
    surName: 'kurbanov',
    age: 24,
    email: ' bilal@mail',
    address: 'Bishkek',
    gender: 'male',
    group: 1);

final abdulla = Student(
    id: 2,
    name: 'Abdulla',
    surName: 'Eldarov',
    age: 25,
    email: ' abdulla@mail',
    phone: '+996700254879',
    address: 'Batken',
    group: 1);

final eldana = Student(
    id: 3,
    name: 'Eldana',
    surName: 'Kanybekova',
    age: 26,
    email: ' eldana@mail',
    address: 'Bishkek',
    marriage: 'single',
    gender: 'female',
    group: 1);

final zuli = Student(
    id: 4,
    name: 'Zuli',
    surName: 'Talantova',
    age: 27,
    email: ' zuli@mail',
    address: 'Batken',
    phone: '+996508563214',
    group: 1);

final imran = Student(
    id: 5,
    name: 'Imran',
    surName: 'Asylbekov',
    age: 20,
    email: ' imran@mail',
    address: 'Osh',
    phone: '+996200589632',
    group: 1);

final alinur = Student(
    id: 6,
    name: 'Alinur',
    surName: 'Mirbekov',
    age: 23,
    email: ' bilal@mail',
    address: 'Tokmok',
    marriage: 'single',
    phone: '+996505982147',
    group: 1);

List studentter = <Student>[
  bilal,
  abdulla,
  eldana,
  zuli,
  imran,
  alinur,
];
