// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';

class CustomWebView extends StatefulWidget {
  const CustomWebView(
      {Key key,
      @required this.html,
      this.width,
      this.height,
      this.bypass = false,
      this.horizontalScroll = false,
      this.verticalScroll = false})
      : super(key: key);

  final bool bypass;
  final bool horizontalScroll;
  final bool verticalScroll;
  final double height;
  final double width;
  final String html;

  @override
  _CustomWebViewState createState() => _CustomWebViewState();
}

class _CustomWebViewState extends State<CustomWebView> {
  @override
  Widget build(BuildContext context) => WebViewX(
        key: webviewKey,
        width: widget.width ?? MediaQuery.of(context).size.width,
        height: widget.height ?? MediaQuery.of(context).size.height,
        ignoreAllGestures: false,
        initialContent: widget.html,
        initialMediaPlaybackPolicy:
            AutoMediaPlaybackPolicy.requireUserActionForAllMediaTypes,
        initialSourceType:
            widget.bypass ? SourceType.urlBypass : SourceType.html,
        javascriptMode: JavascriptMode.unrestricted,
        webSpecificParams: const WebSpecificParams(
          webAllowFullscreenContent: true,
        ),
        mobileSpecificParams: MobileSpecificParams(
          debuggingEnabled: false,
          gestureNavigationEnabled: true,
          mobileGestureRecognizers: {
            if (widget.verticalScroll)
              Factory<VerticalDragGestureRecognizer>(
                () => VerticalDragGestureRecognizer(),
              ),
            if (widget.horizontalScroll)
              Factory<HorizontalDragGestureRecognizer>(
                () => HorizontalDragGestureRecognizer(),
              ),
          },
          androidEnableHybridComposition: true,
        ),
      );

  Key get webviewKey => Key(
        [
          widget.html,
          widget.width,
          widget.height,
          widget.bypass,
          widget.horizontalScroll,
          widget.verticalScroll
        ].map((s) => s?.toString() ?? '').join(),
      );
}
