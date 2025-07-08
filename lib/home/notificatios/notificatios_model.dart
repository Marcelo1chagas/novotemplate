import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'notificatios_widget.dart' show NotificatiosWidget;
import 'package:flutter/material.dart';

class NotificatiosModel extends FlutterFlowModel<NotificatiosWidget> {
  ///  Local state fields for this page.

  bool switchComprado = false;

  bool switchVendido = false;

  bool switchAddIngresso = false;

  bool switchFAV = false;

  bool switchLeilao = false;

  bool switchIngressoEnviado = false;

  bool switchAlcance = false;

  bool switchTODOS = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
