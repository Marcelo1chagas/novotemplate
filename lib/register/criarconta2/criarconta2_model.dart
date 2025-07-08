import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'criarconta2_widget.dart' show Criarconta2Widget;
import 'package:flutter/material.dart';

class Criarconta2Model extends FlutterFlowModel<Criarconta2Widget> {
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
