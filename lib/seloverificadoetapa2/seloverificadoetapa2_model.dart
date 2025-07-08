import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'seloverificadoetapa2_widget.dart' show Seloverificadoetapa2Widget;
import 'package:flutter/material.dart';

class Seloverificadoetapa2Model
    extends FlutterFlowModel<Seloverificadoetapa2Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
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
