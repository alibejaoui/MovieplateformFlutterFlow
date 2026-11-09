import '/components/faq_item/faq_item_widget.dart';
import '/components/help_category/help_category_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'help_page_widget.dart' show HelpPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HelpPageModel extends FlutterFlowModel<HelpPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HelpCategory.
  late HelpCategoryModel helpCategoryModel1;
  // Model for HelpCategory.
  late HelpCategoryModel helpCategoryModel2;
  // Model for HelpCategory.
  late HelpCategoryModel helpCategoryModel3;
  // Model for FaqItem.
  late FaqItemModel faqItemModel1;
  // Model for FaqItem.
  late FaqItemModel faqItemModel2;
  // Model for FaqItem.
  late FaqItemModel faqItemModel3;
  // Model for FaqItem.
  late FaqItemModel faqItemModel4;

  @override
  void initState(BuildContext context) {
    helpCategoryModel1 = createModel(context, () => HelpCategoryModel());
    helpCategoryModel2 = createModel(context, () => HelpCategoryModel());
    helpCategoryModel3 = createModel(context, () => HelpCategoryModel());
    faqItemModel1 = createModel(context, () => FaqItemModel());
    faqItemModel2 = createModel(context, () => FaqItemModel());
    faqItemModel3 = createModel(context, () => FaqItemModel());
    faqItemModel4 = createModel(context, () => FaqItemModel());
  }

  @override
  void dispose() {
    helpCategoryModel1.dispose();
    helpCategoryModel2.dispose();
    helpCategoryModel3.dispose();
    faqItemModel1.dispose();
    faqItemModel2.dispose();
    faqItemModel3.dispose();
    faqItemModel4.dispose();
  }
}
