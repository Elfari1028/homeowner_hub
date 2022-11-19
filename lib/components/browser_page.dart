import 'dart:ui';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrowserPage extends StatefulWidget {
  final String initalUrl;
  final String title;
  final Color color;
  final bool useDarkElement;
  final bool blur;
  Future<String>? Function(InAppWebViewController controller, String url)?
      onLoadStop;
  Future<String>? Function(InAppWebViewController controller, String url)?
      onLoadStart;
  Future<String>? Function(InAppWebViewController controller)? onWebViewCreated;
  Future<JsAlertResponse>? Function(
          InAppWebViewController controller, JsAlertRequest jsAlertRequest)?
      onJsAlert;
  BrowserPage(
      {required this.initalUrl,
      required this.title,
      this.onLoadStop,
      this.color = Colors.deepPurple,
      this.onLoadStart,
      this.onWebViewCreated,
      this.onJsAlert,
      this.useDarkElement = false,
      this.blur = false});
  createState() => BrowserPageState();
}

class BrowserPageState extends State<BrowserPage> {
  double _kAppBarHeight = 50.0;
  Curve _kAnimationCurve = Curves.fastLinearToSlowEaseIn;
  Duration _kAnimationDuration = Duration(milliseconds: 250);
  late EdgeInsets _screenPadding;
  double titleSize = 20.0;

  bool loadStatus = false;

  late InAppWebViewController webView;
  String url = "";
  double progress = 0;
  @override
  void initState() {
    url = widget.initalUrl;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _screenPadding = MediaQuery.of(context).padding;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          browserView,
          appBarShadow,
          progressBar,
          appBar,
          // widget.blur ? dummy : Container(),
        ],
      ),
    );
  }

  Widget get appBar {
    return Container(
      color: widget.color.withOpacity(0.25),
      width: Get.width,
      child: SafeArea(
        child: Container(
          height: _kAppBarHeight,
          child: Row(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: _kAppBarHeight,
                  width: _kAppBarHeight,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.black12,
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      child: Text(
                    widget.title,
                    style: TextStyle(fontSize: titleSize, color: Colors.black),
                  )))
            ],
          ),
        ),
      ),
    );
  }

  Widget get appBarShadow {
    return SafeArea(
        child: Container(
      height: _kAppBarHeight - 2,
      width: Get.width,
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 1,
        width: Get.width,
        decoration: BoxDecoration(color: Colors.black, boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 2,
            blurRadius: 15,
          )
        ]),
      ),
    ));
  }

  Widget get progressBar {
    return Container(
        height: _kAppBarHeight + _screenPadding.top,
        width: Get.width,
        child: ClipRect(
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            width: Get.width,
            height: _kAppBarHeight + _screenPadding.top,
            alignment: Alignment.centerLeft,
            child: AnimatedContainer(
              curve: _kAnimationCurve,
              duration: _kAnimationDuration,
              width: Get.width * (progress < 1.0 ? progress : 1.0),
              height: _kAppBarHeight + _screenPadding.top,
              decoration: BoxDecoration(
                color: progress == 1.0
                    ? widget.color.withOpacity(0.7)
                    : Colors.green.withOpacity(0.35),
              ),
            ),
          ),
        )));
  }

  Widget get browserView {
    return SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          height: Get.height,
          width: Get.width,
          color: widget.color,
          alignment: Alignment.bottomCenter,
          child: Container(
            height: Get.height - _screenPadding.top - _kAppBarHeight,
            width: Get.width,
            child: InAppWebView(
              initialUrlRequest: URLRequest(url: Uri.tryParse(this.url)),
              // initialHeaders: {},
              initialOptions: InAppWebViewGroupOptions(
                  // android: AndroidInAppWebViewOptions(),
                  crossPlatform: InAppWebViewOptions(
                // contentBlockers: ContentBlocker(trigger: ContentBlockerT, action: null),

                useOnDownloadStart: true,
              )),
              onWebViewCreated: (InAppWebViewController controller) {
                webView = controller;
                if (widget.onWebViewCreated != null)
                  widget.onWebViewCreated?.call(controller);
              },
              onLoadStart: (InAppWebViewController controller, Uri? uri) async {
                setState(() {
                  this.url = uri?.toString() ?? this.url;
                });
                if (widget.onLoadStart != null)
                  widget.onLoadStart?.call(controller, url);
              },
              onJsAlert: (controller, jsAlertRequest) async {
                if (widget.onJsAlert == null)
                  return JsAlertResponse(message: jsAlertRequest.message ?? "");
                else
                  return widget.onJsAlert?.call(controller, jsAlertRequest);
              },
              onLoadStop: (InAppWebViewController controller, Uri? uri) async {
                setState(() {
                  this.url = uri?.toString() ?? this.url;
                });
                if (widget.onLoadStop != null) {
                  String? response =
                      await widget.onLoadStop?.call(controller, this.url);
                  if (response == "dim") {
                  } else if (response == "enlight") {
                  } else {}
                }
              },
              onProgressChanged:
                  (InAppWebViewController controller, int progress) {
                setState(() {
                  this.progress = progress / 100;
                });
              },
            ),
          ),
        ));
  }
}
