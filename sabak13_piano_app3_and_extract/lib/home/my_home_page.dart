import 'package:flutter/material.dart';
import 'package:sabak13_piano_app3_and_extract/components/container_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Seven regions of Kyrgyzstan'),
        ),
        body: Center(
          child: Column(
            children: const [
              ContainerWidget(
                ContainerdinTexti: 'Chuy Region',
                ContainerdinTexti2: 'Capital Bishkek',
                icon: Icons.account_balance,
                image:
                    'https://upload.wikimedia.org/wikipedia/commons/5/5b/Flag_of_Bishkek.png',
              ),
              SizedBox(height: 10),
              ContainerWidget(
                ContainerdinTexti: 'Batken Region',
                ContainerdinTexti2: 'Capital Batken',
                icon: Icons.flag_circle,
                image:
                    'https://w1.pngwing.com/pngs/703/477/png-transparent-cartoon-gold-medal-batken-coat-of-arms-kyrgyz-language-kyrgyz-people-flag-batken-district-jalalabad.png',
              ),
              SizedBox(height: 10),
              ContainerWidget(
                ContainerdinTexti: 'Jalal-Abad Region',
                ContainerdinTexti2: 'Capital Jalal-Abad',
                icon: Icons.flag_circle,
                image:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Flag_of_Jalal-Abad_region.png/1200px-Flag_of_Jalal-Abad_region.png',
              ),
              SizedBox(height: 10),
              ContainerWidget(
                ContainerdinTexti: 'Naryn Region',
                ContainerdinTexti2: 'Capital Naryn',
                icon: Icons.flag_circle,
                image:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/%D0%9D%D0%B0%D1%80%D1%8B%D0%BD_%D1%88%D0%B0%D0%B0%D1%80%D1%8B%D0%BD%D1%8B%D0%BD_%D1%82%D1%83%D1%83%D1%81%D1%83.svg/1200px-%D0%9D%D0%B0%D1%80%D1%8B%D0%BD_%D1%88%D0%B0%D0%B0%D1%80%D1%8B%D0%BD%D1%8B%D0%BD_%D1%82%D1%83%D1%83%D1%81%D1%83.svg.png',
              ),
              SizedBox(height: 10),
              ContainerWidget(
                ContainerdinTexti: 'Osh Region',
                ContainerdinTexti2: 'Capital Osh',
                icon: Icons.flag_circle,
                image:
                    'https://w7.pngwing.com/pngs/159/395/png-transparent-flag-of-kyrgyzstan-crest.png',
              ),
              SizedBox(height: 10),
              ContainerWidget(
                ContainerdinTexti: 'Talas Region',
                ContainerdinTexti2: 'Capital Talas',
                icon: Icons.flag_circle,
                image:
                    'https://upload.wikimedia.org/wikipedia/commons/3/38/Coat_of_arms_of_Talas_city.png',
              ),
              SizedBox(height: 10),
              ContainerWidget(
                  ContainerdinTexti: 'Yssyk-Kul Region',
                  ContainerdinTexti2: 'Capital Karakol',
                  icon: Icons.flag_circle,
                  image:
                      'https://w7.pngwing.com/pngs/159/395/png-transparent-flag-of-kyrgyzstan-crest.png'),
            ],
          ),
        ),
      ),
    );
  }
}
