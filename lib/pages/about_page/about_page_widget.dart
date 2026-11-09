import '/components/feature_row/feature_row_widget.dart';
import '/components/legal_link/legal_link_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'about_page_model.dart';
export 'about_page_model.dart';

/// Create an "About" page for a movie streaming mobile app built in
/// FlutterFlow.
///
/// STYLE
/// - Dark theme: page background #0A0A0A, cards #1E1E1E (slightly lighter
/// than the background), card border radius 12, padding 16.
/// - Accent color: red #E8203A, used for icons and highlights.
/// - Text: white for titles, light grey for descriptions. Font: Poppins.
/// - Same look as the Settings page: rounded dark cards, clean spacing, 20px
/// page padding.
///
/// LAYOUT (top to bottom)
/// 1. App bar: back arrow on the left, centered title "About", no elevation.
/// 2. Logo section, centered:
///    - App logo (placeholder image, 90x90, rounded corners 20)
///    - App name in bold white, size 22
///    - Small grey text "Version 1.0.0"
/// 3. Description card: a short paragraph (3 to 4 lines) explaining that the
/// app lets users watch movies and series, discover new titles, and enjoy
/// high-quality streaming anywhere.
/// 4. Section title "Features", followed by 4 rows inside one dark card, each
/// with a red icon on the left and a text on the right:
///    - Watch movies and series in HD
///    - Discover trending and new releases
///    - Multiple languages supported
///    - Smooth, ad-light experience
/// 5. Section title "Legal & Links", followed by 3 tappable cards with an
/// icon on the left, a title, and a chevron on the right:
///    - Terms of Service
///    - Privacy Policy
///    - Rate the App
/// 6. Section title "Follow Us": a centered row of 3 circular icon buttons
/// (Instagram, Facebook, X), dark fill with a red icon.
/// 7. Small grey text at the bottom, centered: "© 2026 Your App Name. All
/// rights reserved."
///
/// BEHAVIOR
/// - The page is opened from the "About" row on the Settings page.
/// - The back arrow navigates back.
/// - Terms and Privacy cards open their pages or URLs, Rate the App opens the
/// store link, and the social icons open the matching URLs.
/// - The page must scroll without overflow errors on small screens.
/// - Support right-to-left layout for Arabic, and use text that can be
/// translated (English, Arabic, French).
class AboutPageWidget extends StatefulWidget {
  const AboutPageWidget({super.key});

  static String routeName = 'AboutPage';
  static String routePath = '/aboutPage';

  @override
  State<AboutPageWidget> createState() => _AboutPageWidgetState();
}

class _AboutPageWidgetState extends State<AboutPageWidget> {
  late AboutPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutPageModel());
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
        backgroundColor: Color(0xFF0A0A0A),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 64.0,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 8.0),
                child: Container(
                  child: Stack(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          fillColor: Colors.transparent,
                          icon: Icon(
                            Icons.chevron_left,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          '5g6h61yd' /* About */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              font: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .fontStyle,
                              lineHeight: 1.4,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Container(
                                      width: 90.0,
                                      height: 90.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Image.asset(
                                        'assets/images/picture.png',
                                        fit: BoxFit.cover,
                                        alignment: Alignment(0.0, 0.0),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'wy1ea1py' /* My Movie Template */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 22.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'u52qdl6r' /* Version 1.0.0 */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF1E1E1E),
                                  borderRadius: BorderRadius.circular(12.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Container(
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'nfikharm' /* Enjoy high-quality streaming a... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFFE8E8E8),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                            lineHeight: 1.5,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '5bn7dibj' /* Features */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFF1E1E1E),
                                      borderRadius: BorderRadius.circular(12.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Container(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            wrapWithModel(
                                              model: _model.featureRowModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: FeatureRowWidget(
                                                icon: Icon(
                                                  Icons.high_quality_rounded,
                                                  color: Color(0xFFE8203A),
                                                  size: 20.0,
                                                ),
                                                label:
                                                    'Watch movies and series in HD',
                                              ),
                                            ),
                                            Divider(
                                              height: 16.0,
                                              thickness: 1.0,
                                              indent: 0.0,
                                              endIndent: 0.0,
                                              color: Color(0xFF2A2A2A),
                                            ),
                                            wrapWithModel(
                                              model: _model.featureRowModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: FeatureRowWidget(
                                                icon: Icon(
                                                  Icons
                                                      .local_fire_department_rounded,
                                                  color: Color(0xFFE8203A),
                                                  size: 20.0,
                                                ),
                                                label:
                                                    'Discover trending and new releases',
                                              ),
                                            ),
                                            Divider(
                                              height: 16.0,
                                              thickness: 1.0,
                                              indent: 0.0,
                                              endIndent: 0.0,
                                              color: Color(0xFF2A2A2A),
                                            ),
                                            wrapWithModel(
                                              model: _model.featureRowModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: FeatureRowWidget(
                                                icon: Icon(
                                                  Icons.translate_rounded,
                                                  color: Color(0xFFE8203A),
                                                  size: 20.0,
                                                ),
                                                label:
                                                    'Multiple languages supported',
                                              ),
                                            ),
                                            Divider(
                                              height: 16.0,
                                              thickness: 1.0,
                                              indent: 0.0,
                                              endIndent: 0.0,
                                              color: Color(0xFF2A2A2A),
                                            ),
                                            wrapWithModel(
                                              model: _model.featureRowModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: FeatureRowWidget(
                                                icon: Icon(
                                                  Icons.ads_click_rounded,
                                                  color: Color(0xFFE8203A),
                                                  size: 20.0,
                                                ),
                                                label:
                                                    'Smooth, ad-light experience',
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'hwja3g4w' /* Legal & Links */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                  wrapWithModel(
                                    model: _model.legalLinkModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: LegalLinkWidget(
                                      icon: Icon(
                                        Icons.description_rounded,
                                        color: Color(0xFFE8203A),
                                        size: 22.0,
                                      ),
                                      label: 'Terms of Service',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.legalLinkModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: LegalLinkWidget(
                                      icon: Icon(
                                        Icons.privacy_tip_rounded,
                                        color: Color(0xFFE8203A),
                                        size: 22.0,
                                      ),
                                      label: 'Privacy Policy',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.legalLinkModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: LegalLinkWidget(
                                      icon: Icon(
                                        Icons.star_rate_rounded,
                                        color: Color(0xFFE8203A),
                                        size: 22.0,
                                      ),
                                      label: 'Rate the App',
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'c6w8hjdw' /* Follow Us */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderRadius: 9999.0,
                                        buttonSize: 40.0,
                                        fillColor: Color(0xFF1E1E1E),
                                        icon: Icon(
                                          Icons.help,
                                          color: Color(0xFFE8203A),
                                          size: 24.0,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                      FlutterFlowIconButton(
                                        borderRadius: 9999.0,
                                        buttonSize: 40.0,
                                        fillColor: Color(0xFF1E1E1E),
                                        icon: Icon(
                                          Icons.help,
                                          color: Color(0xFFE8203A),
                                          size: 24.0,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                      FlutterFlowIconButton(
                                        borderRadius: 9999.0,
                                        buttonSize: 40.0,
                                        fillColor: Color(0xFF1E1E1E),
                                        icon: Icon(
                                          Icons.help,
                                          color: Color(0xFFE8203A),
                                          size: 24.0,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ].divide(SizedBox(width: 24.0)),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                              Container(
                                height: 20.0,
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'dnsa371v' /* © 2026 My Movie Template. All ... */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                              Container(
                                height: 40.0,
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ),
                    ],
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
