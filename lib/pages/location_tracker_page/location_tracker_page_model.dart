import '/flutter_flow/flutter_flow_util.dart';
import 'location_tracker_page_widget.dart' show LocationTrackerPageWidget;
import 'package:flutter/material.dart';

class LocationTrackerPageModel
    extends FlutterFlowModel<LocationTrackerPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // State field(s) for TabBar widget.
  TabController? tabBarController3;
  int get tabBarCurrentIndex3 =>
      tabBarController3 != null ? tabBarController3!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController1?.dispose();
    tabBarController2?.dispose();
    tabBarController3?.dispose();
  }
}
