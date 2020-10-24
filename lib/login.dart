import 'package:flutter/material.dart';
import 'package:toast/main_page.dart';
import 'package:toast/tost.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        color: Colors.tealAccent,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Center(
                  child: Image(
                image: AssetImage(
                  "assets/flutter.jpg",
                ),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Selamat Datang",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Silakan Masuk",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87),
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    size: 40,
                  ),
                  hintText: "UserName",
                  hintStyle: TextStyle(color: Colors.black87),
                  labelText: "UserName",
                  labelStyle: TextStyle(color: Colors.black87)),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 40,
                  ),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.black87),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.black87)),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.black87,
              elevation: 5,
              child: Container(
                height: 50,
                child: RaisedButton(
                  splashColor: Colors.black,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Toast();
                    }));
                  },
                  child: Center(
                    child: Text(
                      "Masuk lah",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
