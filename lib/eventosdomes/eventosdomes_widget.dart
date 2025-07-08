import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'eventosdomes_model.dart';
export 'eventosdomes_model.dart';

/// Create a page // Página: Eventos do Mês (Versão Profissional e Completa)
/// // Objetivo: Listar eventos do mês com filtros por categoria, pesquisa e
/// ordenação
///
/// import 'package:flutter/material.dart';
/// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
///
/// class EventosDoMesPage extends StatefulWidget {
///   const EventosDoMesPage({super.key});
///
///   @override
///   State<EventosDoMesPage> createState() => _EventosDoMesPageState();
/// }
///
/// class _EventosDoMesPageState extends State<EventosDoMesPage> {
///   String categoriaSelecionada = 'Todas';
///   String ordemSelecionada = 'Mais recentes';
///   final TextEditingController _pesquisaController =
/// TextEditingController();
///
///   final List<String> categorias = ['Todas', 'Show', 'Festa', 'Teatro',
/// 'Esporte'];
///   final List<String> ordenacoes = ['Mais recentes', 'Mais baratos', 'Mais
/// próximos'];
///
///   @override
///   Widget build(BuildContext context) {
///     return Scaffold(
///       appBar: AppBar(
///         backgroundColor: Colors.white,
///         foregroundColor: Colors.black,
///         elevation: 0,
///         leading: IconButton(
///           icon: const Icon(Icons.arrow_back_ios_new),
///           onPressed: () => Navigator.pop(context),
///         ),
///         title: const Text('Eventos do Mês'),
///         centerTitle: true,
///       ),
///       backgroundColor: Colors.white,
///       body: Padding(
///         padding: const EdgeInsets.all(16),
///         child: Column(
///           crossAxisAlignment: CrossAxisAlignment.start,
///           children: [
///             // 🔎 Campo de pesquisa
///             TextField(
///               controller: _pesquisaController,
///               decoration: InputDecoration(
///                 hintText: 'Pesquisar eventos...
///
/// ',
///                 prefixIcon: const Icon(Icons.search),
///                 border: OutlineInputBorder(
///                   borderRadius: BorderRadius.circular(12),
///                 ),
///                 contentPadding: const EdgeInsets.symmetric(vertical: 0,
/// horizontal: 16),
///               ),
///             ),
///             const SizedBox(height: 16),
///
///             // 🎯 Filtros: categoria + ordenação
///             Row(
///               children: [
///                 Expanded(
///                   child: DropdownButtonFormField<String>(
///                     value: categoriaSelecionada,
///                     items: categorias.map((String categoria) {
///                       return DropdownMenuItem<String>(
///                         value: categoria,
///                         child: Text(categoria),
///                       );
///                     }).toList(),
///                     onChanged: (value) {
///                       setState(() {
///                         categoriaSelecionada = value!;
///                       });
///                     },
///                     decoration: InputDecoration(
///                       labelText: 'Categoria',
///                       border: OutlineInputBorder(
///                         borderRadius: BorderRadius.circular(12),
///                       ),
///                     ),
///                   ),
///                 ),
///                 const SizedBox(width: 12),
///                 Expanded(
///                   child: DropdownButtonFormField<String>(
///                     value: ordemSelecionada,
///                     items: ordenacoes.map((String ordem) {
///                       return DropdownMenuItem<String>(
///                         value: ordem,
///                         child: Text(ordem),
///                       );
///                     }).toList(),
///                     onChanged: (value) {
///                       setState(() {
///                         ordemSelecionada = value!;
///                       });
///                     },
///                     decoration: InputDecoration(
///                       labelText: 'Ordenar por',
///                       border: OutlineInputBorder(
///                         borderRadius: BorderRadius.circular(12),
///                       ),
///                     ),
///                   ),
///                 ),
///               ],
///             ),
///             const SizedBox(height: 24),
///
///             // 🗓️ Título do mês
///             const Text(
///               'Eventos em Junho de 2025',
///               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
///             ),
///             const SizedBox(height: 16),
///
///             // Lista longa com cards
///             Expanded(
///               child: ListView.separated(
///                 itemCount: 12,
///                 separatorBuilder: (_, __) => const SizedBox(height: 16),
///                 itemBuilder: (_, index) => _buildEventoCard(),
///               ),
///             ),
///           ],
///         ),
///       ),
///     );
///   }
///
///   Widget _buildEventoCard() {
///     return Container(
///       padding: const EdgeInsets.all(12),
///       decoration: BoxDecoration(
///         border: Border.all(color: Colors.grey.shade300),
///         borderRadius: BorderRadius.circular(12),
///         color: Colors.white,
///         boxShadow: [
///           BoxShadow(
///             color: Colors.black.withOpacity(0.03),
///             blurRadius: 4,
///             offset: const Offset(0, 2),
///           ),
///         ],
///       ),
///       child: Row(
///         crossAxisAlignment: CrossAxisAlignment.start,
///         children: [
///           ClipRRect(
///             borderRadius: BorderRadius.circular(8),
///             child: Image.network(
///               'https://via.placeholder.com/100x100.png?text=Evento',
///               width: 100,
///               height: 100,
///               fit: BoxFit.cover,
///             ),
///           ),
///           const SizedBox(width: 12),
///           Expanded(
///             child: Column(
///               crossAxisAlignment: CrossAxisAlignment.start,
///               children: [
///                 const Text(
///                   'Festival Música Boa',
///                   style: TextStyle(fontSize: 16, fontWeight:
/// FontWeight.bold),
///                 ),
///                 const SizedBox(height: 4),
///                 const Text('São Paulo - Allianz Parque'),
///                 const SizedBox(height: 4),
///                 Row(
///                   children: const [
///                     Icon(Icons.calendar_today, size: 14, color:
/// Colors.grey),
///                     SizedBox(width: 4),
///                     Text('22/06/2025'),
///                   ],
///                 ),
///                 const SizedBox(height: 4),
///                 Row(
///                   children: const [
///                     Icon(Icons.confirmation_number, size: 14, color:
/// Colors.grey),
///                     SizedBox(width: 4),
///                     Text('R\$ 59,90', style: TextStyle(color:
/// Colors.green)),
///                   ],
///                 ),
///                 const SizedBox(height: 4),
///                 Row(
///                   children: const [
///                     Icon(Icons.category, size: 14, color: Colors.grey),
///                     SizedBox(width: 4),
///                     Text('Show'),
///                   ],
///                 ),
///               ],
///             ),
///           ),
///         ],
///       ),
///     );
///   }
/// }
class EventosdomesWidget extends StatefulWidget {
  const EventosdomesWidget({super.key});

  static String routeName = 'eventosdomes';
  static String routePath = '/eventosdomes';

  @override
  State<EventosdomesWidget> createState() => _EventosdomesWidgetState();
}

class _EventosdomesWidgetState extends State<EventosdomesWidget> {
  late EventosdomesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventosdomesModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'eventosdomes'});
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 20.0,
            borderWidth: 1.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              '2ojq15b5' /* Eventos do Mês */,
            ),
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  font: GoogleFonts.rubik(
                    fontWeight:
                        FlutterFlowTheme.of(context).titleLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).titleLarge.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _model.textController,
                  focusNode: _model.textFieldFocusNode,
                  autofocus: false,
                  textInputAction: TextInputAction.search,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: FFLocalizations.of(context).getText(
                      '21v604ly' /* Pesquisar eventos... */,
                    ),
                    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    prefixIcon: Icon(
                      Icons.search,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.rubik(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                  cursorColor: FlutterFlowTheme.of(context).primary,
                  validator:
                      _model.textControllerValidator.asValidator(context),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController1 ??=
                              FormFieldController<String>(
                            _model.dropDownValue1 ??=
                                FFLocalizations.of(context).getText(
                              '5pwxotg1' /* Todas */,
                            ),
                          ),
                          options: [
                            FFLocalizations.of(context).getText(
                              'guh1izj6' /* Todas */,
                            ),
                            FFLocalizations.of(context).getText(
                              'kqr8jtx0' /* Show */,
                            ),
                            FFLocalizations.of(context).getText(
                              'qew08ctk' /* Festa */,
                            ),
                            FFLocalizations.of(context).getText(
                              'kru25ixh' /* Teatro */,
                            ),
                            FFLocalizations.of(context).getText(
                              'wue1jwvr' /* Esporte */,
                            )
                          ],
                          onChanged: (val) =>
                              safeSetState(() => _model.dropDownValue1 = val),
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.rubik(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            '62evhego' /* Categoria */,
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          elevation: 0.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 1.0,
                          borderRadius: 12.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          hidesUnderline: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                      Expanded(
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController2 ??=
                              FormFieldController<String>(
                            _model.dropDownValue2 ??=
                                FFLocalizations.of(context).getText(
                              'oouhhipl' /* Mais recentes */,
                            ),
                          ),
                          options: [
                            FFLocalizations.of(context).getText(
                              'm2jz94eu' /* Mais recentes */,
                            ),
                            FFLocalizations.of(context).getText(
                              'bcwa2oit' /* Mais baratos */,
                            ),
                            FFLocalizations.of(context).getText(
                              'af9i4r1v' /* Mais próximos */,
                            )
                          ],
                          onChanged: (val) =>
                              safeSetState(() => _model.dropDownValue2 = val),
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.rubik(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            'bzxv4k0z' /* Ordenar por */,
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          elevation: 0.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 1.0,
                          borderRadius: 12.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          hidesUnderline: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 16.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '3k8rpm1s' /* Eventos em Junho de 2025 */,
                    ),
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final events = FFAppState().EVENTS.toList();

                      return ListView.separated(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: events.length,
                        separatorBuilder: (_, __) => SizedBox(height: 25.0),
                        itemBuilder: (context, eventsIndex) {
                          final eventsItem = events[eventsIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 120.0,
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.network(
                                        'https://images.unsplash.com/photo-1510511233900-1982d92bd835?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyM3x8c2hvd3xlbnwwfHx8fDE3NTAwNjczMTh8MA&ixlib=rb-4.1.0&q=80&w=1080',
                                      ).image,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  alignment: AlignmentDirectional(1.0, -1.0),
                                  child: Align(
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 2.0, 2.0, 0.0),
                                      child: Container(
                                        width: 40.0,
                                        height: 40.0,
                                        child: Stack(
                                          alignment:
                                              AlignmentDirectional(1.0, -1.0),
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 9.0, 9.0, 0.0),
                                              child: Icon(
                                                Icons.favorite_rounded,
                                                color: Color(0xA81C232B),
                                                size: 22.0,
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, -1.0),
                                              child: ToggleIcon(
                                                onPressed: () async {
                                                  safeSetState(
                                                    () => FFAppState()
                                                            .EVENTSFAVORITES
                                                            .contains(
                                                                EventsStruct())
                                                        ? FFAppState()
                                                            .removeFromEVENTSFAVORITES(
                                                                EventsStruct())
                                                        : FFAppState()
                                                            .addToEVENTSFAVORITES(
                                                                EventsStruct()),
                                                  );
                                                },
                                                value: FFAppState()
                                                    .EVENTSFAVORITES
                                                    .contains(EventsStruct()),
                                                onIcon: Icon(
                                                  Icons.favorite_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  size: 22.0,
                                                ),
                                                offIcon: Icon(
                                                  Icons.favorite_border_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .icon,
                                                  size: 22.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              FFIcons.kmapPin,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 16.0,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(6.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ylz5r862' /* Chale */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.rubik(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 6.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '7ek73gck' /* Desmantelo */,
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  font: GoogleFonts.rubik(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'gc2uhw3h' /* Jan 10, 2025, 05:00 AM */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.rubik(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'xge7k7pl' /* R$500 */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyLarge
                                                    .override(
                                                      font: GoogleFonts.rubik(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .fontStyle,
                                                      ),
                                                      color: Color(0xFF2E4FE8),
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                    ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .warning,
                                                    size: 20.0,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(1.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'xu9ds9su' /* 4.9 */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .rubik(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .warning,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
