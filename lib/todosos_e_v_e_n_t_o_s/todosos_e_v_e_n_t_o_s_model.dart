import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'todosos_e_v_e_n_t_o_s_widget.dart' show TodososEVENTOSWidget;
import 'package:flutter/material.dart';

class TodososEVENTOSModel extends FlutterFlowModel<TodososEVENTOSWidget> {
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
