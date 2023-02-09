import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_lemotcell/screens/Dashboard.dart';
import 'package:flutter_application_lemotcell/screens/Login.dart';
import 'package:flutter_application_lemotcell/screens/profile.dart';

import '../component/custom_input.dart';

class OtpScreens extends StatelessWidget {
  const OtpScreens({Key? key}) : super(key: key);

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
              "Masukan kode unik yang kami kirim",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Silahkan periksa SMS kamu dan masukan kode unik yang kami kirimkan ke 081331159212",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Kode OTP",
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Cek SMS yang kami Kirim",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey))),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: Text.rich(TextSpan(
                  text: "Tidak Menerima SMS kode OTP ?",
                  style: TextStyle(fontSize: 16),
                  children: [
                    TextSpan(
                        text: "   Kirim Ulang !",
                        style: TextStyle(color: Colors.red)),
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
                    MaterialPageRoute(builder: (context) => profile()));
              },
              child: Text(
                "Next",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {
                    // pindah ke halaman simple
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => dashboardscreens()));
                  },
                  child: Text("Back"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
