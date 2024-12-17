import 'package:flutter/material.dart';

class Wellcome extends StatelessWidget {
  const Wellcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const  CircleAvatar(backgroundImage: AssetImage("assetName"),),
        elevation: 5,
        backgroundColor: Colors.lightBlue,
        // leading:  IconButton(onPressed: (){}, icon: const Icon(Icons.language)),
        title: const Text(
          'Skype',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/pol");
            },
            icon: const Icon(Icons.policy)),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Wellcome !",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/ Login");
                },
                style: const ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(Color.fromARGB(255, 39, 117, 176)),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/ Signup");
                  },
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(255, 39, 117, 176)),
                  ),
                  child: const Text(
                    "SIGNUP",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
              ),
            ),
            // Row(
            //   children: [
            // svgPicture.assets
            //   ],
            // )

            const SizedBox(
              height: 150,
            ),
            const SizedBox(
              width: 255,
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: Colors.purple,
                  )),
                  Text("OR"),
                  Expanded(
                      child: Divider(
                    color: Colors.purple,
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
