import 'package:flutter/material.dart';

class Custominput extends StatelessWidget {
  const Custominput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nomor HP",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                hintText: "Cth 081xxx",
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey))),
          )
        ],
      ),
    );
  }
}
