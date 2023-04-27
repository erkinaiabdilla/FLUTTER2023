import 'package:flutter/material.dart';
import 'package:sabak_6_extract_widget_and_constants/components/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Components and constants"),
      ),
      body: Center(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSgdDf6PlBrImO0rOQ6Cfm0aLxTOZ2w0MBbw&usqp=CAU"),
              const CustomButton(
                icon: Icons.phone,
                text: 'Менин телефонум',
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomButton(
                icon: Icons.mail,
                text: 'Электрондук почта',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
