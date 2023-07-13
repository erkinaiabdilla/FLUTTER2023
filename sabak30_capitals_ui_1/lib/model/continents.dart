import 'package:flutter/material.dart';
import 'package:sabak30_capitals_ui_1/constants/app_colors.dart';

class Continents {
  const Continents({
    required this.name,
    required this.image,
    required this.color,
  });
  final String name;
  final String image;
  final Color color;
}

const asia = Continents(
  name: 'Asia',
  image: 'asia',
  color: Color.fromARGB(255, 249, 184, 87),
);
const africa =
    Continents(name: 'Africa', image: 'africa', color: AppColors.africaColor);
const northamerica = Continents(
    name: 'North America',
    image: 'northamerica',
    color: AppColors.northAmericaColor);
const southamerica = Continents(
    name: 'South America',
    image: 'southamerica',
    color: AppColors.southAmericaColor);
const australia = Continents(
    name: 'Australia', image: 'australia', color: AppColors.australiaColor);
const europe =
    Continents(name: 'Europe', image: 'europe', color: AppColors.europeColor);

List<Continents> continentsList = [
  asia,
  africa,
  northamerica,
  southamerica,
  australia,
  europe,
];
