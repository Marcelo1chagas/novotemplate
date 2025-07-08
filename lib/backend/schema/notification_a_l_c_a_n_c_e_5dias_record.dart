import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationALCANCE5diasRecord extends FirestoreRecord {
  NotificationALCANCE5diasRecord._(
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

  // "ingressoRef" field.
  DocumentReference? _ingressoRef;
  DocumentReference? get ingressoRef => _ingressoRef;
  bool hasIngressoRef() => _ingressoRef != null;

  void _initializeFields() {
    _time = snapshotData['time'] as DateTime?;
    _nomedafesta = snapshotData['nomedafesta'] as String?;
    _users = snapshotData['users'] as DocumentReference?;
    _ingressoRef = snapshotData['ingressoRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notification_ALCANCE_5dias');

  static Stream<NotificationALCANCE5diasRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => NotificationALCANCE5diasRecord.fromSnapshot(s));

  static Future<NotificationALCANCE5diasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => NotificationALCANCE5diasRecord.fromSnapshot(s));

  static NotificationALCANCE5diasRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      NotificationALCANCE5diasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationALCANCE5diasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationALCANCE5diasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationALCANCE5diasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationALCANCE5diasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationALCANCE5diasRecordData({
  DateTime? time,
  String? nomedafesta,
  DocumentReference? users,
  DocumentReference? ingressoRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time': time,
      'nomedafesta': nomedafesta,
      'users': users,
      'ingressoRef': ingressoRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationALCANCE5diasRecordDocumentEquality
    implements Equality<NotificationALCANCE5diasRecord> {
  const NotificationALCANCE5diasRecordDocumentEquality();

  @override
  bool equals(
      NotificationALCANCE5diasRecord? e1, NotificationALCANCE5diasRecord? e2) {
    return e1?.time == e2?.time &&
        e1?.nomedafesta == e2?.nomedafesta &&
        e1?.users == e2?.users &&
        e1?.ingressoRef == e2?.ingressoRef;
  }

  @override
  int hash(NotificationALCANCE5diasRecord? e) => const ListEquality()
      .hash([e?.time, e?.nomedafesta, e?.users, e?.ingressoRef]);

  @override
  bool isValidKey(Object? o) => o is NotificationALCANCE5diasRecord;
}
