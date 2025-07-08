import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationALCANCE15diasRecord extends FirestoreRecord {
  NotificationALCANCE15diasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "nomedafesta" field.
  String? _nomedafesta;
  String get nomedafesta => _nomedafesta ?? '';
  bool hasNomedafesta() => _nomedafesta != null;

  // "ingressoREF" field.
  DocumentReference? _ingressoREF;
  DocumentReference? get ingressoREF => _ingressoREF;
  bool hasIngressoREF() => _ingressoREF != null;

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  void _initializeFields() {
    _time = snapshotData['time'] as DateTime?;
    _nomedafesta = snapshotData['nomedafesta'] as String?;
    _ingressoREF = snapshotData['ingressoREF'] as DocumentReference?;
    _users = snapshotData['users'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notification-ALCANCE_15dias');

  static Stream<NotificationALCANCE15diasRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => NotificationALCANCE15diasRecord.fromSnapshot(s));

  static Future<NotificationALCANCE15diasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => NotificationALCANCE15diasRecord.fromSnapshot(s));

  static NotificationALCANCE15diasRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      NotificationALCANCE15diasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationALCANCE15diasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationALCANCE15diasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationALCANCE15diasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationALCANCE15diasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationALCANCE15diasRecordData({
  DateTime? time,
  String? nomedafesta,
  DocumentReference? ingressoREF,
  DocumentReference? users,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time': time,
      'nomedafesta': nomedafesta,
      'ingressoREF': ingressoREF,
      'users': users,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationALCANCE15diasRecordDocumentEquality
    implements Equality<NotificationALCANCE15diasRecord> {
  const NotificationALCANCE15diasRecordDocumentEquality();

  @override
  bool equals(NotificationALCANCE15diasRecord? e1,
      NotificationALCANCE15diasRecord? e2) {
    return e1?.time == e2?.time &&
        e1?.nomedafesta == e2?.nomedafesta &&
        e1?.ingressoREF == e2?.ingressoREF &&
        e1?.users == e2?.users;
  }

  @override
  int hash(NotificationALCANCE15diasRecord? e) => const ListEquality()
      .hash([e?.time, e?.nomedafesta, e?.ingressoREF, e?.users]);

  @override
  bool isValidKey(Object? o) => o is NotificationALCANCE15diasRecord;
}
