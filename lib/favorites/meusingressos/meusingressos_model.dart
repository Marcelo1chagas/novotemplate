import '/flutter_flow/flutter_flow_util.dart';
import '/home/components/widget_navbar/widget_navbar_widget.dart';
import '/index.dart';
import 'meusingressos_widget.dart' show MeusingressosWidget;
import 'package:flutter/material.dart';

class MeusingressosModel extends FlutterFlowModel<MeusingressosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for WidgetNavbar component.
  late WidgetNavbarModel widgetNavbarModel;

  @override
  void initState(BuildContext context) {
    widgetNavbarModel = createModel(context, () => WidgetNavbarModel());
  }

  @override
  void dispose() {
    widgetNavbarModel.dispose();
  }
}
