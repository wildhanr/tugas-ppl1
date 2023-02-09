import 'package:flutter/material.dart';
import 'package:flutter_application_lemotcell/screens/Login.dart';
import 'package:flutter_application_lemotcell/screens/Otp.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.green),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            // pindah ke halaman simple
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OtpScreens()));
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          )),
                      IconButton(
                          onPressed: () {
                            // pindah ke halaman simple
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreens()));
                          },
                          icon: Icon(
                            Icons.logout,
                            color: Colors.white,
                            size: 30,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'My\nProfile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontFamily: 'Nisebuschgardens',
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Container(
                    height: height * 0.43,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        double innerHeight = constraints.maxHeight;
                        double innerWidth = constraints.maxWidth;
                        return Stack(
                          fit: StackFit.expand,
                          children: [
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: innerHeight * 0.72,
                                width: innerWidth,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 80,
                                    ),
                                    Text(
                                      'WildhanR07',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 0, 0),
                                        fontFamily: 'Nunito',
                                        fontSize: 37,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              'Sisa Pulsa',
                                              style: TextStyle(
                                                color: Colors.grey[700],
                                                fontFamily: 'Nunito',
                                                fontSize: 25,
                                              ),
                                            ),
                                            Text(
                                              '35.000',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    39, 105, 171, 1),
                                                fontFamily: 'Nunito',
                                                fontSize: 25,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 25,
                                            vertical: 8,
                                          ),
                                          child: Container(
                                            height: 50,
                                            width: 3,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'Paketan ',
                                              style: TextStyle(
                                                color: Colors.grey[700],
                                                fontFamily: 'Nunito',
                                                fontSize: 25,
                                              ),
                                            ),
                                            Text(
                                              'Paket\nOMG 12GB',
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 0, 0),
                                                fontFamily: 'Nunito',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              child: Center(
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/foto wildhan.jpeg'),
                                  radius: innerWidth * 0.23,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 110,
                              right: 20,
                              child: Icon(
                                Icons.settings,
                                color: Colors.grey[700],
                                size: 30,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: height * 0.77,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Metode Pembayaran',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 27,
                              fontFamily: 'Nunito',
                            ),
                          ),
                          Divider(
                            thickness: 2.5,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: height * 0.15,
                            width: width * 0.8,
                            decoration: BoxDecoration(
                                color: Color(0xFF2196F3),
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image: AssetImage('assets/dana.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: height * 0.15,
                            width: width * 0.8,
                            decoration: BoxDecoration(
                                color: Color(0xFFccd1d9),
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image: AssetImage('assets/gopay.png'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: height * 0.15,
                            width: width * 0.8,
                            decoration: BoxDecoration(
                                color: Color(0xFF2196F3),
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/img/shopeepay.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: height * 0.15,
                            width: width * 0.8,
                            decoration: BoxDecoration(
                                color: Color(0xFFccd1d9),
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image: AssetImage('assets/QRIS.png'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
