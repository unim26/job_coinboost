import 'package:coinboost/components/task_page/claim_component.dart';
import 'package:coinboost/constants/constants.dart';
import 'package:coinboost/pages/home_navigation_page.dart';
import 'package:coinboost/widgets/app_bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  //web view controller
  late WebViewController webViewController;

  bool isLoading = false;

  @override
  void initState() {
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(onPageFinished: (val) {
          isLoading = false;
        }, onPageStarted: (val) {
          isLoading = true;
        }),
      )
      ..loadRequest(
        Uri.parse("https://www.abplive.com/"),
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double sHeight = MediaQuery.of(context).size.height;
    final double sWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: isLoading? Center(child: CircularProgressIndicator(),) : Stack(
          children: [
            Container(
              width: double.infinity,
              height: sHeight * .07,
              color: primaryColor,
            ),

            //top claim indicator
            claimComponent(sHeight: sHeight, sWidth: sWidth),

            //webview
            Padding(
              padding: EdgeInsets.only(top: sHeight * .14),
              child: SizedBox(
                height: sHeight * .8,
                child: WebViewWidget(controller: webViewController),
              ),
            ),
          ],
        ),
        //bottom navigation bar
        bottomNavigationBar: appBottomNavigationBar(onTap: (index) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => HomeNavigationPage(),
            ),
            (route) => route.isFirst,
          );
        }),
      ),
    );
  }
}
