import '/flutter_flow/flutter_flow_util.dart';
import 'text_to_sign_widget.dart' show TextToSignWidget;
import 'package:flutter/material.dart';

class TextToSignModel extends FlutterFlowModel<TextToSignWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
