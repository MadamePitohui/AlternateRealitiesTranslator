import '/components/sign_dictionary_a_s_l_widget.dart';
import '/components/sign_dictionary_b_s_l_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sign_dictionary_model.dart';
export 'sign_dictionary_model.dart';

class SignDictionaryWidget extends StatefulWidget {
  const SignDictionaryWidget({super.key});

  static String routeName = 'SignDictionary';
  static String routePath = '/signDictionary';

  @override
  State<SignDictionaryWidget> createState() => _SignDictionaryWidgetState();
}

class _SignDictionaryWidgetState extends State<SignDictionaryWidget> {
  late SignDictionaryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignDictionaryModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'SignDictionary'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xB110032E),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF6F4EBC),
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        width: 2.0,
                      ),
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            'Sign Dictionary',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF6F4EBC),
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  width: 2.0,
                                ),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 6.0, 0.0, 0.0),
                                    child: Text(
                                      'Select Language',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 6.0, 0.0, 0.0),
                                    child: FlutterFlowDropDown<String>(
                                      controller:
                                          _model.dropDownValueController ??=
                                              FormFieldController<String>(
                                        _model.dropDownValue ??= 'ASL',
                                      ),
                                      options: ['ASL', 'BSL'],
                                      onChanged: (val) => safeSetState(
                                          () => _model.dropDownValue = val),
                                      width: 200.0,
                                      height: 40.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      hintText: 'ASL',
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 2.0,
                                      borderColor: Colors.transparent,
                                      borderWidth: 0.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 2.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.72,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF6F4EBC),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          border: Border.all(
                                            width: 2.0,
                                          ),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Stack(
                                          children: [
                                            if (valueOrDefault<bool>(
                                              _model.dropDownValue == 'BSL',
                                              true,
                                            ))
                                              SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel1,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'A',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel2,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'B',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel3,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'C',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel4,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'D',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel5,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'E',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel6,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'F',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel7,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'G',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel8,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'H',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel9,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'I',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel10,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'J',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel11,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'K',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel12,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'L',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel13,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'M',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel14,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'N',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel15,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'O',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel16,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'P',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel17,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'Q',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel18,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'R',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel19,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'S',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel20,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'T',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel21,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'U',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel22,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'V',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel23,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'W',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel24,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'X',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel25,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'Y',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .signDictionaryBSLModel26,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryBSLWidget(
                                                        englishInput: 'Z',
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 10.0)),
                                                ),
                                              ),
                                            if (valueOrDefault<bool>(
                                              _model.dropDownValue == 'ASL',
                                              true,
                                            ))
                                              SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    wrapWithModel(
                                                      model: _model.aslAModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'A',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslBModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'B',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslCModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'C',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslDModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'D',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslEModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'E',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslFModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'F',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslGModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'G',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslHModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'H',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslIModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'I',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslJModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'J',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslKModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'K',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslLModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'L',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslMModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'M',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslPModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'P',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslNModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'N',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslOModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'O',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslQModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'Q',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslRModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'R',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslSModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'S',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslTModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'T',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslUModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'U',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslVModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'V',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslWModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'W',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslXModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'X',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslYModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'Y',
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model.aslZModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SignDictionaryASLWidget(
                                                        englishInput: 'Z',
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 10.0)),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
