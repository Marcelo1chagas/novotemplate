import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'editardadosbancarios_widget.dart' show EditardadosbancariosWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditardadosbancariosModel
    extends FlutterFlowModel<EditardadosbancariosWidget> {
  ///  Local state fields for this page.

  bool chaveCPF = false;

  bool chaveEmail = false;

  bool chavaTelefone = false;

  bool chaveAleatoria = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'yipmclbu' /* Campo Obrigatório */,
      );
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'oeu0uc9p' /* Campo Obrigatório */,
      );
    }

    return null;
  }

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for chaveCPF widget.
  FocusNode? chaveCPFFocusNode;
  TextEditingController? chaveCPFTextController;
  late MaskTextInputFormatter chaveCPFMask;
  String? Function(BuildContext, String?)? chaveCPFTextControllerValidator;
  // State field(s) for chaveEmail widget.
  FocusNode? chaveEmailFocusNode;
  TextEditingController? chaveEmailTextController;
  String? Function(BuildContext, String?)? chaveEmailTextControllerValidator;
  // State field(s) for chaveTelefone widget.
  FocusNode? chaveTelefoneFocusNode;
  TextEditingController? chaveTelefoneTextController;
  late MaskTextInputFormatter chaveTelefoneMask;
  String? Function(BuildContext, String?)? chaveTelefoneTextControllerValidator;
  // State field(s) for chaveAleatoria widget.
  FocusNode? chaveAleatoriaFocusNode;
  TextEditingController? chaveAleatoriaTextController;
  String? Function(BuildContext, String?)?
      chaveAleatoriaTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  String? _textController7Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'yzp63zb4' /* Campo Obrigatório */,
      );
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  String? _textController8Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '4bftbwfi' /* Campo Obrigatório */,
      );
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
    textController7Validator = _textController7Validator;
    textController8Validator = _textController8Validator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    chaveCPFFocusNode?.dispose();
    chaveCPFTextController?.dispose();

    chaveEmailFocusNode?.dispose();
    chaveEmailTextController?.dispose();

    chaveTelefoneFocusNode?.dispose();
    chaveTelefoneTextController?.dispose();

    chaveAleatoriaFocusNode?.dispose();
    chaveAleatoriaTextController?.dispose();

    textFieldFocusNode3?.dispose();
    textController7?.dispose();

    textFieldFocusNode4?.dispose();
    textController8?.dispose();
  }
}
