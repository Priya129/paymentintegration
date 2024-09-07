import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'const.dart';
import 'homepage.dart';

void main() async{
  await _setup();

  runApp(MyApp());
}

Future<void> _setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = stripePublishableKey;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Store',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}


