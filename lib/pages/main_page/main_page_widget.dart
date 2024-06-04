import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'main_page_model.dart';
export 'main_page_model.dart';

class MainPageWidget extends StatefulWidget {
  const MainPageWidget({super.key});

  @override
  State<MainPageWidget> createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
  late MainPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('WelcomePage');
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primary,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Stack(
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Stack(
                          children: [
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                            ))
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Light-Blue-HD-Backgrounds.jpg',
                                    width: 2057.0,
                                    height: 2700.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                            ))
                              Align(
                                alignment: const AlignmentDirectional(-0.03, -0.84),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/2-29743_eye-images-clip-art.png',
                                    width: 300.0,
                                    height: 226.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                            ))
                              Align(
                                alignment: const AlignmentDirectional(-0.04, 0.01),
                                child: GradientText(
                                  'Aquila: A Cross-platform \nWaste Monitoring System for \nSmart Bins',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: const Color(0xFF101010),
                                        fontSize: 80.0,
                                        letterSpacing: 0.0,
                                      ),
                                  colors: const [
                                    Color(0xFFDF8907),
                                    Color(0xFF585853)
                                  ],
                                  gradientDirection: GradientDirection.ltr,
                                  gradientType: GradientType.linear,
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                            ))
                              Align(
                                alignment: const AlignmentDirectional(-0.04, 0.58),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('WelcomePage');
                                  },
                                  text: 'GET STARTED',
                                  options: FFButtonOptions(
                                    height: 60.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Outfit',
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                    hoverColor: const Color(0xFFF9F5F5),
                                    hoverBorderSide: const BorderSide(
                                      color: Color(0xFFBFC10E),
                                      width: 1.0,
                                    ),
                                    hoverTextColor: const Color(0xFF311AD5),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                  ],
                ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/Light-Blue-HD-Backgrounds.jpg',
                            width: 2057.0,
                            height: 2700.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Align(
                        alignment: const AlignmentDirectional(0.0, -0.89),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/2-29743_eye-images-clip-art.png',
                            width: 300.0,
                            height: 226.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Align(
                        alignment: const AlignmentDirectional(-0.04, 0.01),
                        child: GradientText(
                          'Aquila: A Cross-platform \nWaste Monitoring System for \nSmart Bins',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Outfit',
                                color: const Color(0xFF101010),
                                fontSize: 40.0,
                                letterSpacing: 0.0,
                              ),
                          colors: const [Color(0xFFDF8907), Color(0xFF585853)],
                          gradientDirection: GradientDirection.ltr,
                          gradientType: GradientType.linear,
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Align(
                        alignment: const AlignmentDirectional(-0.01, 0.53),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('WelcomePage');
                          },
                          text: 'GET STARTED',
                          options: FFButtonOptions(
                            height: 60.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                            hoverColor: const Color(0xFFF9F5F5),
                            hoverBorderSide: const BorderSide(
                              color: Color(0xFFBFC10E),
                              width: 1.0,
                            ),
                            hoverTextColor: const Color(0xFF311AD5),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
