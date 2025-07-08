import '/flutter_flow/flutter_flow_util.dart';
import 'adcionarimagem_widget.dart' show AdcionarimagemWidget;
import 'package:flutter/material.dart';

class AdcionarimagemModel extends FlutterFlowModel<AdcionarimagemWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadDataFotoperfilCamera = false;
  FFUploadedFile uploadedLocalFile_uploadDataFotoperfilCamera =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataFotoperfilCamera = '';

  bool isDataUploading_uploadDataFotoperfilGaleria = false;
  FFUploadedFile uploadedLocalFile_uploadDataFotoperfilGaleria =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataFotoperfilGaleria = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
