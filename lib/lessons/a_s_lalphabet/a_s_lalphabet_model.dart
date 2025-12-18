import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'a_s_lalphabet_widget.dart' show ASLalphabetWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ASLalphabetModel extends FlutterFlowModel<ASLalphabetWidget> {
  ///  Local state fields for this page.

  bool answered = false;

  bool correct = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
