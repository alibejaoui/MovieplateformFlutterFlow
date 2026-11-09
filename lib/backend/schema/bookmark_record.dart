import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookmarkRecord extends FirestoreRecord {
  BookmarkRecord._(
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

  // "isMovie" field.
  bool? _isMovie;
  bool get isMovie => _isMovie ?? false;
  bool hasIsMovie() => _isMovie != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "voteAverage" field.
  double? _voteAverage;
  double get voteAverage => _voteAverage ?? 0.0;
  bool hasVoteAverage() => _voteAverage != null;

  // "poster" field.
  String? _poster;
  String get poster => _poster ?? '';
  bool hasPoster() => _poster != null;

  // "lastEpisode" field.
  String? _lastEpisode;
  String get lastEpisode => _lastEpisode ?? '';
  bool hasLastEpisode() => _lastEpisode != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as String?;
    _movieId = castToType<int>(snapshotData['movieId']);
    _isMovie = snapshotData['isMovie'] as bool?;
    _title = snapshotData['title'] as String?;
    _voteAverage = castToType<double>(snapshotData['voteAverage']);
    _poster = snapshotData['poster'] as String?;
    _lastEpisode = snapshotData['lastEpisode'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookmark');

  static Stream<BookmarkRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookmarkRecord.fromSnapshot(s));

  static Future<BookmarkRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookmarkRecord.fromSnapshot(s));

  static BookmarkRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookmarkRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookmarkRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookmarkRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookmarkRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookmarkRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createBookmarkRecordData({
  String? userId,
  int? movieId,
  bool? isMovie,
  String? title,
  double? voteAverage,
  String? poster,
  String? lastEpisode,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'movieId': movieId,
      'isMovie': isMovie,
      'title': title,
      'voteAverage': voteAverage,
      'poster': poster,
      'lastEpisode': lastEpisode,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookmarkRecordDocumentEquality implements Equality<BookmarkRecord> {
  const BookmarkRecordDocumentEquality();

  @override
  bool equals(BookmarkRecord? e1, BookmarkRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.movieId == e2?.movieId &&
        e1?.isMovie == e2?.isMovie &&
        e1?.title == e2?.title &&
        e1?.voteAverage == e2?.voteAverage &&
        e1?.poster == e2?.poster &&
        e1?.lastEpisode == e2?.lastEpisode &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(BookmarkRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.movieId,
        e?.isMovie,
        e?.title,
        e?.voteAverage,
        e?.poster,
        e?.lastEpisode,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is BookmarkRecord;
}
