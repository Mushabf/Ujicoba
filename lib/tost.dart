import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:toast/login.dart';
import 'package:toast/main_page.dart';

class Toast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ini Toast"),
        ),
        body: Container(
          child: Center(
            child: Column(children: <Widget>[
              RaisedButton(child: Text("Layouting"), onPressed: toastt),
              RaisedButton(
                  child: Text("Login"),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text("PASSWORD SALAH"),
                              content: Text("Password Salah"),
                              actions: <Widget>[
                                FlatButton(onPressed: () {}, child: Text("ok")),
                              ],
                            ));
                  }),
              RaisedButton(
                child: Text(
                  "Toast",
                ),
                color: Colors.red,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MainPage();
                  }));
                },
              ),
               RaisedButton(
                child: Text(
                  "Logout",
                ),
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Login();
                  }));
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

void toastt() {
  Fluttertoast.showToast(msg: "Coba lagi");
}
