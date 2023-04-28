import 'package:flutter/material.dart';

class Student {
  Student(
      {required this.id,
      required this.image,
      required this.name,
      required this.surName,
      required this.age,
      this.phone,
      required this.email,
      required this.password,
      this.address,
      required this.group,
      this.gender,
      this.marriage});

  final int id;
  final String image;
  final String name;
  final String surName;
  int age;
  String? phone;
  final String email;
  final String password;
  final String? address;
  int group;
  final String? gender;
  String? marriage;
}

final bilal = Student(
    id: 1,
    name: 'bilal',
    surName: 'kurbanov',
    age: 24,
    email: 'bilal@mail',
    password: 'bilal1',
    address: 'bishkek',
    gender: 'male',
    group: 1,
    image: 'assets/images/bilal.jpg');

final abdulla = Student(
    id: 2,
    name: 'abdulla',
    surName: 'Eldarov',
    age: 25,
    email: 'abdulla@mail',
    password: 'abdulla1',
    phone: '+996700254879',
    address: 'batken',
    group: 1,
    image: 'assets/images/bilal.jpg');

final eldana = Student(
    id: 3,
    name: 'eldana',
    surName: 'kanybekova',
    age: 26,
    email: ' eldana@mail',
    password: 'eldana1',
    address: 'bishkek',
    marriage: 'single',
    gender: 'female',
    group: 1,
    image: 'assets/images/bilal.jpg');

final zuli = Student(
    id: 4,
    name: 'zuli',
    surName: 'talantova',
    age: 27,
    email: 'zuli@mail',
    password: 'zuli1',
    address: 'batken',
    phone: '+996508563214',
    group: 1,
    image: 'assets/images/bilal.jpg');

final imran = Student(
    id: 5,
    name: 'imran',
    surName: 'asylbekov',
    age: 20,
    email: 'imran@mail',
    password: 'imran1',
    address: 'osh',
    phone: '+996200589632',
    group: 1,
    image: 'assets/images/bilal.jpg');

final alinur = Student(
  id: 6,
  name: 'alinur',
  surName: 'mirbekov',
  age: 23,
  email: 'alinur@mail',
  password: 'alinur1',
  address: 'tokmok',
  marriage: 'single',
  phone: '+996505982147',
  group: 1,
  image: 'assets/images/bilal.jpg',
);
