import 'package:flutter/material.dart';
import 'package:toast/Login/profile_page.dart';
import 'package:toast/Login/signuppage.dart';

class Login2 extends StatefulWidget {
  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.grey[800],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(50),
                    child:  Container(
                            width: 140.0,
                            height: 140.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                image: new ExactAssetImage('assets/film.jpg'),
                                fit: BoxFit.cover,
                              ),
                            )))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Email/noTelp',
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(
                          fontFamily: 'Text',
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                          color: Colors.white),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(
                          fontFamily: 'Text',
                          fontSize: 15,
                          // fontWeight: FontWeight.bol,
                          color: Colors.white),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                  obscureText: true,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment(1, 0),
                  padding: EdgeInsets.only(top: 15, left: 20),
                  child: InkWell(
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(40),
                    shadowColor: Colors.blue,
                    color: Colors.blue,
                    elevation: 8,
                    child: GestureDetector(
                       onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Profile();
                        }));
                          },
                      child: Center(
                        child: Text("Login",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),),
                      )
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Container(
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(40),
                    shadowColor: Colors.yellow,
                    color: Colors.yellow[700],
                    elevation: 8,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return SignupPage();
                        }));
                      },
                      child: Center(
                        child: Text("NO ACCOUNT YET?SIGNUP NOW",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),),
                      )
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
