import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            CircleAvatar(
              radius: 50,
              child: Icon(Icons.person),
            ),
            Text("Create an account"),
            Text("LoginLoginLoginLoginLogin"),

            Row(
              children: [
                Icon(Icons.apple),
                Text("apple"),
                Icon(Icons.email),
                Text("email"),
              ],
            ),
            Row(
              children: [
                Expanded(child: Divider()),
                Text("or"),
                Expanded(child: Divider()),
              ],
            ),
            Text("name"),
            TextField(),
            Text("email"),
            TextField(),
            Text("password"),
            TextField(),
            Row(
              children: [
                Text("agree to the:"),
                TextButton(
                  onPressed: () {},
                  child: Text("Terms and conditions"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
