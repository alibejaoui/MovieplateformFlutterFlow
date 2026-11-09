import '/components/feature_row/feature_row_widget.dart';
import '/components/legal_link/legal_link_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'about_page_widget.dart' show AboutPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AboutPageModel extends FlutterFlowModel<AboutPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for FeatureRow.
  late FeatureRowModel featureRowModel1;
  // Model for FeatureRow.
  late FeatureRowModel featureRowModel2;
  // Model for FeatureRow.
  late FeatureRowModel featureRowModel3;
  // Model for FeatureRow.
  late FeatureRowModel featureRowModel4;
  // Model for LegalLink.
  late LegalLinkModel legalLinkModel1;
  // Model for LegalLink.
  late LegalLinkModel legalLinkModel2;
  // Model for LegalLink.
  late LegalLinkModel legalLinkModel3;

  @override
  void initState(BuildContext context) {
    featureRowModel1 = createModel(context, () => FeatureRowModel());
    featureRowModel2 = createModel(context, () => FeatureRowModel());
    featureRowModel3 = createModel(context, () => FeatureRowModel());
    featureRowModel4 = createModel(context, () => FeatureRowModel());
    legalLinkModel1 = createModel(context, () => LegalLinkModel());
    legalLinkModel2 = createModel(context, () => LegalLinkModel());
    legalLinkModel3 = createModel(context, () => LegalLinkModel());
  }

  @override
  void dispose() {
    featureRowModel1.dispose();
    featureRowModel2.dispose();
    featureRowModel3.dispose();
    featureRowModel4.dispose();
    legalLinkModel1.dispose();
    legalLinkModel2.dispose();
    legalLinkModel3.dispose();
  }
}
