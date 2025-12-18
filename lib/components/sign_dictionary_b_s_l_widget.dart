import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sign_dictionary_b_s_l_model.dart';
export 'sign_dictionary_b_s_l_model.dart';

class SignDictionaryBSLWidget extends StatefulWidget {
  const SignDictionaryBSLWidget({
    super.key,
    String? englishInput,
  }) : this.englishInput = englishInput ?? 'A';

  final String englishInput;

  @override
  State<SignDictionaryBSLWidget> createState() =>
      _SignDictionaryBSLWidgetState();
}

class _SignDictionaryBSLWidgetState extends State<SignDictionaryBSLWidget> {
  late SignDictionaryBSLModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignDictionaryBSLModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(42.0, 0.0, 0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              valueOrDefault<String>(
                functions.getImageAlphabetBSL(widget!.englishInput),
                'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_A.jpg?alt=media&token=de89cc04-d20a-488c-a33d-b10efe02f3bb',
              ),
              width: 150.0,
              height: 150.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 24.0, 0.0),
            child: Text(
              valueOrDefault<String>(
                widget!.englishInput,
                'A',
              ),
              style: FlutterFlowTheme.of(context).displayLarge.override(
                    font: GoogleFonts.interTight(
                      fontWeight:
                          FlutterFlowTheme.of(context).displayLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).displayLarge.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).displayLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).displayLarge.fontStyle,
                  ),
            ),
          ),
        ].divide(SizedBox(width: 42.0)),
      ),
    );
  }
}
