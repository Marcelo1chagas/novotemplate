import '/flutter_flow/flutter_flow_util.dart';
import 'denunciaeusuario_widget.dart' show DenunciaeusuarioWidget;
import 'package:flutter/material.dart';

class DenunciaeusuarioModel extends FlutterFlowModel<DenunciaeusuarioWidget> {
  ///  State fields for stateful widgets in this component.

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
