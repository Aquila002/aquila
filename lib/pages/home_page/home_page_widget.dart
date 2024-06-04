import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.webSignupEmailTextController ??= TextEditingController();
    _model.webSignupEmailFocusNode ??= FocusNode();

    _model.webSignupPassTextController ??= TextEditingController();
    _model.webSignupPassFocusNode ??= FocusNode();

    _model.webSigninEmailTextController ??= TextEditingController();
    _model.webSigninEmailFocusNode ??= FocusNode();

    _model.webSigninPassTextController ??= TextEditingController();
    _model.webSigninPassFocusNode ??= FocusNode();

    _model.mobileTabbarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.mobSignupEmailTextController ??= TextEditingController();
    _model.mobSignupEmailFocusNode ??= FocusNode();

    _model.mobSignupPassTextController ??= TextEditingController();
    _model.mobSignupPassFocusNode ??= FocusNode();

    _model.mobSigninEmailTextController ??= TextEditingController();
    _model.mobSigninEmailFocusNode ??= FocusNode();

    _model.mobSigninPassTextController ??= TextEditingController();
    _model.mobSigninPassFocusNode ??= FocusNode();

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
        backgroundColor: const Color(0xFFB6C3D3),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/garbage-truck-at-landfill.jpg',
                      width: 19937.0,
                      height: 1862.0,
                      fit: BoxFit.cover,
                      cacheHeight: 6000,
                    ),
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                ))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(80.0, 320.0, 80.0, 0.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: const Alignment(0.0, 0),
                          child: TabBar(
                            labelColor: Colors.white,
                            unselectedLabelColor:
                                FlutterFlowTheme.of(context).primary,
                            labelStyle: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: 30.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w900,
                                ),
                            unselectedLabelStyle: const TextStyle(),
                            indicatorColor:
                                FlutterFlowTheme.of(context).primary,
                            indicatorWeight: 7.0,
                            padding: const EdgeInsets.all(8.0),
                            tabs: const [
                              Tab(
                                text: 'SIGN UP',
                              ),
                              Tab(
                                text: 'SIGN IN',
                              ),
                            ],
                            controller: _model.tabBarController,
                            onTap: (i) async {
                              [() async {}, () async {}][i]();
                            },
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.tabBarController,
                            children: [
                              Visibility(
                                visible: responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                    ))
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 1.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: TextFormField(
                                            controller: _model
                                                .webSignupEmailTextController,
                                            focusNode:
                                                _model.webSignupEmailFocusNode,
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Type your EMAIL',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .displaySmall
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: const Color(0xFFFDB102),
                                                    fontSize: 36.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w300,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 4.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 4.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 4.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 4.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              filled: true,
                                              fillColor: const Color(0x82000000),
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 30.0, 0.0, 0.0),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Colors.white,
                                                  fontSize: 30.0,
                                                  letterSpacing: 0.0,
                                                ),
                                            textAlign: TextAlign.center,
                                            validator: _model
                                                .webSignupEmailTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                    ))
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: TextFormField(
                                          controller: _model
                                              .webSignupPassTextController,
                                          focusNode:
                                              _model.webSignupPassFocusNode,
                                          autofocus: true,
                                          obscureText:
                                              !_model.webSignupPassVisibility,
                                          decoration: InputDecoration(
                                            labelText: 'Type your PASSWORD',
                                            labelStyle: FlutterFlowTheme.of(
                                                    context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: const Color(0xFFFDB102),
                                                  fontSize: 36.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .displaySmall
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 4.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 4.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 4.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 4.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            filled: true,
                                            fillColor: const Color(0x82000000),
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 30.0, 0.0, 0.0),
                                            suffixIcon: InkWell(
                                              onTap: () => setState(
                                                () => _model
                                                        .webSignupPassVisibility =
                                                    !_model
                                                        .webSignupPassVisibility,
                                              ),
                                              focusNode: FocusNode(
                                                  skipTraversal: true),
                                              child: Icon(
                                                _model.webSignupPassVisibility
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
                                                color: Colors.white,
                                                size: 60.0,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Colors.white,
                                                fontSize: 30.0,
                                                letterSpacing: 0.0,
                                              ),
                                          textAlign: TextAlign.center,
                                          validator: _model
                                              .webSignupPassTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                    ))
                                      Padding(
                                        padding: const EdgeInsets.all(24.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            GoRouter.of(context)
                                                .prepareAuthEvent();

                                            final user = await authManager
                                                .createAccountWithEmail(
                                              context,
                                              _model
                                                  .webSignupEmailTextController
                                                  .text,
                                              _model.webSignupPassTextController
                                                  .text,
                                            );
                                            if (user == null) {
                                              return;
                                            }

                                            setState(() {
                                              _model.tabBarController!
                                                  .animateTo(
                                                _model.tabBarController!
                                                        .length -
                                                    1,
                                                duration:
                                                    const Duration(milliseconds: 300),
                                                curve: Curves.ease,
                                              );
                                            });

                                            context.goNamedAuth(
                                                'WelcomePage', context.mounted);
                                          },
                                          text: 'SIGN UP',
                                          options: FFButtonOptions(
                                            width: 300.0,
                                            height: 60.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .displaySmall
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      fontSize: 36.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                  ))
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: TextFormField(
                                        controller:
                                            _model.webSigninEmailTextController,
                                        focusNode:
                                            _model.webSigninEmailFocusNode,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Type your EMAIL',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .displaySmall
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: const Color(0xFFFDB102),
                                                    fontSize: 36.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w300,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .displaySmall
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: Colors.white,
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 4.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 4.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 4.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 4.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                          ),
                                          filled: true,
                                          fillColor: const Color(0x82000000),
                                          contentPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 30.0, 0.0, 0.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Colors.white,
                                              fontSize: 30.0,
                                              letterSpacing: 0.0,
                                            ),
                                        textAlign: TextAlign.center,
                                        validator: _model
                                            .webSigninEmailTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: TextFormField(
                                      controller:
                                          _model.webSigninPassTextController,
                                      focusNode: _model.webSigninPassFocusNode,
                                      autofocus: true,
                                      obscureText:
                                          !_model.webSigninPassVisibility,
                                      decoration: InputDecoration(
                                        labelText: 'Type your PASSWORD',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: const Color(0xFFFDB102),
                                              fontSize: 36.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w300,
                                              fontStyle: FontStyle.italic,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 4.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 4.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 4.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 4.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        filled: true,
                                        fillColor: const Color(0x82000000),
                                        contentPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 30.0, 0.0, 0.0),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => _model
                                                    .webSigninPassVisibility =
                                                !_model.webSigninPassVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.webSigninPassVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: Colors.white,
                                            size: 60.0,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Colors.white,
                                            fontSize: 30.0,
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.center,
                                      validator: _model
                                          .webSigninPassTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(24.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        GoRouter.of(context).prepareAuthEvent();

                                        final user =
                                            await authManager.signInWithEmail(
                                          context,
                                          _model.webSigninEmailTextController
                                              .text,
                                          _model
                                              .webSigninPassTextController.text,
                                        );
                                        if (user == null) {
                                          return;
                                        }

                                        context.pushNamedAuth(
                                            'WelcomePage', context.mounted);
                                      },
                                      text: 'SIGN IN',
                                      options: FFButtonOptions(
                                        width: 300.0,
                                        height: 60.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Outfit',
                                              fontSize: 36.0,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
                  Align(
                    alignment: const AlignmentDirectional(0.02, -0.76),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Text(
                        'Let us help you\nmake the move.',
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: 'Outfit',
                                  color: const Color(0xFFEAF0F4),
                                  fontSize: 100.0,
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Align(
                    alignment: const AlignmentDirectional(-0.04, -0.66),
                    child: Text(
                      'Let us help you\nmake the move.',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily: 'Outfit',
                            color: Colors.white,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 250.0, 20.0, 0.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: const Alignment(0.0, 0),
                          child: TabBar(
                            labelColor: Colors.white,
                            unselectedLabelColor:
                                FlutterFlowTheme.of(context).primary,
                            labelStyle: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: 30.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w900,
                                ),
                            unselectedLabelStyle: const TextStyle(),
                            indicatorColor:
                                FlutterFlowTheme.of(context).primary,
                            indicatorWeight: 7.0,
                            padding: const EdgeInsets.all(8.0),
                            tabs: const [
                              Tab(
                                text: 'SIGN UP',
                              ),
                              Tab(
                                text: 'SIGN IN',
                              ),
                            ],
                            controller: _model.mobileTabbarController,
                            onTap: (i) async {
                              [() async {}, () async {}][i]();
                            },
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.mobileTabbarController,
                            children: [
                              Visibility(
                                visible: responsiveVisibility(
                                  context: context,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      tablet: false,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 1.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: TextFormField(
                                            controller: _model
                                                .mobSignupEmailTextController,
                                            focusNode:
                                                _model.mobSignupEmailFocusNode,
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Type your EMAIL',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .displaySmall
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: const Color(0xFFFDB102),
                                                    fontSize: 25.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w300,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 4.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 4.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 4.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 4.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              filled: true,
                                              fillColor: const Color(0x82000000),
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 30.0, 0.0, 0.0),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Colors.white,
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                ),
                                            textAlign: TextAlign.center,
                                            validator: _model
                                                .mobSignupEmailTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      tablet: false,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: TextFormField(
                                          controller: _model
                                              .mobSignupPassTextController,
                                          focusNode:
                                              _model.mobSignupPassFocusNode,
                                          autofocus: true,
                                          obscureText:
                                              !_model.mobSignupPassVisibility,
                                          decoration: InputDecoration(
                                            labelText: 'Type your PASSWORD',
                                            labelStyle: FlutterFlowTheme.of(
                                                    context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: const Color(0xFFFDB102),
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .displaySmall
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 4.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 4.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 4.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 4.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            filled: true,
                                            fillColor: const Color(0x82000000),
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 30.0, 0.0, 0.0),
                                            suffixIcon: InkWell(
                                              onTap: () => setState(
                                                () => _model
                                                        .mobSignupPassVisibility =
                                                    !_model
                                                        .mobSignupPassVisibility,
                                              ),
                                              focusNode: FocusNode(
                                                  skipTraversal: true),
                                              child: Icon(
                                                _model.mobSignupPassVisibility
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
                                                color: Colors.white,
                                                size: 60.0,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Colors.white,
                                                fontSize: 25.0,
                                                letterSpacing: 0.0,
                                              ),
                                          textAlign: TextAlign.center,
                                          validator: _model
                                              .mobSignupPassTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      tablet: false,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Padding(
                                        padding: const EdgeInsets.all(24.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            GoRouter.of(context)
                                                .prepareAuthEvent();

                                            final user = await authManager
                                                .createAccountWithEmail(
                                              context,
                                              _model
                                                  .mobSignupEmailTextController
                                                  .text,
                                              _model.mobSignupPassTextController
                                                  .text,
                                            );
                                            if (user == null) {
                                              return;
                                            }

                                            setState(() {
                                              _model.mobileTabbarController!
                                                  .animateTo(
                                                _model.mobileTabbarController!
                                                        .length -
                                                    1,
                                                duration:
                                                    const Duration(milliseconds: 300),
                                                curve: Curves.ease,
                                              );
                                            });

                                            context.goNamedAuth(
                                                'WelcomePage', context.mounted);
                                          },
                                          text: 'SIGN UP',
                                          options: FFButtonOptions(
                                            width: 300.0,
                                            height: 60.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .displaySmall
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      fontSize: 36.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Visibility(
                                visible: responsiveVisibility(
                                  context: context,
                                  tabletLandscape: false,
                                  desktop: false,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: TextFormField(
                                          controller: _model
                                              .mobSigninEmailTextController,
                                          focusNode:
                                              _model.mobSigninEmailFocusNode,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Type your EMAIL',
                                            labelStyle: FlutterFlowTheme.of(
                                                    context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: const Color(0xFFFDB102),
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .displaySmall
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 4.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 4.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 4.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 4.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            filled: true,
                                            fillColor: const Color(0x82000000),
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 30.0, 0.0, 0.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Colors.white,
                                                fontSize: 25.0,
                                                letterSpacing: 0.0,
                                              ),
                                          textAlign: TextAlign.center,
                                          validator: _model
                                              .mobSigninEmailTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: TextFormField(
                                          controller: _model
                                              .mobSigninPassTextController,
                                          focusNode:
                                              _model.mobSigninPassFocusNode,
                                          autofocus: true,
                                          obscureText:
                                              !_model.mobSigninPassVisibility,
                                          decoration: InputDecoration(
                                            labelText: 'Type your PASSWORD',
                                            labelStyle: FlutterFlowTheme.of(
                                                    context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: const Color(0xFFFDB102),
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .displaySmall
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      color: Colors.white,
                                                      fontSize: 25.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 4.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 4.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 4.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 4.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            filled: true,
                                            fillColor: const Color(0x82000000),
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 30.0, 0.0, 0.0),
                                            suffixIcon: InkWell(
                                              onTap: () => setState(
                                                () => _model
                                                        .mobSigninPassVisibility =
                                                    !_model
                                                        .mobSigninPassVisibility,
                                              ),
                                              focusNode: FocusNode(
                                                  skipTraversal: true),
                                              child: Icon(
                                                _model.mobSigninPassVisibility
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
                                                color: Colors.white,
                                                size: 60.0,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Colors.white,
                                                fontSize: 30.0,
                                                letterSpacing: 0.0,
                                              ),
                                          textAlign: TextAlign.center,
                                          validator: _model
                                              .mobSigninPassTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      tablet: false,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Padding(
                                        padding: const EdgeInsets.all(24.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            GoRouter.of(context)
                                                .prepareAuthEvent();

                                            final user = await authManager
                                                .signInWithEmail(
                                              context,
                                              _model
                                                  .mobSigninEmailTextController
                                                  .text,
                                              _model.mobSigninPassTextController
                                                  .text,
                                            );
                                            if (user == null) {
                                              return;
                                            }

                                            context.pushNamedAuth(
                                                'MainPage', context.mounted);
                                          },
                                          text: 'SIGN IN',
                                          options: FFButtonOptions(
                                            width: 300.0,
                                            height: 60.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .displaySmall
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      fontSize: 36.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(440.0, 680.0, 0.0, 0.0),
                    child: Text(
                      'I AM AN ADMINISTRATOR',
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily: 'Outfit',
                            color: Colors.white,
                            letterSpacing: 0.0,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
