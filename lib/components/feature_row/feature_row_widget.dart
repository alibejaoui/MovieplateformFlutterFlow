import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'feature_row_model.dart';
export 'feature_row_model.dart';

class FeatureRowWidget extends StatefulWidget {
  const FeatureRowWidget({
    super.key,
    this.icon,
    String? label,
  }) : this.label = label ?? 'Watch movies and series in HD';

  final Widget? icon;
  final String label;

  @override
  State<FeatureRowWidget> createState() => _FeatureRowWidgetState();
}

class _FeatureRowWidgetState extends State<FeatureRowWidget> {
  late FeatureRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeatureRowModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 36.0,
          height: 36.0,
          decoration: BoxDecoration(
            color: Color(0x1AE8203A),
            borderRadius: BorderRadius.circular(8.0),
            shape: BoxShape.rectangle,
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: widget!.icon!,
        ),
        Expanded(
          flex: 1,
          child: Text(
            valueOrDefault<String>(
              widget!.label,
              'Watch movies and series in HD',
            ),
            maxLines: 1,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.poppins(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Color(0xFFE8E8E8),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  lineHeight: 1.4,
                ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ].divide(SizedBox(width: 16.0)),
    );
  }
}
