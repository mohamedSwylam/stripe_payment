import 'package:flutter/material.dart';
import 'package:stripe_payment/screens/existing-cards.dart';
import 'package:stripe_payment/screens/home.dart';
import 'package:stripe_payment/screens/pay_with_new_card.dart';
import 'package:stripe_payment/service/payment/payment-service.dart';


void main() {
  StripeService.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder> {
        '/existing-cards': (BuildContext context) => ExistingCardsPage(key:  Key('ExistingCardPage')),
        '/pay-with-new-card': (BuildContext context) => PayWithNewCardPage(key:  Key('PayWithNewCardPage'))
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}