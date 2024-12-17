import 'package:flutter/material.dart';
class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context, "/");
          },
          backgroundColor: Colors.purple,
          child: const Text("back"),
        ),
        appBar: AppBar(
          elevation: 5,
          backgroundColor: Colors.lightBlue,
          title: const Text(
            'Log in',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(333),
                  ),
                ),
                height: 40,
                width: 255,
                child: const TextField(
                  // obscureText: true,
                  // keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(333),
                  ),
                ),
                height: 40,
                width: 255,
                child: const TextField(
                  obscureText: true,
                  // keyboardType: TextInputType.number,
                  // textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility)),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/pa");
                },
                style: const ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(Color.fromARGB(255, 39, 117, 176)),
                ),
                child: const Text(
                  "Log in",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(" Do not have an account ? "),
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context, "/ Signup");
                      },
                      child: const Text(
                        " Sign up",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ],
          ),
        ));
  }
}
