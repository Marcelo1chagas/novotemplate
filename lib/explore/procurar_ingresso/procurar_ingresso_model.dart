import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/components/widget_navbar/widget_navbar_widget.dart';
import '/index.dart';
import 'procurar_ingresso_widget.dart' show ProcurarIngressoWidget;
import 'package:flutter/material.dart';

class ProcurarIngressoModel extends FlutterFlowModel<ProcurarIngressoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<IngressosRecord> simpleSearchResults = [];
  // Model for WidgetNavbar component.
  late WidgetNavbarModel widgetNavbarModel;

  @override
  void initState(BuildContext context) {
    widgetNavbarModel = createModel(context, () => WidgetNavbarModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    widgetNavbarModel.dispose();
  }
}
