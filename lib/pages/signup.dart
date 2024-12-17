import 'package:flutter/material.dart';
class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.lightBlue,
        title: const Text(
          'Sign Up',
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
              margin: const EdgeInsets.only(bottom: 20),
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
                  hintText: "Choose Username",
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 7),
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
                  hintText: "Enter Email",
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
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
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    hintText: "Create Password",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility)),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 5, 0, 15),
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
                    hintText: "Password : again",
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
                "Sign up",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("already have an account ? "),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context, "/ Login");
                    },
                    child: const Text(
                      " Log in",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context, "/");
          },
          backgroundColor: Colors.purple,
          child: const Text("back")),
    );
  }
}
