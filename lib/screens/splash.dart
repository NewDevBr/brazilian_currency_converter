import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Splash extends StatefulWidget {
  @override
  _Splash createState() => _Splash();
}

class _Splash extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      backgroundColor: Colors.green[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.monetization_on,
              size: 150,
              color: Colors.white,
            ),
            Text(
              'Welcome to Brazilian currency converter!',
              style: TextStyle(color: Colors.white, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    Future.delayed(Duration(seconds: 2)).then((event) {
      Navigator.pushReplacementNamed(context, "/dashboard");
    });
    super.didChangeDependencies();
  }
}
