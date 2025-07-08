import '/flutter_flow/flutter_flow_util.dart';
import 'adcionarimagem_ingresso_widget.dart' show AdcionarimagemIngressoWidget;
import 'package:flutter/material.dart';

class AdcionarimagemIngressoModel
    extends FlutterFlowModel<AdcionarimagemIngressoWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadDataFotopingressoCAMERA = false;
  FFUploadedFile uploadedLocalFile_uploadDataFotopingressoCAMERA =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataFotopingressoCAMERA = '';

  bool isDataUploading_uploadDataFotoingressoGALERIA = false;
  FFUploadedFile uploadedLocalFile_uploadDataFotoingressoGALERIA =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataFotoingressoGALERIA = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
