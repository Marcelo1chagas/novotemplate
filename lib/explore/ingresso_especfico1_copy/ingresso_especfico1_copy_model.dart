import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'ingresso_especfico1_copy_widget.dart' show IngressoEspecfico1CopyWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class IngressoEspecfico1CopyModel
    extends FlutterFlowModel<IngressoEspecfico1CopyWidget> {
  ///  Local state fields for this page.

  bool fullDescription = false;

  bool corIngresso = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
