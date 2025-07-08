import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'carregandocriarconta_model.dart';
export 'carregandocriarconta_model.dart';

class CarregandocriarcontaWidget extends StatefulWidget {
  const CarregandocriarcontaWidget({super.key});

  @override
  State<CarregandocriarcontaWidget> createState() =>
      _CarregandocriarcontaWidgetState();
}

class _CarregandocriarcontaWidgetState
    extends State<CarregandocriarcontaWidget> {
  late CarregandocriarcontaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarregandocriarcontaModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CARREGANDOCRIARCONTA_Carregandocriarcont');
      logFirebaseEvent('Carregandocriarconta_wait__delay');
      await Future.delayed(const Duration(milliseconds: 3000));
      logFirebaseEvent('Carregandocriarconta_navigate_to');

      context.pushNamed(
        HomeWidget.routeName,
        queryParameters: {
          'fromRegister': serializeParam(
            true,
            ParamType.bool,
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
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
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
                  'oor30bc6' /* Carregando ... */,
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
