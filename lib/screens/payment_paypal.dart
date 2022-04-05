import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaypalPayment extends StatefulWidget {
  final double amount;
  final String currency;

  const PaypalPayment({Key? key, required this.amount, required this.currency})
      : super(key: key);

  @override
  State<PaypalPayment> createState() => _PaypalPaymentState();
}

class _PaypalPaymentState extends State<PaypalPayment> {
  String _loadHTML() {
    return r'''
      <html>
        <body onload="document.f.submit();">
          <form id="f" name="f" method="post" action="http://10.0.2.2:3000/createpaypalpayment">
            <input type="hidden" name="amount" value="100" />
            <input type="hidden" name="amount" value="USD" />
          </form>
        </body>
      </html>
    ''';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: WebView(
        initialUrl:  Uri.dataFromString(_loadHTML(), mimeType: 'text/html').toString(),
        javascriptMode: JavascriptMode.unrestricted,
        gestureRecognizers: Set()
          ..add(Factory<DragGestureRecognizer>(
              () => VerticalDragGestureRecognizer())),
        onPageFinished: (value) {
          print(value);
        },
        navigationDelegate: (NavigationRequest request) async {
          if (request.url.contains('http://return_url/?status=success')) {
            print('return url on success');
            Navigator.pop(context);
          }
          if (request.url.contains('http://cancel_url')) {
            Navigator.pop(context);
          }
          return NavigationDecision.navigate;
        },
      ),
    );
  }
}
