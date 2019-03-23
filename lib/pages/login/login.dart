import 'package:flutter/material.dart';
import 'package:new_wra/pages/login/styles.dart';
import 'package:new_wra/pages/widget.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
  with TickerProviderStateMixin{

  Future<bool> _onWillPop() {
    return showDialog(
      context: context,
      // ignore: deprecated_member_use
      child: new AlertDialog(
        title: new Text('Are you sure?'),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          new FlatButton(
            onPressed: () =>
                Navigator.pushReplacementNamed(context, "/home"),
            child: new Text('Yes'),
          ),
        ],
      ),
    ) ??
    false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: backgroundImage
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  const Color.fromRGBO(0, 146, 199, 0.8),
                  const Color.fromRGBO(0, 51, 63, 0.9),
                ],
                stops: [0.2, 1.0],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 1.0)
              )
            ),
            child: ListView(
              padding: const EdgeInsets.all(0.0),
              children: <Widget>[
                Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Tick(),
                        FormContainer(),
                        SignUp(),
                        Container(
                          height: 15.0,
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 50.0),
                      child: RaisedButton(
                        child: const Text(
                          'Sign In',
                          textScaleFactor: 1.2,
                        ),
                        color: Colors.indigoAccent,
                        elevation: 16.0,
                        splashColor: Colors.blueGrey,
                        onPressed: () {
                          doLogin(context);
                        },
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  doLogin(BuildContext context) {
    //TODO authenticate database and perform error checking
    //TODO add oauth for social media logins
    Navigator.pushNamed(context, "/home");
  }

}