import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationALCANCE1diaRecord extends FirestoreRecord {
  NotificationALCANCE1diaRecord._(
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

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  // "ingressoREF" field.
  DocumentReference? _ingressoREF;
  DocumentReference? get ingressoREF => _ingressoREF;
  bool hasIngressoREF() => _ingressoREF != null;

  void _initializeFields() {
    _time = snapshotData['time'] as DateTime?;
    _nomedafesta = snapshotData['nomedafesta'] as String?;
    _users = snapshotData['users'] as DocumentReference?;
    _ingressoREF = snapshotData['ingressoREF'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notification-ALCANCE_1dia');

  static Stream<NotificationALCANCE1diaRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationALCANCE1diaRecord.fromSnapshot(s));

  static Future<NotificationALCANCE1diaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => NotificationALCANCE1diaRecord.fromSnapshot(s));

  static NotificationALCANCE1diaRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      NotificationALCANCE1diaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationALCANCE1diaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationALCANCE1diaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationALCANCE1diaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationALCANCE1diaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationALCANCE1diaRecordData({
  DateTime? time,
  String? nomedafesta,
  DocumentReference? users,
  DocumentReference? ingressoREF,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time': time,
      'nomedafesta': nomedafesta,
      'users': users,
      'ingressoREF': ingressoREF,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationALCANCE1diaRecordDocumentEquality
    implements Equality<NotificationALCANCE1diaRecord> {
  const NotificationALCANCE1diaRecordDocumentEquality();

  @override
  bool equals(
      NotificationALCANCE1diaRecord? e1, NotificationALCANCE1diaRecord? e2) {
    return e1?.time == e2?.time &&
        e1?.nomedafesta == e2?.nomedafesta &&
        e1?.users == e2?.users &&
        e1?.ingressoREF == e2?.ingressoREF;
  }

  @override
  int hash(NotificationALCANCE1diaRecord? e) => const ListEquality()
      .hash([e?.time, e?.nomedafesta, e?.users, e?.ingressoREF]);

  @override
  bool isValidKey(Object? o) => o is NotificationALCANCE1diaRecord;
}
