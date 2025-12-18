import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:async';
import 'dart:ui';
import '/index.dart';
import 'profile_page_widget.dart' show ProfilePageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class ProfilePageModel extends FlutterFlowModel<ProfilePageWidget> {
  ///  Local state fields for this page.

  String? bioText;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataU6t = false;
  FFUploadedFile uploadedLocalFile_uploadDataU6t =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataU6t = '';

  // State field(s) for Bio widget.
  FocusNode? bioFocusNode;
  TextEditingController? bioTextController;
  String? Function(BuildContext, String?)? bioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    bioFocusNode?.dispose();
    bioTextController?.dispose();
  }
}
