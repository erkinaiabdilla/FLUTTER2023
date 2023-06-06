Map response = {
  'cars': [
    {'marka': 'Mersedes Benz', 'years': 2023, 'carNumber': 'EU1010'},
    {'marka': 'Toyota', 'years': 2022, 'carNumber': 'EU1011'},
    {'marka': 'Lexus', 'years': 2023, 'carNumber': 'EU1000'},
    {'marka': 'Tesla', 'years': 2023, 'carNumber': 'EU1998'}
  ],
};

class Car {
  final String marka;
  final int years;
  final String carNumber;

  Car({
    required this.marka,
    required this.years,
    required this.carNumber,
  });
  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
        marka: json['marka'],
        years: json['years'],
        carNumber: json['carNumber']);
  }
}

void main() {
  final car1 = Car(
      marka: response['cars'][0]['marka'],
      years: response['cars'][0]['years'],
      carNumber: response['cars'][0]['carNumber']);
  final car2 = Car(
      marka: response['cars'][1]['marka'],
      years: response['cars'][1]['years'],
      carNumber: response['cars'][1]['carNumber']);
  final car3 = Car(
      marka: response['cars'][2]['marka'],
      years: response['cars'][2]['years'],
      carNumber: response['cars'][2]['carNumber']);
  final car4 = Car(
      marka: response['cars'][3]['marka'],
      years: response['cars'][3]['years'],
      carNumber: response['cars'][3]['carNumber']);
  final car5 = Car.fromJson(response['cars'][0]);
  final car6 = Car.fromJson(response['cars'][1]);
  final car7 = Car.fromJson(response['cars'][2]);
  final car8 = Car.fromJson(response['cars'][3]);
  print('simple-------');
  print('${car1.marka},${car1.years},${car1.carNumber}');
  print('${car2.marka},${car2.years},${car2.carNumber}');
  print('${car3.marka},${car3.years},${car3.carNumber}');
  print('${car4.marka},${car4.years},${car4.carNumber}');
  print('factory-------');
  print('${car5.marka},${car5.years},${car5.carNumber}');
  print('${car6.marka},${car6.years},${car6.carNumber}');
  print('${car7.marka},${car7.years},${car7.carNumber}');
  print('${car8.marka},${car8.years},${car8.carNumber}');
}
