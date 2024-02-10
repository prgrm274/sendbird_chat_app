import 'package:flutter/material.dart';
import 'package:sendbird_chat_app/channel/channel_list_view.dart';
import 'package:sendbird_chat_app/channel/create_channel_view.dart';
import 'package:sendbird_chat_app/login/login_view.dart';
import 'package:sendbird_sdk/sdk/sendbird_sdk_api.dart';

// void main() {
//   runApp(const MyApp());
// }

Future<void> main() async {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() => MyAppState();
}
class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sendbird Demo',
      initialRoute: "/login",
      routes: <String, WidgetBuilder>{
        '/login': (context) => const LoginView(),
        '/channel_list': (context) => const ChannelListView(),
        '/create_channel': (context) => const CreateChannelView(),
      },
      theme: ThemeData(
          fontFamily: "Gellix",
          primaryColor: const Color(0xff742DDD),
          textTheme: const TextTheme(
              headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
              headline6:
              TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold)),
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Color(0xff732cdd),
            selectionHandleColor: Color(0xff732cdd),
            selectionColor: Color(0xffD1BAF4),
          )),
    );
  }
}
