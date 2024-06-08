import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import 'package:websocketflutter/screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(
        channel: IOWebSocketChannel.connect("ws://echo.websocket.org"),
      ),
    );
  }
}
