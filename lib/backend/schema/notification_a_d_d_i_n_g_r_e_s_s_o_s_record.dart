import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationADDINGRESSOSRecord extends FirestoreRecord {
  NotificationADDINGRESSOSRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "nomedafesta" field.
  String? _nomedafesta;
  String get nomedafesta => _nomedafesta ?? '';
  bool hasNomedafesta() => _nomedafesta != null;

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  // "ingresso" field.
  DocumentReference? _ingresso;
  DocumentReference? get ingresso => _ingresso;
  bool hasIngresso() => _ingresso != null;

  void _initializeFields() {
    _timeCreated = snapshotData['time_created'] as DateTime?;
    _nomedafesta = snapshotData['nomedafesta'] as String?;
    _users = snapshotData['users'] as DocumentReference?;
    _ingresso = snapshotData['ingresso'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notification-ADD-INGRESSOS');

  static Stream<NotificationADDINGRESSOSRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => NotificationADDINGRESSOSRecord.fromSnapshot(s));

  static Future<NotificationADDINGRESSOSRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => NotificationADDINGRESSOSRecord.fromSnapshot(s));

  static NotificationADDINGRESSOSRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      NotificationADDINGRESSOSRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationADDINGRESSOSRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationADDINGRESSOSRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationADDINGRESSOSRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationADDINGRESSOSRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationADDINGRESSOSRecordData({
  DateTime? timeCreated,
  String? nomedafesta,
  DocumentReference? users,
  DocumentReference? ingresso,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time_created': timeCreated,
      'nomedafesta': nomedafesta,
      'users': users,
      'ingresso': ingresso,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationADDINGRESSOSRecordDocumentEquality
    implements Equality<NotificationADDINGRESSOSRecord> {
  const NotificationADDINGRESSOSRecordDocumentEquality();

  @override
  bool equals(
      NotificationADDINGRESSOSRecord? e1, NotificationADDINGRESSOSRecord? e2) {
    return e1?.timeCreated == e2?.timeCreated &&
        e1?.nomedafesta == e2?.nomedafesta &&
        e1?.users == e2?.users &&
        e1?.ingresso == e2?.ingresso;
  }

  @override
  int hash(NotificationADDINGRESSOSRecord? e) => const ListEquality()
      .hash([e?.timeCreated, e?.nomedafesta, e?.users, e?.ingresso]);

  @override
  bool isValidKey(Object? o) => o is NotificationADDINGRESSOSRecord;
}
