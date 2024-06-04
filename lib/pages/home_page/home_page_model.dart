import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for web_signup_email widget.
  FocusNode? webSignupEmailFocusNode;
  TextEditingController? webSignupEmailTextController;
  String? Function(BuildContext, String?)?
      webSignupEmailTextControllerValidator;
  // State field(s) for web_signup_pass widget.
  FocusNode? webSignupPassFocusNode;
  TextEditingController? webSignupPassTextController;
  late bool webSignupPassVisibility;
  String? Function(BuildContext, String?)? webSignupPassTextControllerValidator;
  // State field(s) for web_signin_email widget.
  FocusNode? webSigninEmailFocusNode;
  TextEditingController? webSigninEmailTextController;
  String? Function(BuildContext, String?)?
      webSigninEmailTextControllerValidator;
  // State field(s) for web_signin_pass widget.
  FocusNode? webSigninPassFocusNode;
  TextEditingController? webSigninPassTextController;
  late bool webSigninPassVisibility;
  String? Function(BuildContext, String?)? webSigninPassTextControllerValidator;
  // State field(s) for mobile_tabbar widget.
  TabController? mobileTabbarController;
  int get mobileTabbarCurrentIndex =>
      mobileTabbarController != null ? mobileTabbarController!.index : 0;

  // State field(s) for mob_signup_email widget.
  FocusNode? mobSignupEmailFocusNode;
  TextEditingController? mobSignupEmailTextController;
  String? Function(BuildContext, String?)?
      mobSignupEmailTextControllerValidator;
  // State field(s) for mob_signup_pass widget.
  FocusNode? mobSignupPassFocusNode;
  TextEditingController? mobSignupPassTextController;
  late bool mobSignupPassVisibility;
  String? Function(BuildContext, String?)? mobSignupPassTextControllerValidator;
  // State field(s) for mob_signin_email widget.
  FocusNode? mobSigninEmailFocusNode;
  TextEditingController? mobSigninEmailTextController;
  String? Function(BuildContext, String?)?
      mobSigninEmailTextControllerValidator;
  // State field(s) for mob_signin_pass widget.
  FocusNode? mobSigninPassFocusNode;
  TextEditingController? mobSigninPassTextController;
  late bool mobSigninPassVisibility;
  String? Function(BuildContext, String?)? mobSigninPassTextControllerValidator;

  @override
  void initState(BuildContext context) {
    webSignupPassVisibility = false;
    webSigninPassVisibility = false;
    mobSignupPassVisibility = false;
    mobSigninPassVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    webSignupEmailFocusNode?.dispose();
    webSignupEmailTextController?.dispose();

    webSignupPassFocusNode?.dispose();
    webSignupPassTextController?.dispose();

    webSigninEmailFocusNode?.dispose();
    webSigninEmailTextController?.dispose();

    webSigninPassFocusNode?.dispose();
    webSigninPassTextController?.dispose();

    mobileTabbarController?.dispose();
    mobSignupEmailFocusNode?.dispose();
    mobSignupEmailTextController?.dispose();

    mobSignupPassFocusNode?.dispose();
    mobSignupPassTextController?.dispose();

    mobSigninEmailFocusNode?.dispose();
    mobSigninEmailTextController?.dispose();

    mobSigninPassFocusNode?.dispose();
    mobSigninPassTextController?.dispose();
  }
}
