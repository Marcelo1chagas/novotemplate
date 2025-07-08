import '/flutter_flow/flutter_flow_util.dart';
import 'ingresso_especifico_comprado_widget.dart'
    show IngressoEspecificoCompradoWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class IngressoEspecificoCompradoModel
    extends FlutterFlowModel<IngressoEspecificoCompradoWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? ticketController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ticketController?.finish();
  }
}
