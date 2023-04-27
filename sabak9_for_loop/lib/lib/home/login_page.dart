import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:const Color.fromARGB(255, 242, 243, 241) ,
      appBar: AppBar(
        title: Center(child: Text("LoginPage".toUpperCase())),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FlutterLogo(size: 70),
              Text(
                "Done with Flutter",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                    color: Colors.green),
              ),
            ],
          ),
          const Center(
              child: Text(
            "Welcome to Supano!",
            style: TextStyle(
                fontSize: 27, fontWeight: FontWeight.w600, color: Colors.green),
          )),
          const Text(
            "Register please",
            style: TextStyle(color: Colors.green),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Name",
                labelStyle: TextStyle(color: Colors.green),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Gmail",
                labelStyle: TextStyle(color: Colors.green),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.green),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(150, 40),
                backgroundColor: const Color.fromARGB(234, 86, 171, 87)),
            onPressed: () {},
            child: const Text(
              "Login",
            ),
          ),
        ],
      ),
    );
  }
}
