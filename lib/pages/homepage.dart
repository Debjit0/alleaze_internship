import 'package:alleaze_internship/pages/login.dart';
import 'package:alleaze_internship/providers/authprovider.dart';
import 'package:alleaze_internship/utils/routers.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://github.com/debjit0'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
              onPressed: () {
                AuthProvider().signout();
                nextPageOnly(page: LoginPage(), context: context);
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
