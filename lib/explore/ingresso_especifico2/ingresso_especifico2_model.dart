import '/explore/components/ticket_card/ticket_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ingresso_especifico2_widget.dart' show IngressoEspecifico2Widget;
import 'package:flutter/material.dart';

class IngressoEspecifico2Model
    extends FlutterFlowModel<IngressoEspecifico2Widget> {
  ///  Local state fields for this page.

  bool fullDescription = false;

  ///  State fields for stateful widgets in this page.

  // Models for TicketCard dynamic component.
  late FlutterFlowDynamicModels<TicketCardModel> ticketCardModels;

  @override
  void initState(BuildContext context) {
    ticketCardModels = FlutterFlowDynamicModels(() => TicketCardModel());
  }

  @override
  void dispose() {
    ticketCardModels.dispose();
  }
}
