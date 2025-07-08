import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ativarnot2_model.dart';
export 'ativarnot2_model.dart';

class Ativarnot2Widget extends StatefulWidget {
  const Ativarnot2Widget({super.key});

  static String routeName = 'ativarnot2';
  static String routePath = '/ativarnot2';

  @override
  State<Ativarnot2Widget> createState() => _Ativarnot2WidgetState();
}

class _Ativarnot2WidgetState extends State<Ativarnot2Widget> {
  late Ativarnot2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Ativarnot2Model());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'ativarnot2'});
    _model.switchValue1 = valueOrDefault<bool>(
        currentUserDocument?.permitirEMAILnotifcacao, false);
    _model.switchValue2 = valueOrDefault<bool>(
        currentUserDocument?.permitirPUSHNotificacao, false);
    _model.switchValue3 =
        valueOrDefault<bool>(currentUserDocument?.permitirAPPNotifcacao, false);
    _model.switchValue4 = _model.todasNOT;
    _model.switchValue5 = _model.pagamentos;
    _model.switchValue6 = _model.atualizacoesdoAPP;
    _model.switchValue7 = _model.lances;
    _model.switchValue8 = _model.ingressosVendidos;
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(6.0, 6.0, 6.0, 6.0),
            child: FlutterFlowIconButton(
              borderRadius: 50.0,
              buttonSize: 42.0,
              fillColor: FlutterFlowTheme.of(context).accent4,
              icon: Icon(
                FFIcons.karrowLeft,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () async {
                logFirebaseEvent('ATIVARNOT2_PAGE_arrowLeft_ICN_ON_TAP');
                logFirebaseEvent('IconButton_navigate_back');
                context.safePop();
              },
            ),
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'uosunc6v' /* Notificações */,
            ),
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  font: GoogleFonts.rubik(
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                ),
          ),
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
            ),
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 14.0, 0.0, 14.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'n6s57fgp' /* Por onde deseja receber notifi... */,
                    ),
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontStyle,
                          ),
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .fontStyle,
                        ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 14.0, 0.0, 14.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '4kaudvtc' /* E-mail */,
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => Switch.adaptive(
                      value: _model.switchValue1!,
                      onChanged: (newValue) async {
                        safeSetState(() => _model.switchValue1 = newValue);
                        if (newValue) {
                          logFirebaseEvent(
                              'ATIVARNOT2_Switch_grngm5ge_ON_TOGGLE_ON');
                          logFirebaseEvent('Switch_show_snack_bar');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Alteração salva com sucesso!',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).success,
                            ),
                          );
                          logFirebaseEvent('Switch_backend_call');

                          await currentUserReference!
                              .update(createUsersRecordData(
                            permitirEMAILnotifcacao: true,
                          ));
                        } else {
                          logFirebaseEvent(
                              'ATIVARNOT2_Switch_grngm5ge_ON_TOGGLE_OFF');
                          logFirebaseEvent('Switch_show_snack_bar');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Alteração salva com sucesso!',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).success,
                            ),
                          );
                          logFirebaseEvent('Switch_backend_call');

                          await currentUserReference!
                              .update(createUsersRecordData(
                            permitirEMAILnotifcacao: false,
                          ));
                        }
                      },
                      activeColor: FlutterFlowTheme.of(context).info,
                      activeTrackColor: Color(0xFF2E4FE8),
                      inactiveTrackColor: FlutterFlowTheme.of(context).accent2,
                      inactiveThumbColor: FlutterFlowTheme.of(context).info,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 14.0, 0.0, 14.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '5w96e4ga' /* Celular */,
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => Switch.adaptive(
                      value: _model.switchValue2!,
                      onChanged: (newValue) async {
                        safeSetState(() => _model.switchValue2 = newValue);
                        if (newValue) {
                          logFirebaseEvent(
                              'ATIVARNOT2_Switch_cvcjgssl_ON_TOGGLE_ON');
                          logFirebaseEvent('Switch_show_snack_bar');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Alteração salva com sucesso!',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).success,
                            ),
                          );
                          logFirebaseEvent('Switch_backend_call');

                          await currentUserReference!
                              .update(createUsersRecordData(
                            permitirPUSHNotificacao: true,
                          ));
                        } else {
                          logFirebaseEvent(
                              'ATIVARNOT2_Switch_cvcjgssl_ON_TOGGLE_OFF');
                          logFirebaseEvent('Switch_show_snack_bar');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Alteração salva com sucesso!',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).success,
                            ),
                          );
                          logFirebaseEvent('Switch_backend_call');

                          await currentUserReference!
                              .update(createUsersRecordData(
                            permitirPUSHNotificacao: false,
                          ));
                        }
                      },
                      activeColor: FlutterFlowTheme.of(context).info,
                      activeTrackColor: Color(0xFF2E4FE8),
                      inactiveTrackColor: FlutterFlowTheme.of(context).accent2,
                      inactiveThumbColor: FlutterFlowTheme.of(context).info,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 14.0, 0.0, 14.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'r0imo0we' /* Aplicativo */,
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => Switch.adaptive(
                      value: _model.switchValue3!,
                      onChanged: (newValue) async {
                        safeSetState(() => _model.switchValue3 = newValue);
                        if (newValue) {
                          logFirebaseEvent(
                              'ATIVARNOT2_Switch_luzlgx6y_ON_TOGGLE_ON');
                          logFirebaseEvent('Switch_show_snack_bar');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Alteração salva com sucesso!',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).success,
                            ),
                          );
                          logFirebaseEvent('Switch_backend_call');

                          await currentUserReference!
                              .update(createUsersRecordData(
                            permitirAPPNotifcacao: true,
                          ));
                        } else {
                          logFirebaseEvent(
                              'ATIVARNOT2_Switch_luzlgx6y_ON_TOGGLE_OFF');
                          logFirebaseEvent('Switch_show_snack_bar');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Alteração salva com sucesso!',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).success,
                            ),
                          );
                          logFirebaseEvent('Switch_backend_call');

                          await currentUserReference!
                              .update(createUsersRecordData(
                            permitirAPPNotifcacao: false,
                          ));
                        }
                      },
                      activeColor: FlutterFlowTheme.of(context).info,
                      activeTrackColor: Color(0xFF2E4FE8),
                      inactiveTrackColor: FlutterFlowTheme.of(context).accent2,
                      inactiveThumbColor: FlutterFlowTheme.of(context).info,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 14.0, 0.0, 14.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'f0y90xzg' /* Tipos de Notificação: */,
                      ),
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            font: GoogleFonts.rubik(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontStyle,
                            ),
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 14.0, 0.0, 14.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'efwlmxw3' /* Todas */,
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: Switch.adaptive(
                    value: _model.switchValue4!,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.switchValue4 = newValue);
                      if (newValue) {
                        logFirebaseEvent(
                            'ATIVARNOT2_Switch_zyv2q2w3_ON_TOGGLE_ON');
                        logFirebaseEvent('Switch_show_snack_bar');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Alteração salva com sucesso!',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).success,
                          ),
                        );
                        logFirebaseEvent('Switch_update_page_state');
                        _model.todasNOT = true;
                        safeSetState(() {});
                      } else {
                        logFirebaseEvent(
                            'ATIVARNOT2_Switch_zyv2q2w3_ON_TOGGLE_OFF');
                        logFirebaseEvent('Switch_show_snack_bar');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Alteração salva com sucesso!',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).success,
                          ),
                        );
                        logFirebaseEvent('Switch_update_page_state');
                        _model.todasNOT = false;
                        safeSetState(() {});
                      }
                    },
                    activeColor: FlutterFlowTheme.of(context).info,
                    activeTrackColor: Color(0xFF2E4FE8),
                    inactiveTrackColor: FlutterFlowTheme.of(context).accent2,
                    inactiveThumbColor: FlutterFlowTheme.of(context).info,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 14.0, 0.0, 14.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '1gfswgq5' /* Pagamentos */,
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: Switch.adaptive(
                    value: _model.switchValue5!,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.switchValue5 = newValue);
                      if (newValue) {
                        logFirebaseEvent(
                            'ATIVARNOT2_Switch_gy6t1qct_ON_TOGGLE_ON');
                        logFirebaseEvent('Switch_show_snack_bar');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Alteração salva com sucesso!',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).success,
                          ),
                        );
                        logFirebaseEvent('Switch_update_page_state');
                        _model.pagamentos = true;
                        safeSetState(() {});
                      } else {
                        logFirebaseEvent(
                            'ATIVARNOT2_Switch_gy6t1qct_ON_TOGGLE_OFF');
                        logFirebaseEvent('Switch_show_snack_bar');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Alteração salva com sucesso!',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).success,
                          ),
                        );
                        logFirebaseEvent('Switch_update_page_state');
                        _model.pagamentos = false;
                        safeSetState(() {});
                      }
                    },
                    activeColor: FlutterFlowTheme.of(context).info,
                    activeTrackColor: Color(0xFF2E4FE8),
                    inactiveTrackColor: FlutterFlowTheme.of(context).accent2,
                    inactiveThumbColor: FlutterFlowTheme.of(context).info,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 14.0, 0.0, 14.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'ljk24cvy' /* Atualizações do App */,
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: Switch.adaptive(
                    value: _model.switchValue6!,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.switchValue6 = newValue);
                      if (newValue) {
                        logFirebaseEvent(
                            'ATIVARNOT2_Switch_exbfapy7_ON_TOGGLE_ON');
                        logFirebaseEvent('Switch_show_snack_bar');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Alteração salva com sucesso!',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).success,
                          ),
                        );
                        logFirebaseEvent('Switch_update_page_state');
                        _model.atualizacoesdoAPP = true;
                        safeSetState(() {});
                      } else {
                        logFirebaseEvent(
                            'ATIVARNOT2_Switch_exbfapy7_ON_TOGGLE_OFF');
                        logFirebaseEvent('Switch_show_snack_bar');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Alteração salva com sucesso!',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).success,
                          ),
                        );
                        logFirebaseEvent('Switch_update_page_state');
                        _model.atualizacoesdoAPP = false;
                        safeSetState(() {});
                      }
                    },
                    activeColor: FlutterFlowTheme.of(context).info,
                    activeTrackColor: Color(0xFF2E4FE8),
                    inactiveTrackColor: FlutterFlowTheme.of(context).accent2,
                    inactiveThumbColor: FlutterFlowTheme.of(context).info,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 14.0, 0.0, 14.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'adx32dz2' /* Lances recebidos */,
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: Switch.adaptive(
                    value: _model.switchValue7!,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.switchValue7 = newValue);
                      if (newValue) {
                        logFirebaseEvent(
                            'ATIVARNOT2_Switch_r0rzakv2_ON_TOGGLE_ON');
                        logFirebaseEvent('Switch_show_snack_bar');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Alteração salva com sucesso!',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).success,
                          ),
                        );
                        logFirebaseEvent('Switch_update_page_state');
                        _model.lances = true;
                        safeSetState(() {});
                      } else {
                        logFirebaseEvent(
                            'ATIVARNOT2_Switch_r0rzakv2_ON_TOGGLE_OFF');
                        logFirebaseEvent('Switch_show_snack_bar');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Alteração salva com sucesso!',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).success,
                          ),
                        );
                        logFirebaseEvent('Switch_update_page_state');
                        _model.lances = false;
                        safeSetState(() {});
                      }
                    },
                    activeColor: FlutterFlowTheme.of(context).info,
                    activeTrackColor: Color(0xFF2E4FE8),
                    inactiveTrackColor: FlutterFlowTheme.of(context).accent2,
                    inactiveThumbColor: FlutterFlowTheme.of(context).info,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 14.0, 0.0, 14.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '3vt7cq9s' /* Ingresso vendidos */,
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: Switch.adaptive(
                    value: _model.switchValue8!,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.switchValue8 = newValue);
                      if (newValue) {
                        logFirebaseEvent(
                            'ATIVARNOT2_Switch_2zbica15_ON_TOGGLE_ON');
                        logFirebaseEvent('Switch_show_snack_bar');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Alteração salva com sucesso!',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).success,
                          ),
                        );
                        logFirebaseEvent('Switch_update_page_state');
                        _model.ingressosVendidos = true;
                        safeSetState(() {});
                      } else {
                        logFirebaseEvent(
                            'ATIVARNOT2_Switch_2zbica15_ON_TOGGLE_OFF');
                        logFirebaseEvent('Switch_show_snack_bar');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Alteração salva com sucesso!',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).success,
                          ),
                        );
                        logFirebaseEvent('Switch_update_page_state');
                        _model.lances = false;
                        safeSetState(() {});
                      }
                    },
                    activeColor: FlutterFlowTheme.of(context).info,
                    activeTrackColor: Color(0xFF2E4FE8),
                    inactiveTrackColor: FlutterFlowTheme.of(context).accent2,
                    inactiveThumbColor: FlutterFlowTheme.of(context).info,
                  ),
                ),
              ],
            ),
          ].addToStart(SizedBox(height: 15.0)).addToEnd(SizedBox(height: 15.0)),
        ),
      ),
    );
  }
}
