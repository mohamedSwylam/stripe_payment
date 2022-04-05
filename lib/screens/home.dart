import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paypal Payment'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextButton(
            onPressed: () {
              // lets assume that product price is 5.99 usd
             /* Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaypalPayment(
                      amount: 5.99,
                      currency: 'USD',
                    ),
                  ));*/
            },
            style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.resolveWith((states) => Colors.blue),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(
                  image: NetworkImage('https://raw.githubusercontent.com/ManthanSutariya11/flutter_paypal_payment/master/frontend/paypalfrontend/assets/paypal.png'),
                  height: 40,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Pay with Paypal',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}