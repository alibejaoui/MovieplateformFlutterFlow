import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/movie_card/movie_card_widget.dart';
import '/components/season_card/season_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/episodes/episodes_widget.dart';
import '/pages/tv_shows_details/tv_shows_details_widget.dart';
import 'dart:async';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart' hide Type;
import 'tv_shows_details_widget.dart' show TvShowsDetailsWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TvShowsDetailsModel extends FlutterFlowModel<TvShowsDetailsWidget> {
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
