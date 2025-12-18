import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'b_s_lalphabet2_model.dart';
export 'b_s_lalphabet2_model.dart';

class BSLalphabet2Widget extends StatefulWidget {
  const BSLalphabet2Widget({
    super.key,
    required this.userDoc,
  });

  final DocumentReference? userDoc;

  static String routeName = 'BSLalphabet-2';
  static String routePath = '/bSLalphabet2';

  @override
  State<BSLalphabet2Widget> createState() => _BSLalphabet2WidgetState();
}

class _BSLalphabet2WidgetState extends State<BSLalphabet2Widget> {
  late BSLalphabet2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BSLalphabet2Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'BSLalphabet-2'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF6F4EBC),
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'B_S_LALPHABET_2_PAGE_exitLesson_ON_TAP');
                            logFirebaseEvent('exitLesson_navigate_to');

                            context.pushNamed(LessonBuffetWidget.routeName);
                          },
                          text: 'Exit',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xB110032E),
                            textStyle: FlutterFlowTheme.of(context)
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
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        if (_model.correct)
                          FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'B_S_LALPHABET_2_PAGE_nextQuiz_ON_TAP');
                              logFirebaseEvent('nextQuiz_update_app_state');
                              FFAppState().alphabetQuizAnswers = functions
                                  .initAlphabetAnswers()!
                                  .toList()
                                  .cast<String>();
                              safeSetState(() {});
                              logFirebaseEvent('nextQuiz_update_page_state');
                              _model.answered = false;
                              _model.correct = false;
                              safeSetState(() {});
                              if (random_data.randomInteger(0, 10) < 3) {
                                logFirebaseEvent('nextQuiz_navigate_to');

                                context.pushNamed(
                                  BSLalphabetWidget.routeName,
                                  queryParameters: {
                                    'userDoc': serializeParam(
                                      currentUserReference,
                                      ParamType.DocumentReference,
                                    ),
                                  }.withoutNulls,
                                );
                              } else {
                                if (random_data.randomInteger(0, 1) == 0) {
                                  logFirebaseEvent('nextQuiz_navigate_to');

                                  context.pushNamed(
                                    BSLalphabet1Widget.routeName,
                                    queryParameters: {
                                      'userDoc': serializeParam(
                                        currentUserReference,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                  );
                                } else {
                                  if (random_data.randomInteger(0, 1) == 0) {
                                    logFirebaseEvent('nextQuiz_navigate_to');

                                    context.pushNamed(
                                      BSLalphabet2Widget.routeName,
                                      queryParameters: {
                                        'userDoc': serializeParam(
                                          currentUserReference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  } else {
                                    logFirebaseEvent('nextQuiz_navigate_to');

                                    context.pushNamed(
                                      BSLalphabet3Widget.routeName,
                                      queryParameters: {
                                        'userDoc': serializeParam(
                                          currentUserReference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  }
                                }
                              }
                            },
                            text: 'Next Question',
                            icon: Icon(
                              Icons.double_arrow_rounded,
                              size: 24.0,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconAlignment: IconAlignment.end,
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xB110032E),
                              textStyle: FlutterFlowTheme.of(context)
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
                              elevation: 0.0,
                              borderSide: BorderSide(
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            functions.getImageAlphabetBSL(
                                FFAppState().alphabetQuizAnswers.firstOrNull)!,
                            width: 240.0,
                            height: 240.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 330.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).accent2,
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  !_model.answered
                                      ? 'This is a(n)...'
                                      : (_model.correct
                                          ? 'Correct!'
                                          : 'Try again...'),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontStyle,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'B_S_LALPHABET_2_PAGE_Z_BTN_ON_TAP');
                                  logFirebaseEvent('Button_update_page_state');
                                  _model.answered = true;
                                  safeSetState(() {});
                                },
                                text: FFAppState()
                                    .alphabetQuizAnswers
                                    .elementAtOrNull(1)!,
                                options: FFButtonOptions(
                                  width: 120.0,
                                  height: 120.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: valueOrDefault<Color>(
                                    !_model.answered
                                        ? Color(0xB110032E)
                                        : (_model.correct
                                            ? Color(0xB110032E)
                                            : Color(0xB1600608)),
                                    Color(0xB110032E),
                                  ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'B_S_LALPHABET_2_PAGE_F_BTN_ON_TAP');
                                  logFirebaseEvent('Button_update_page_state');
                                  _model.answered = true;
                                  safeSetState(() {});
                                },
                                text: FFAppState()
                                    .alphabetQuizAnswers
                                    .elementAtOrNull(2)!,
                                options: FFButtonOptions(
                                  width: 120.0,
                                  height: 120.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: valueOrDefault<Color>(
                                    !_model.answered
                                        ? Color(0xB110032E)
                                        : (_model.correct
                                            ? Color(0xB110032E)
                                            : Color(0xB1600608)),
                                    Color(0xB110032E),
                                  ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                            ].divide(SizedBox(width: 12.0)),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'B_S_LALPHABET_2_PAGE_Correct_ON_TAP');
                                  if (_model.answered) {
                                    logFirebaseEvent(
                                        'Correct_update_page_state');
                                    _model.answered = true;
                                    _model.correct = true;
                                    safeSetState(() {});
                                  } else {
                                    logFirebaseEvent(
                                        'Correct_update_page_state');
                                    _model.answered = true;
                                    _model.correct = true;
                                    safeSetState(() {});
                                    logFirebaseEvent('Correct_backend_call');

                                    await widget!.userDoc!.update({
                                      ...mapToFirestore(
                                        {
                                          'experience':
                                              FieldValue.increment(10),
                                        },
                                      ),
                                    });
                                    logFirebaseEvent(
                                        'Correct_update_app_state');
                                    FFAppState().newLevel = functions
                                        .calculateLevelFromXP(valueOrDefault(
                                            currentUserDocument?.experience,
                                            0));
                                    if (FFAppState().newLevel >
                                        valueOrDefault(
                                            currentUserDocument?.level, 0)) {
                                      logFirebaseEvent('Correct_backend_call');

                                      await widget!.userDoc!
                                          .update(createUsersRecordData(
                                        level: FFAppState().newLevel,
                                      ));
                                      logFirebaseEvent('Correct_navigate_to');

                                      context
                                          .goNamed(CelebrationWidget.routeName);
                                    }
                                  }
                                },
                                text: FFAppState()
                                    .alphabetQuizAnswers
                                    .elementAtOrNull(0)!,
                                options: FFButtonOptions(
                                  width: 120.0,
                                  height: 120.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: valueOrDefault<Color>(
                                    !_model.answered
                                        ? Color(0xB110032E)
                                        : (_model.correct
                                            ? Color(0xFF249689)
                                            : Color(0xB1600608)),
                                    Color(0xB110032E),
                                  ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'B_S_LALPHABET_2_PAGE_Q_BTN_ON_TAP');
                                  logFirebaseEvent('Button_update_page_state');
                                  _model.answered = true;
                                  safeSetState(() {});
                                },
                                text: FFAppState()
                                    .alphabetQuizAnswers
                                    .elementAtOrNull(3)!,
                                options: FFButtonOptions(
                                  width: 120.0,
                                  height: 120.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: valueOrDefault<Color>(
                                    !_model.answered
                                        ? Color(0xB110032E)
                                        : (_model.correct
                                            ? Color(0xB110032E)
                                            : Color(0xB1600608)),
                                    Color(0xB110032E),
                                  ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                            ].divide(SizedBox(width: 12.0)),
                          ),
                        ].divide(SizedBox(height: 12.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
