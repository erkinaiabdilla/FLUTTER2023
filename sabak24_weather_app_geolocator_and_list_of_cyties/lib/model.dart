class Weather {
  Weather({
    required this.temp,
    required this.name,
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  final int id;
  final String main;
  final String description;
  final String icon;
  final double temp;
  final String name;
}
