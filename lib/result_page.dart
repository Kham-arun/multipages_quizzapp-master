import 'package:flutter/material.dart';
import 'main.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.score});
  final String score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  'Your intelligent Score',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.blueGrey,
                    fontFamily: 'Mali',
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  score,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 50.0,
                    fontFamily: 'Mali',
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              //TODO 3/: ใช้ Navigator.push เพื่อไปยัง FirstScreen() โดยไม่ต้องส่งค่าใดๆไปด้วย
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FirstScreen()));
            },
            child: Expanded(
              child: Container(
                child: const Text(
                  'HOME',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Mali',
                  ),
                ),
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
