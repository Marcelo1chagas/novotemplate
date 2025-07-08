import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widget_categories_card2_model.dart';
export 'widget_categories_card2_model.dart';

class WidgetCategoriesCard2Widget extends StatefulWidget {
  const WidgetCategoriesCard2Widget({
    super.key,
    this.data,
  });

  final CategoriesStruct? data;

  @override
  State<WidgetCategoriesCard2Widget> createState() =>
      _WidgetCategoriesCard2WidgetState();
}

class _WidgetCategoriesCard2WidgetState
    extends State<WidgetCategoriesCard2Widget> {
  late WidgetCategoriesCard2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetCategoriesCard2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.44,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 45.0,
              height: 45.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).accent1,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.network(
                    'https://images.unsplash.com/photo-1516450360452-9312f5e86fc7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxM3x8ZmVzdGF8ZW58MHx8fHwxNzUwMDc5ODIyfDA&ixlib=rb-4.1.0&q=80&w=1080',
                  ).image,
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.data?.title,
                    'Show',
                  ),
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        font: GoogleFonts.rubik(
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).labelMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelMedium.fontStyle,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
