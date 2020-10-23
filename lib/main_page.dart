import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MainPage"),
        ),
        body: ListView(
          children: <Widget>[
            Row(children: <Widget>[
              Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RaisedButton(
                      child: Text("Warning"),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: Text("WARNING"),
                                  content: Text("JANGAN DIBUKA COY"),
                                  actions: <Widget>[
                                    OutlineButton(
                                        onPressed: () {}, child: Text("EXIT")),
                                  ],
                                ));
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      child: Text("Login"),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: Text("Login"),
                                  content: Text("Password Salah"),
                                  actions: <Widget>[
                                    FlatButton(
                                        onPressed: () {}, child: Text("ok")),
                                    FlatButton(
                                        onPressed: () {}, child: Text("yes"))
                                  ],
                                ));
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text("AlertDialog"),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("Toast"),
                                content: Text("Ini ALERTDIALOG"),
                                actions: <Widget>[
                                  FlatButton(
                                      onPressed: () {}, child: Text("yes")),
                                  FlatButton(
                                      onPressed: () {}, child: Text("Cencel")),
                                  FlatButton(
                                      onPressed: () {}, child: Text("exit")),
                                  FlatButton(
                                      onPressed: () {}, child: Text("exit"))
                                ],
                              ));
                    },
                  ),
                )
              ]),
            ]),
          ],
        ));
  }
}
