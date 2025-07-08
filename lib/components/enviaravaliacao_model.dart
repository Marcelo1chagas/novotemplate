import '/flutter_flow/flutter_flow_util.dart';
import 'enviaravaliacao_widget.dart' show EnviaravaliacaoWidget;
import 'package:flutter/material.dart';

class EnviaravaliacaoModel extends FlutterFlowModel<EnviaravaliacaoWidget> {
  ///  State fields for stateful widgets in this component.

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
