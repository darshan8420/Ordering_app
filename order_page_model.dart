import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'order_page_widget.dart' show OrderPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrderPageModel extends FlutterFlowModel<OrderPageWidget> {
  ///  Local state fields for this page.

  int calor = 0;

  double price = 0.0;

  double? answ;

  int? foundIndex;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
