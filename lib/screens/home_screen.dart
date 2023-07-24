import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InAppWebViewController? webViewController;
    final GlobalKey webViewKey = GlobalKey();

    return WillPopScope(
      onWillPop: () => exitApp(context, webViewController!),
      child: Scaffold(
        body: SafeArea(
          child: InAppWebView(
            initialUrlRequest:
                URLRequest(url: Uri.parse('https://www.sortcutnepal.com/')),
            onWebViewCreated: (controller) {
              webViewController = controller;
            },
            key: webViewKey,
            // initialUserScripts: UnmodifiableListView([
            //   UserScript(source: """
            //       window.addEventListener('DOMContentLoaded', function(event) {
            //         var header = document.querySelector('.elementor-location-header'); // use here the correct CSS selector for your use case
            //         if (header != null) {
            //           header.remove(); // remove the HTML element. Instead, to simply hide the HTML element, use header.style.display = 'none';
            //         }
            //         var footer = document.querySelector('.footer-section'); // use here the correct CSS selector for your use case
            //         if (footer != null) {
            //           footer.remove(); // remove the HTML element. Instead, to simply hide the HTML element, use footer.style.display = 'none';
            //         }
            //       });
            //       """, injectionTime: UserScriptInjectionTime.AT_DOCUMENT_END)
            // ]),
          ),
        ),
      ),
    );
  }

  exitApp(
      BuildContext context, InAppWebViewController webViewController) async {
    if (await webViewController.canGoBack()) {
      // print("onwill goback");
      webViewController.goBack();
    } else {
      // Scaffold.of(context).showSnackBar(
      //   const SnackBar(content: Text("No back history item")),
      // );
      showDialog(
          // barrierColor: Color(0xff5C75AA),
          context: context,
          builder: (context) => AlertDialog(
                backgroundColor: Color(0xff5C75AA),
                title: Text(
                  'Do you want to exit?',
                  style: TextStyle(color: Colors.white60, fontSize: 16),
                ),
                actions: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'No',
                      style: TextStyle(color: Colors.black54, fontSize: 12),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                    child: Text(
                      'Yes',
                      style: TextStyle(color: Colors.black54, fontSize: 12),
                    ),
                  ),
                ],
              ));
      return Future.value(false);
    }
  }
}
