import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
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
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
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
                  MaterialStateProperty.resolveWith((states) => Colors.indigo),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                      image: NetworkImage('https://hubandspokecreative.com/blog/wp-content/uploads/2017/04/stripe-logo.jpg'),
                      height: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Stripe Payment',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}