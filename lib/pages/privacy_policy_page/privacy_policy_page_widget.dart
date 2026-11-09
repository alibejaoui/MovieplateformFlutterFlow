import '/components/policy_section/policy_section_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'privacy_policy_page_model.dart';
export 'privacy_policy_page_model.dart';

/// Create a "Privacy & Policy" page for a movie streaming mobile app built in
/// FlutterFlow.
///
/// STYLE
/// - Dark theme: page background #0A0A0A, cards #1E1E1E (slightly lighter
/// than the background), card border radius 12, padding 16.
/// - Accent color: red #E8203A, used for icons and section highlights.
/// - Text: white for titles, light grey (#B0B0B0) for body text, line height
/// 1.5. Font: Poppins.
/// - Same look as the Settings page: rounded dark cards, clean spacing, 20px
/// page padding.
///
/// LAYOUT (top to bottom)
/// 1. App bar: back arrow on the left, centered title "Privacy & Policy", no
/// elevation.
/// 2. Header card: a red shield icon, the title "Your privacy matters", and
/// small grey text "Last updated: October 2026".
/// 3. Short intro paragraph explaining that this policy describes how the app
/// collects, uses and protects user information.
/// 4. Policy sections, each in its own dark card with a red numbered title
/// and a paragraph or short list below it:
///    1. Information We Collect (account details, viewing history, device
/// information)
///    2. How We Use Your Information (provide the service, personalize
/// recommendations, improve the app)
///    3. Sharing of Information (not sold to third parties; shared only with
/// service providers when needed)
///    4. Data Security (measures used to protect user data)
///    5. Your Rights and Choices (access, update or delete your data, manage
/// notifications)
///    6. Children's Privacy
///    7. Changes to This Policy
/// 5. "Contact Us" card: a short text, plus a tappable email row (red mail
/// icon, "support@yourapp.com") that opens the email app.
/// 6. Small grey text at the bottom, centered: "© 2026 Your App Name. All
/// rights reserved."
///
/// BEHAVIOR
/// - The page is opened from the "Privacy & Policy" row on the Settings page.
/// - The back arrow navigates back.
/// - The whole page scrolls inside a single scroll view, with no overflow
/// errors on small screens.
/// - Support right-to-left layout for Arabic, and use text that can be
/// translated (English, Arabic, French).
class PrivacyPolicyPageWidget extends StatefulWidget {
  const PrivacyPolicyPageWidget({super.key});

  static String routeName = 'PrivacyPolicyPage';
  static String routePath = '/privacyPolicyPage';

  @override
  State<PrivacyPolicyPageWidget> createState() =>
      _PrivacyPolicyPageWidgetState();
}

class _PrivacyPolicyPageWidgetState extends State<PrivacyPolicyPageWidget> {
  late PrivacyPolicyPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyPageModel());
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
              decoration: BoxDecoration(
                color: Color(0xFF0A0A0A),
                shape: BoxShape.rectangle,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 12.0),
                child: Container(
                  child: Stack(
                    alignment: AlignmentDirectional(-1.0, -1.0),
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          fillColor: Colors.transparent,
                          icon: Icon(
                            Icons.chevron_left,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 20.0,
                          ),
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '0qnr41uz' /* Privacy & Policy */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleLarge
                              .override(
                                font: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .fontStyle,
                                lineHeight: 1.4,
                              ),
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 40.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF1E1E1E),
                                  borderRadius: BorderRadius.circular(12.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: Color(0x33E8203A),
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 56.0,
                                          height: 56.0,
                                          decoration: BoxDecoration(
                                            color: Color(0x26E8203A),
                                            borderRadius:
                                                BorderRadius.circular(9999.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Icon(
                                            Icons.verified_user_rounded,
                                            color: Color(0xFFE8203A),
                                            size: 32.0,
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '1df4ue02' /* Your privacy matters */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleLarge
                                                  .override(
                                                    font: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .fontStyle,
                                                    ),
                                                    color: Color(0xFF1D1D1F),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontStyle,
                                                    lineHeight: 1.4,
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'hxr5c9fs' /* Last updated: October 2026 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelSmall
                                                  .override(
                                                    font: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmall
                                                              .fontStyle,
                                                    ),
                                                    color: Color(0xFFB0B0B0),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .fontStyle,
                                                    lineHeight: 1.4,
                                                  ),
                                            ),
                                          ].divide(SizedBox(height: 4.0)),
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'd9gfhh2a' /* This Privacy Policy describes ... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFFB0B0B0),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                      lineHeight: 1.5,
                                    ),
                              ),
                              wrapWithModel(
                                model: _model.policySectionModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: PolicySectionWidget(
                                  index: '1',
                                  title: 'Information We Collect',
                                  description:
                                      'We collect account details (email, name), viewing history to improve your experience, and device information for security and compatibility.',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.policySectionModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: PolicySectionWidget(
                                  index: '2',
                                  title: 'How We Use Your Information',
                                  description:
                                      'Your data helps us provide the service, personalize your movie recommendations, process payments, and improve app performance.',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.policySectionModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: PolicySectionWidget(
                                  index: '3',
                                  title: 'Sharing of Information',
                                  description:
                                      'We do not sell your personal data to third parties. Information is only shared with trusted service providers required to operate the app.',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.policySectionModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: PolicySectionWidget(
                                  index: '4',
                                  title: 'Data Security',
                                  description:
                                      'We implement industry-standard encryption and security measures to protect your personal information from unauthorized access.',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.policySectionModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: PolicySectionWidget(
                                  index: '5',
                                  title: 'Your Rights and Choices',
                                  description:
                                      'You can access, update, or delete your data at any time through settings. You also have the right to manage notification preferences.',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.policySectionModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: PolicySectionWidget(
                                  index: '6',
                                  title: 'Children\'s Privacy',
                                  description:
                                      'Our service is not intended for children under 13. We do not knowingly collect personal data from minors without parental consent.',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.policySectionModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: PolicySectionWidget(
                                  index: '7',
                                  title: 'Changes to This Policy',
                                  description:
                                      'We may update this policy periodically. We will notify you of any significant changes via email or in-app announcements.',
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF1E1E1E),
                                  borderRadius: BorderRadius.circular(12.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '6tv5iy3s' /* Have questions about your data... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF1D1D1F),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFF0A0A0A),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color: Color(0x4DE8203A),
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Container(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.mail_rounded,
                                                    color: Color(0xFFE8203A),
                                                    size: 20.0,
                                                  ),
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4lmc5tbi' /* support@mymovietemplate.com */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .poppins(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFFE8203A),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                          lineHeight: 1.4,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(width: 16.0)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'k9ibwam9' /* © 2026 My Movie Template. All ... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .fontStyle,
                                        ),
                                        color: Color(0x99B0B0B0),
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
