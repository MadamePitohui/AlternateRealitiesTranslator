import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sign_dictionary_a_s_l_model.dart';
export 'sign_dictionary_a_s_l_model.dart';

class SignDictionaryASLWidget extends StatefulWidget {
  const SignDictionaryASLWidget({
    super.key,
    String? englishInput,
  }) : this.englishInput = englishInput ?? 'A';

  final String englishInput;

  @override
  State<SignDictionaryASLWidget> createState() =>
      _SignDictionaryASLWidgetState();
}

class _SignDictionaryASLWidgetState extends State<SignDictionaryASLWidget> {
  late SignDictionaryASLModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignDictionaryASLModel());

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
                functions.getImageAlphabetASL(valueOrDefault<String>(
                  widget.englishInput,
                  'A',
                )),
                'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_A.jpg?alt=media&token=d2b4e9cd-0955-4ee2-b712-d1c6c832cf35',
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
                widget.englishInput,
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
