import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationCompraIngressoVendedorRecord extends FirestoreRecord {
  NotificationCompraIngressoVendedorRecord._(
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

  // "nomedocliente" field.
  String? _nomedocliente;
  String get nomedocliente => _nomedocliente ?? '';
  bool hasNomedocliente() => _nomedocliente != null;

  // "emailcliente" field.
  String? _emailcliente;
  String get emailcliente => _emailcliente ?? '';
  bool hasEmailcliente() => _emailcliente != null;

  // "telefonecliente" field.
  String? _telefonecliente;
  String get telefonecliente => _telefonecliente ?? '';
  bool hasTelefonecliente() => _telefonecliente != null;

  // "envieioingresso" field.
  bool? _envieioingresso;
  bool get envieioingresso => _envieioingresso ?? false;
  bool hasEnvieioingresso() => _envieioingresso != null;

  // "valordoingresso" field.
  int? _valordoingresso;
  int get valordoingresso => _valordoingresso ?? 0;
  bool hasValordoingresso() => _valordoingresso != null;

  // "plataforma_oficial" field.
  String? _plataformaOficial;
  String get plataformaOficial => _plataformaOficial ?? '';
  bool hasPlataformaOficial() => _plataformaOficial != null;

  // "comprovante" field.
  String? _comprovante;
  String get comprovante => _comprovante ?? '';
  bool hasComprovante() => _comprovante != null;

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  // "fav" field.
  DocumentReference? _fav;
  DocumentReference? get fav => _fav;
  bool hasFav() => _fav != null;

  // "ingresso" field.
  DocumentReference? _ingresso;
  DocumentReference? get ingresso => _ingresso;
  bool hasIngresso() => _ingresso != null;

  // "not_comprovante" field.
  DocumentReference? _notComprovante;
  DocumentReference? get notComprovante => _notComprovante;
  bool hasNotComprovante() => _notComprovante != null;

  void _initializeFields() {
    _time = snapshotData['time'] as DateTime?;
    _nomedafesta = snapshotData['nomedafesta'] as String?;
    _nomedocliente = snapshotData['nomedocliente'] as String?;
    _emailcliente = snapshotData['emailcliente'] as String?;
    _telefonecliente = snapshotData['telefonecliente'] as String?;
    _envieioingresso = snapshotData['envieioingresso'] as bool?;
    _valordoingresso = castToType<int>(snapshotData['valordoingresso']);
    _plataformaOficial = snapshotData['plataforma_oficial'] as String?;
    _comprovante = snapshotData['comprovante'] as String?;
    _users = snapshotData['users'] as DocumentReference?;
    _fav = snapshotData['fav'] as DocumentReference?;
    _ingresso = snapshotData['ingresso'] as DocumentReference?;
    _notComprovante = snapshotData['not_comprovante'] as DocumentReference?;
  }

  static CollectionReference get collection => FirebaseFirestore.instance
      .collection('notification-Compra_Ingresso-Vendedor');

  static Stream<NotificationCompraIngressoVendedorRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => NotificationCompraIngressoVendedorRecord.fromSnapshot(s));

  static Future<NotificationCompraIngressoVendedorRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => NotificationCompraIngressoVendedorRecord.fromSnapshot(s));

  static NotificationCompraIngressoVendedorRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      NotificationCompraIngressoVendedorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationCompraIngressoVendedorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationCompraIngressoVendedorRecord._(
          reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationCompraIngressoVendedorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationCompraIngressoVendedorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationCompraIngressoVendedorRecordData({
  DateTime? time,
  String? nomedafesta,
  String? nomedocliente,
  String? emailcliente,
  String? telefonecliente,
  bool? envieioingresso,
  int? valordoingresso,
  String? plataformaOficial,
  String? comprovante,
  DocumentReference? users,
  DocumentReference? fav,
  DocumentReference? ingresso,
  DocumentReference? notComprovante,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time': time,
      'nomedafesta': nomedafesta,
      'nomedocliente': nomedocliente,
      'emailcliente': emailcliente,
      'telefonecliente': telefonecliente,
      'envieioingresso': envieioingresso,
      'valordoingresso': valordoingresso,
      'plataforma_oficial': plataformaOficial,
      'comprovante': comprovante,
      'users': users,
      'fav': fav,
      'ingresso': ingresso,
      'not_comprovante': notComprovante,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationCompraIngressoVendedorRecordDocumentEquality
    implements Equality<NotificationCompraIngressoVendedorRecord> {
  const NotificationCompraIngressoVendedorRecordDocumentEquality();

  @override
  bool equals(NotificationCompraIngressoVendedorRecord? e1,
      NotificationCompraIngressoVendedorRecord? e2) {
    return e1?.time == e2?.time &&
        e1?.nomedafesta == e2?.nomedafesta &&
        e1?.nomedocliente == e2?.nomedocliente &&
        e1?.emailcliente == e2?.emailcliente &&
        e1?.telefonecliente == e2?.telefonecliente &&
        e1?.envieioingresso == e2?.envieioingresso &&
        e1?.valordoingresso == e2?.valordoingresso &&
        e1?.plataformaOficial == e2?.plataformaOficial &&
        e1?.comprovante == e2?.comprovante &&
        e1?.users == e2?.users &&
        e1?.fav == e2?.fav &&
        e1?.ingresso == e2?.ingresso &&
        e1?.notComprovante == e2?.notComprovante;
  }

  @override
  int hash(NotificationCompraIngressoVendedorRecord? e) =>
      const ListEquality().hash([
        e?.time,
        e?.nomedafesta,
        e?.nomedocliente,
        e?.emailcliente,
        e?.telefonecliente,
        e?.envieioingresso,
        e?.valordoingresso,
        e?.plataformaOficial,
        e?.comprovante,
        e?.users,
        e?.fav,
        e?.ingresso,
        e?.notComprovante
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationCompraIngressoVendedorRecord;
}
