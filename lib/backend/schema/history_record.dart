import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistoryRecord extends FirestoreRecord {
  HistoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "movieId" field.
  int? _movieId;
  int get movieId => _movieId ?? 0;
  bool hasMovieId() => _movieId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "poster" field.
  String? _poster;
  String get poster => _poster ?? '';
  bool hasPoster() => _poster != null;

  // "isMovie" field.
  bool? _isMovie;
  bool get isMovie => _isMovie ?? false;
  bool hasIsMovie() => _isMovie != null;

  // "viewedAt" field.
  DateTime? _viewedAt;
  DateTime? get viewedAt => _viewedAt;
  bool hasViewedAt() => _viewedAt != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as String?;
    _movieId = castToType<int>(snapshotData['movieId']);
    _title = snapshotData['title'] as String?;
    _poster = snapshotData['poster'] as String?;
    _isMovie = snapshotData['isMovie'] as bool?;
    _viewedAt = snapshotData['viewedAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('History');

  static Stream<HistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistoryRecord.fromSnapshot(s));

  static Future<HistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HistoryRecord.fromSnapshot(s));

  static HistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistoryRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createHistoryRecordData({
  String? userId,
  int? movieId,
  String? title,
  String? poster,
  bool? isMovie,
  DateTime? viewedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'movieId': movieId,
      'title': title,
      'poster': poster,
      'isMovie': isMovie,
      'viewedAt': viewedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistoryRecordDocumentEquality implements Equality<HistoryRecord> {
  const HistoryRecordDocumentEquality();

  @override
  bool equals(HistoryRecord? e1, HistoryRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.movieId == e2?.movieId &&
        e1?.title == e2?.title &&
        e1?.poster == e2?.poster &&
        e1?.isMovie == e2?.isMovie &&
        e1?.viewedAt == e2?.viewedAt;
  }

  @override
  int hash(HistoryRecord? e) => const ListEquality().hash(
      [e?.userId, e?.movieId, e?.title, e?.poster, e?.isMovie, e?.viewedAt]);

  @override
  bool isValidKey(Object? o) => o is HistoryRecord;
}
