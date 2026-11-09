import '/backend/api_requests/api_calls.dart';
import '/components/movie_card/movie_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'see_all_t_v_model.dart';
export 'see_all_t_v_model.dart';

class SeeAllTVWidget extends StatefulWidget {
  const SeeAllTVWidget({
    super.key,
    required this.title,
    required this.endpoint,
  });

  final String? title;
  final String? endpoint;

  static String routeName = 'SeeAllTV';
  static String routePath = '/seeAllTV';

  @override
  State<SeeAllTVWidget> createState() => _SeeAllTVWidgetState();
}

class _SeeAllTVWidgetState extends State<SeeAllTVWidget> {
  late SeeAllTVModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SeeAllTVModel());
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
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              FFIcons.knameLeftArrow2,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 30.0,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'ix79ltvn' /* See All */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.poppins(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).secondaryText,
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                  child: FutureBuilder<ApiCallResponse>(
                    future: TvShowsOnAirCall.call(
                      apiKey: '426bdb83741df90d77712daeb0006e3b',
                      page: 1,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      final gridViewTvShowsOnAirResponse = snapshot.data!;

                      return Builder(
                        builder: (context) {
                          final movieItem = getJsonField(
                            gridViewTvShowsOnAirResponse.jsonBody,
                            r'''$.results''',
                          ).toList();

                          return GridView.builder(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12.0,
                              mainAxisSpacing: 16.0,
                              childAspectRatio: 0.55,
                            ),
                            scrollDirection: Axis.vertical,
                            itemCount: movieItem.length,
                            itemBuilder: (context, movieItemIndex) {
                              final movieItemItem = movieItem[movieItemIndex];
                              return MovieCardWidget(
                                key: Key(
                                    'Key4lc_${movieItemIndex}_of_${movieItem.length}'),
                                imagePath: getJsonField(
                                  movieItemItem,
                                  r'''$.poster_path''',
                                ).toString(),
                                title: getJsonField(
                                  movieItemItem,
                                  r'''$.name''',
                                ).toString(),
                                duration: getJsonField(
                                  movieItemItem,
                                  r'''$.first_air_date''',
                                ).toString(),
                                rating: getJsonField(
                                  movieItemItem,
                                  r'''$.vote_average''',
                                ).toString(),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
