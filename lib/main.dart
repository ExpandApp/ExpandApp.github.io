import 'package:flutter/material.dart';
import 'package:linkexp/screens/home/home_link_exp2_screen.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  setupLocators();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Link Exp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //primarySwatch: Constants.redAirbnb,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
        ),
      ),
      home: HomeLinkExp2Sreen(),
    );
  }
}

void setupLocators() {}

Future<void> initializeParse() async {
  const serverLiveQueryURL = 'https://expandapp.b4a.io';

  await Parse().initialize(
    'VujQf5D3Q6leD1wLb4mFWWiGVVTlevws8WUKszZ7',
    'https://parseapi.back4app.com/',
    clientKey: 'TBmhAQa7qvQ09IIZusqT81CjMbp5s0leVofytcRz',
    autoSendSessionId: true,
    debug: true,
    liveQueryUrl: serverLiveQueryURL,
  );
}
