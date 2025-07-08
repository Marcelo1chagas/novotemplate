import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationFAVINGRESSORecord extends FirestoreRecord {
  NotificationFAVINGRESSORecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "time_cretaed" field.
  DateTime? _timeCretaed;
  DateTime? get timeCretaed => _timeCretaed;
  bool hasTimeCretaed() => _timeCretaed != null;

  // "nomedafesta" field.
  String? _nomedafesta;
  String get nomedafesta => _nomedafesta ?? '';
  bool hasNomedafesta() => _nomedafesta != null;

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  // "fav" field.
  DocumentReference? _fav;
  DocumentReference? get fav => _fav;
  bool hasFav() => _fav != null;

  void _initializeFields() {
    _timeCretaed = snapshotData['time_cretaed'] as DateTime?;
    _nomedafesta = snapshotData['nomedafesta'] as String?;
    _users = snapshotData['users'] as DocumentReference?;
    _fav = snapshotData['fav'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notification-FAV-INGRESSO');

  static Stream<NotificationFAVINGRESSORecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationFAVINGRESSORecord.fromSnapshot(s));

  static Future<NotificationFAVINGRESSORecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => NotificationFAVINGRESSORecord.fromSnapshot(s));

  static NotificationFAVINGRESSORecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      NotificationFAVINGRESSORecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationFAVINGRESSORecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationFAVINGRESSORecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationFAVINGRESSORecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationFAVINGRESSORecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationFAVINGRESSORecordData({
  DateTime? timeCretaed,
  String? nomedafesta,
  DocumentReference? users,
  DocumentReference? fav,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time_cretaed': timeCretaed,
      'nomedafesta': nomedafesta,
      'users': users,
      'fav': fav,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationFAVINGRESSORecordDocumentEquality
    implements Equality<NotificationFAVINGRESSORecord> {
  const NotificationFAVINGRESSORecordDocumentEquality();

  @override
  bool equals(
      NotificationFAVINGRESSORecord? e1, NotificationFAVINGRESSORecord? e2) {
    return e1?.timeCretaed == e2?.timeCretaed &&
        e1?.nomedafesta == e2?.nomedafesta &&
        e1?.users == e2?.users &&
        e1?.fav == e2?.fav;
  }

  @override
  int hash(NotificationFAVINGRESSORecord? e) => const ListEquality()
      .hash([e?.timeCretaed, e?.nomedafesta, e?.users, e?.fav]);

  @override
  bool isValidKey(Object? o) => o is NotificationFAVINGRESSORecord;
}
