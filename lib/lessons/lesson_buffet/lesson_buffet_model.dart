import '/auth/firebase_auth/auth_util.dart';
import '/backend/stripe/payment_manager.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'lesson_buffet_widget.dart' show LessonBuffetWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LessonBuffetModel extends FlutterFlowModel<LessonBuffetWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Stripe Payment] action in Button widget.
  String? paymentIdColor;
  // Stores action output result for [Stripe Payment] action in Button widget.
  String? paymentIdNum;
  // Stores action output result for [Stripe Payment] action in Button widget.
  String? paymentIdAnimals;
  // Stores action output result for [Stripe Payment] action in Button widget.
  String? paymentIdFamily;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
