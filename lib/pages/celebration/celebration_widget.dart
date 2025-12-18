import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'celebration_model.dart';
export 'celebration_model.dart';

class CelebrationWidget extends StatefulWidget {
  const CelebrationWidget({super.key});

  static String routeName = 'Celebration';
  static String routePath = '/celebration';

  @override
  State<CelebrationWidget> createState() => _CelebrationWidgetState();
}

class _CelebrationWidgetState extends State<CelebrationWidget> {
  late CelebrationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CelebrationModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Celebration'});
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
        backgroundColor: Color(0xDBFF5963),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF1A1A2E),
                      Color(0xFF16213E),
                      Color(0xFF0F3460)
                    ],
                    stops: [0.0, 0.5, 1.0],
                    begin: AlignmentDirectional(1.0, -1.0),
                    end: AlignmentDirectional(-1.0, 1.0),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 40.0),
                      child: Lottie.asset(
                        'assets/jsons/Confetti_Partyyy!!.json',
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 16.0),
                      child: AnimatedDefaultTextStyle(
                        style:
                            FlutterFlowTheme.of(context).displayMedium.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.w800,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .displayMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFFFFD700),
                                  fontSize: 48.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .displayMedium
                                      .fontStyle,
                                ),
                        duration: Duration(milliseconds: 1035),
                        curve: Curves.easeIn,
                        child: Text(
                          'LEVEL UP!',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 24.0),
                      child: Container(
                        width: 120.0,
                        height: 120.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFFFFD700), Color(0xFFFF8C00)],
                            stops: [0.0, 1.0],
                            begin: AlignmentDirectional(0.0, -1.0),
                            end: AlignmentDirectional(0, 1.0),
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 4.0,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AuthUserStreamWidget(
                              builder: (context) => Text(
                                functions
                                    .calculateLevelFromXP(valueOrDefault(
                                        currentUserDocument?.experience, 0))
                                    .toString(),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FontWeight.w800,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      fontSize: 36.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w800,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .fontStyle,
                                    ),
                              ),
                            ),
                            Text(
                              'LEVEL',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 8.0),
                      child: Text(
                        'Congratulations!',
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 40.0),
                      child: Text(
                        'You\'ve reached a new milestone!\nKeep up the amazing work!',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontStyle,
                              ),
                              color: Color(0xFFCCCCCC),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontStyle,
                              lineHeight: 1.5,
                            ),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'CELEBRATION_CONTINUE_JOURNEY_BTN_ON_TAP');
                        logFirebaseEvent('Button_navigate_to');

                        context.goNamed(LessonBuffetWidget.routeName);
                      },
                      text: 'Continue Journey',
                      options: FFButtonOptions(
                        width: 280.0,
                        height: 56.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            32.0, 0.0, 32.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFFFFD700),
                        textStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF1A1A2E),
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    Lottie.asset(
                      'assets/jsons/Joy_Walking_with_Phone.json',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.contain,
                      animate: true,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.8, -0.6),
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFD700),
                    shape: BoxShape.circle,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      Icons.star_rounded,
                      color: Color(0xFF1A1A2E),
                      size: 32.0,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.7, -0.7),
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFFF8C00),
                    shape: BoxShape.circle,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      Icons.celebration_rounded,
                      color: Colors.white,
                      size: 24.0,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.8, 0.6),
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF00FF88),
                    shape: BoxShape.circle,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      Icons.emoji_events_rounded,
                      color: Colors.white,
                      size: 28.0,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.9, 0.5),
                child: Container(
                  width: 35.0,
                  height: 35.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF88AAFF),
                    shape: BoxShape.circle,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      Icons.diamond_rounded,
                      color: Colors.white,
                      size: 20.0,
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
