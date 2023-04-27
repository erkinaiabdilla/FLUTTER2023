import 'package:flutter/material.dart';
import 'package:sabak10_end_for_loop/home/user_page.dart';
import 'package:sabak10_end_for_loop/model.dart';

final studentter = <Student>[bilal, abdulla, eldana, zuli, imran, alinur];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _name;
  String? _gmail;
  // String? _password;

  //Биринчи вариант
  void controlNameEmailPassword(
    String name,
    String email,
  ) {
    int index = 0;
    for (final student in studentter) {
      index++;
      //index=2;
      if (name == student.name && email == student.email
          // password == student.password
          ) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserPage(
              student: student.name,
            ),
          ),
        );
        break;
      } else {
        if (index == studentter.length) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Сиздин атыныз же почтаныз туура эмес!"),
            ),
          );
        } else {
          continue;
        }
      }
    }
  }

// Экинчи вариант
  /* void controlNameEmailPassword(
    String name,
    String email,
  ) {
    for (int i = 0; i <= studentter.length; i++) {
      if (name == studentter[i] && email == studentter[i].email ) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserPage(),
          ),
        );
        break;
      } else {
        if (i == studentter.length) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Сиздин атыныз же почтаныз туура эмес!!"),
            ),
          );
        }
      }
    }
  }
}*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 243, 241),
      appBar: AppBar(
        title: Center(
          child: Text(
            "LoginPage".toUpperCase(),
          ),
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1624466548064-b98215a03cf3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTh8fHZlcnRpY2FsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 55,
              top: 35,
              right: 55,
              bottom: 40,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(0, 155, 231, 224).withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
              ),
              width: double.infinity,
              height: double.infinity,
              child: Column(
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
                          fontSize: 27,
                          fontWeight: FontWeight.w600,
                          color: Colors.green),
                    ),
                  ),
                  const Text(
                    "Register please",
                    style: TextStyle(color: Colors.green),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      onChanged: (String value) {
                        _name = value;
                        print("value ishtedi $value");
                        print("value ishtedi $_name");
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Name",
                        labelStyle: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      onChanged: (String value) {
                        _gmail = value;
                        print("value ishtedi $value");
                        print("value ishtedi $_gmail");
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Gmail",
                        labelStyle: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      onChanged: (String value) {
                        // _password = value;
                        //print("value ishtedi $value");
                        // print("value ishtedi $_password");
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "password",
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
                      backgroundColor: const Color.fromARGB(234, 86, 171, 87),
                    ),
                    onPressed: () {
                      controlNameEmailPassword(_name!, _gmail!);
                      // print('$_gmail');
                    },
                    child: const Text(
                      "Login",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}