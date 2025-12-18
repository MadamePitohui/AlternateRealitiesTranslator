import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'profile_page_copy2_widget.dart' show ProfilePageCopy2Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class ProfilePageCopy2Model extends FlutterFlowModel<ProfilePageCopy2Widget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataOxw = false;
  FFUploadedFile uploadedLocalFile_uploadDataOxw =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataOxw = '';

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
