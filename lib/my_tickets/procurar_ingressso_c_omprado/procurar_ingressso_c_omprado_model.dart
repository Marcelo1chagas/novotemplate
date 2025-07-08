import '/flutter_flow/flutter_flow_util.dart';
import 'procurar_ingressso_c_omprado_widget.dart'
    show ProcurarIngresssoCOmpradoWidget;
import 'package:flutter/material.dart';

class ProcurarIngresssoCOmpradoModel
    extends FlutterFlowModel<ProcurarIngresssoCOmpradoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
