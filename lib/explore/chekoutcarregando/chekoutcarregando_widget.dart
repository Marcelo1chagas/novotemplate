import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'chekoutcarregando_model.dart';
export 'chekoutcarregando_model.dart';

class ChekoutcarregandoWidget extends StatefulWidget {
  const ChekoutcarregandoWidget({
    super.key,
    this.data,
  });

  final EventsStruct? data;

  @override
  State<ChekoutcarregandoWidget> createState() =>
      _ChekoutcarregandoWidgetState();
}

class _ChekoutcarregandoWidgetState extends State<ChekoutcarregandoWidget> {
  late ChekoutcarregandoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChekoutcarregandoModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CHEKOUTCARREGANDO_Chekoutcarregando_ON_I');
      logFirebaseEvent('Chekoutcarregando_wait__delay');
      await Future.delayed(const Duration(milliseconds: 3000));
      logFirebaseEvent('Chekoutcarregando_dismiss_dialog');
      Navigator.pop(context);
      logFirebaseEvent('Chekoutcarregando_navigate_to');

      context.pushNamed(
        SucessPaymentWidget.routeName,
        queryParameters: {
          'eventData': serializeParam(
            widget.data,
            ParamType.DataStruct,
          ),
        }.withoutNulls,
      );
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 180.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
              child: Lottie.asset(
                'assets/jsons/64y5hrhh.json',
                width: 100.0,
                height: 100.0,
                fit: BoxFit.contain,
                animate: true,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'k6dmxplx' /* Processando ... */,
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      font: GoogleFonts.rubik(
                        fontWeight:
                            FlutterFlowTheme.of(context).titleMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleMedium.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).titleMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleMedium.fontStyle,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
