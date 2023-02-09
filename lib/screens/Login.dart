import 'package:flutter/foundation.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_lemotcell/screens/Otp.dart';

import '../component/custom_input.dart';

class LoginScreens extends StatefulWidget {
  LoginScreens({Key? key}) : super(key: key);

  @override
  State<LoginScreens> createState() => _LoginScreensState();
}

class _LoginScreensState extends State<LoginScreens> {
  bool isSetuju = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
      ]),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Image.asset(
              "assets/img/ilustrasi1.png",
              width: 120,
              height: 120,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Silahkan Masuk Dengan Nomor LemotCell Kamu",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 30,
            ),
            Custominput(),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 24,
              width: 24,
              child: Checkbox(
                  value: isSetuju,
                  onChanged: (value) {
                    setState(() {
                      isSetuju = value!;
                    });
                  }),
            ),
            Flexible(
              child: Text.rich(TextSpan(
                  text: "Saya Menyetujui",
                  style: TextStyle(fontSize: 15),
                  children: [
                    TextSpan(
                        text: "  Syarat, Ketentuan, dan Privasi",
                        style: TextStyle(color: Colors.red)),
                    TextSpan(text: "  LemotCell")
                  ])),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              minWidth: double.infinity,
              color: Colors.red,
              height: 50,
              onPressed: () {
                // pindah ke halaman simple
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OtpScreens()));
              },
              child: Text(
                "Next",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
