import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationEnvioDoIngressoRecord extends FirestoreRecord {
  NotificationEnvioDoIngressoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "comprovante" field.
  String? _comprovante;
  String get comprovante => _comprovante ?? '';
  bool hasComprovante() => _comprovante != null;

  // "plataformaoficial" field.
  String? _plataformaoficial;
  String get plataformaoficial => _plataformaoficial ?? '';
  bool hasPlataformaoficial() => _plataformaoficial != null;

  // "nomedeusuario" field.
  String? _nomedeusuario;
  String get nomedeusuario => _nomedeusuario ?? '';
  bool hasNomedeusuario() => _nomedeusuario != null;

  // "nomedafesta" field.
  String? _nomedafesta;
  String get nomedafesta => _nomedafesta ?? '';
  bool hasNomedafesta() => _nomedafesta != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "recebimeuingresso" field.
  bool? _recebimeuingresso;
  bool get recebimeuingresso => _recebimeuingresso ?? false;
  bool hasRecebimeuingresso() => _recebimeuingresso != null;

  // "nome_que_recebeu_o_ingresso" field.
  String? _nomeQueRecebeuOIngresso;
  String get nomeQueRecebeuOIngresso => _nomeQueRecebeuOIngresso ?? '';
  bool hasNomeQueRecebeuOIngresso() => _nomeQueRecebeuOIngresso != null;

  // "email_que_recebeu_o_ingresso" field.
  String? _emailQueRecebeuOIngresso;
  String get emailQueRecebeuOIngresso => _emailQueRecebeuOIngresso ?? '';
  bool hasEmailQueRecebeuOIngresso() => _emailQueRecebeuOIngresso != null;

  // "emailvendedor" field.
  String? _emailvendedor;
  String get emailvendedor => _emailvendedor ?? '';
  bool hasEmailvendedor() => _emailvendedor != null;

  // "nomevendedor" field.
  String? _nomevendedor;
  String get nomevendedor => _nomevendedor ?? '';
  bool hasNomevendedor() => _nomevendedor != null;

  // "usersavaliacao" field.
  DocumentReference? _usersavaliacao;
  DocumentReference? get usersavaliacao => _usersavaliacao;
  bool hasUsersavaliacao() => _usersavaliacao != null;

  // "usersENVIO_NOTcomprovante" field.
  DocumentReference? _usersENVIONOTcomprovante;
  DocumentReference? get usersENVIONOTcomprovante => _usersENVIONOTcomprovante;
  bool hasUsersENVIONOTcomprovante() => _usersENVIONOTcomprovante != null;

  // "envioingressocomprovante" field.
  DocumentReference? _envioingressocomprovante;
  DocumentReference? get envioingressocomprovante => _envioingressocomprovante;
  bool hasEnvioingressocomprovante() => _envioingressocomprovante != null;

  // "compra_ingresso" field.
  DocumentReference? _compraIngresso;
  DocumentReference? get compraIngresso => _compraIngresso;
  bool hasCompraIngresso() => _compraIngresso != null;

  // "usersvendedor" field.
  DocumentReference? _usersvendedor;
  DocumentReference? get usersvendedor => _usersvendedor;
  bool hasUsersvendedor() => _usersvendedor != null;

  void _initializeFields() {
    _comprovante = snapshotData['comprovante'] as String?;
    _plataformaoficial = snapshotData['plataformaoficial'] as String?;
    _nomedeusuario = snapshotData['nomedeusuario'] as String?;
    _nomedafesta = snapshotData['nomedafesta'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _recebimeuingresso = snapshotData['recebimeuingresso'] as bool?;
    _nomeQueRecebeuOIngresso =
        snapshotData['nome_que_recebeu_o_ingresso'] as String?;
    _emailQueRecebeuOIngresso =
        snapshotData['email_que_recebeu_o_ingresso'] as String?;
    _emailvendedor = snapshotData['emailvendedor'] as String?;
    _nomevendedor = snapshotData['nomevendedor'] as String?;
    _usersavaliacao = snapshotData['usersavaliacao'] as DocumentReference?;
    _usersENVIONOTcomprovante =
        snapshotData['usersENVIO_NOTcomprovante'] as DocumentReference?;
    _envioingressocomprovante =
        snapshotData['envioingressocomprovante'] as DocumentReference?;
    _compraIngresso = snapshotData['compra_ingresso'] as DocumentReference?;
    _usersvendedor = snapshotData['usersvendedor'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Notification-Envio_do_Ingresso');

  static Stream<NotificationEnvioDoIngressoRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => NotificationEnvioDoIngressoRecord.fromSnapshot(s));

  static Future<NotificationEnvioDoIngressoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => NotificationEnvioDoIngressoRecord.fromSnapshot(s));

  static NotificationEnvioDoIngressoRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      NotificationEnvioDoIngressoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationEnvioDoIngressoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationEnvioDoIngressoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationEnvioDoIngressoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationEnvioDoIngressoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationEnvioDoIngressoRecordData({
  String? comprovante,
  String? plataformaoficial,
  String? nomedeusuario,
  String? nomedafesta,
  DateTime? time,
  bool? recebimeuingresso,
  String? nomeQueRecebeuOIngresso,
  String? emailQueRecebeuOIngresso,
  String? emailvendedor,
  String? nomevendedor,
  DocumentReference? usersavaliacao,
  DocumentReference? usersENVIONOTcomprovante,
  DocumentReference? envioingressocomprovante,
  DocumentReference? compraIngresso,
  DocumentReference? usersvendedor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'comprovante': comprovante,
      'plataformaoficial': plataformaoficial,
      'nomedeusuario': nomedeusuario,
      'nomedafesta': nomedafesta,
      'time': time,
      'recebimeuingresso': recebimeuingresso,
      'nome_que_recebeu_o_ingresso': nomeQueRecebeuOIngresso,
      'email_que_recebeu_o_ingresso': emailQueRecebeuOIngresso,
      'emailvendedor': emailvendedor,
      'nomevendedor': nomevendedor,
      'usersavaliacao': usersavaliacao,
      'usersENVIO_NOTcomprovante': usersENVIONOTcomprovante,
      'envioingressocomprovante': envioingressocomprovante,
      'compra_ingresso': compraIngresso,
      'usersvendedor': usersvendedor,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationEnvioDoIngressoRecordDocumentEquality
    implements Equality<NotificationEnvioDoIngressoRecord> {
  const NotificationEnvioDoIngressoRecordDocumentEquality();

  @override
  bool equals(NotificationEnvioDoIngressoRecord? e1,
      NotificationEnvioDoIngressoRecord? e2) {
    return e1?.comprovante == e2?.comprovante &&
        e1?.plataformaoficial == e2?.plataformaoficial &&
        e1?.nomedeusuario == e2?.nomedeusuario &&
        e1?.nomedafesta == e2?.nomedafesta &&
        e1?.time == e2?.time &&
        e1?.recebimeuingresso == e2?.recebimeuingresso &&
        e1?.nomeQueRecebeuOIngresso == e2?.nomeQueRecebeuOIngresso &&
        e1?.emailQueRecebeuOIngresso == e2?.emailQueRecebeuOIngresso &&
        e1?.emailvendedor == e2?.emailvendedor &&
        e1?.nomevendedor == e2?.nomevendedor &&
        e1?.usersavaliacao == e2?.usersavaliacao &&
        e1?.usersENVIONOTcomprovante == e2?.usersENVIONOTcomprovante &&
        e1?.envioingressocomprovante == e2?.envioingressocomprovante &&
        e1?.compraIngresso == e2?.compraIngresso &&
        e1?.usersvendedor == e2?.usersvendedor;
  }

  @override
  int hash(NotificationEnvioDoIngressoRecord? e) => const ListEquality().hash([
        e?.comprovante,
        e?.plataformaoficial,
        e?.nomedeusuario,
        e?.nomedafesta,
        e?.time,
        e?.recebimeuingresso,
        e?.nomeQueRecebeuOIngresso,
        e?.emailQueRecebeuOIngresso,
        e?.emailvendedor,
        e?.nomevendedor,
        e?.usersavaliacao,
        e?.usersENVIONOTcomprovante,
        e?.envioingressocomprovante,
        e?.compraIngresso,
        e?.usersvendedor
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationEnvioDoIngressoRecord;
}
