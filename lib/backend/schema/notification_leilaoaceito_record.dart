import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationLeilaoaceitoRecord extends FirestoreRecord {
  NotificationLeilaoaceitoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "valorproposto" field.
  int? _valorproposto;
  int get valorproposto => _valorproposto ?? 0;
  bool hasValorproposto() => _valorproposto != null;

  // "nomedafesta" field.
  String? _nomedafesta;
  String get nomedafesta => _nomedafesta ?? '';
  bool hasNomedafesta() => _nomedafesta != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "datadoshow" field.
  String? _datadoshow;
  String get datadoshow => _datadoshow ?? '';
  bool hasDatadoshow() => _datadoshow != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "plataformaoficial" field.
  String? _plataformaoficial;
  String get plataformaoficial => _plataformaoficial ?? '';
  bool hasPlataformaoficial() => _plataformaoficial != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "nomedoingresso" field.
  String? _nomedoingresso;
  String get nomedoingresso => _nomedoingresso ?? '';
  bool hasNomedoingresso() => _nomedoingresso != null;

  // "nomedousuario_proposta" field.
  String? _nomedousuarioProposta;
  String get nomedousuarioProposta => _nomedousuarioProposta ?? '';
  bool hasNomedousuarioProposta() => _nomedousuarioProposta != null;

  // "emaildonoingresso" field.
  String? _emaildonoingresso;
  String get emaildonoingresso => _emaildonoingresso ?? '';
  bool hasEmaildonoingresso() => _emaildonoingresso != null;

  // "local" field.
  String? _local;
  String get local => _local ?? '';
  bool hasLocal() => _local != null;

  // "cidade_BeloHorizonte" field.
  bool? _cidadeBeloHorizonte;
  bool get cidadeBeloHorizonte => _cidadeBeloHorizonte ?? false;
  bool hasCidadeBeloHorizonte() => _cidadeBeloHorizonte != null;

  // "cidade_SaoPaulo" field.
  bool? _cidadeSaoPaulo;
  bool get cidadeSaoPaulo => _cidadeSaoPaulo ?? false;
  bool hasCidadeSaoPaulo() => _cidadeSaoPaulo != null;

  // "cidade_RiodeJaneiro" field.
  bool? _cidadeRiodeJaneiro;
  bool get cidadeRiodeJaneiro => _cidadeRiodeJaneiro ?? false;
  bool hasCidadeRiodeJaneiro() => _cidadeRiodeJaneiro != null;

  // "cidade_Vitoria" field.
  bool? _cidadeVitoria;
  bool get cidadeVitoria => _cidadeVitoria ?? false;
  bool hasCidadeVitoria() => _cidadeVitoria != null;

  // "cidade_Curitiba" field.
  bool? _cidadeCuritiba;
  bool get cidadeCuritiba => _cidadeCuritiba ?? false;
  bool hasCidadeCuritiba() => _cidadeCuritiba != null;

  // "cidade_Balneario" field.
  bool? _cidadeBalneario;
  bool get cidadeBalneario => _cidadeBalneario ?? false;
  bool hasCidadeBalneario() => _cidadeBalneario != null;

  // "cidade_Outros" field.
  bool? _cidadeOutros;
  bool get cidadeOutros => _cidadeOutros ?? false;
  bool hasCidadeOutros() => _cidadeOutros != null;

  // "cidade_Recife" field.
  bool? _cidadeRecife;
  bool get cidadeRecife => _cidadeRecife ?? false;
  bool hasCidadeRecife() => _cidadeRecife != null;

  // "cidade_Fortaleza" field.
  bool? _cidadeFortaleza;
  bool get cidadeFortaleza => _cidadeFortaleza ?? false;
  bool hasCidadeFortaleza() => _cidadeFortaleza != null;

  // "cidade_Brasilia" field.
  bool? _cidadeBrasilia;
  bool get cidadeBrasilia => _cidadeBrasilia ?? false;
  bool hasCidadeBrasilia() => _cidadeBrasilia != null;

  // "cidade_Florianopolis" field.
  bool? _cidadeFlorianopolis;
  bool get cidadeFlorianopolis => _cidadeFlorianopolis ?? false;
  bool hasCidadeFlorianopolis() => _cidadeFlorianopolis != null;

  // "usersREF" field.
  DocumentReference? _usersREF;
  DocumentReference? get usersREF => _usersREF;
  bool hasUsersREF() => _usersREF != null;

  // "ingressoREF" field.
  DocumentReference? _ingressoREF;
  DocumentReference? get ingressoREF => _ingressoREF;
  bool hasIngressoREF() => _ingressoREF != null;

  // "usersREF_proposta" field.
  DocumentReference? _usersREFProposta;
  DocumentReference? get usersREFProposta => _usersREFProposta;
  bool hasUsersREFProposta() => _usersREFProposta != null;

  void _initializeFields() {
    _valorproposto = castToType<int>(snapshotData['valorproposto']);
    _nomedafesta = snapshotData['nomedafesta'] as String?;
    _data = snapshotData['data'] as DateTime?;
    _datadoshow = snapshotData['datadoshow'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _plataformaoficial = snapshotData['plataformaoficial'] as String?;
    _image = snapshotData['image'] as String?;
    _nomedoingresso = snapshotData['nomedoingresso'] as String?;
    _nomedousuarioProposta = snapshotData['nomedousuario_proposta'] as String?;
    _emaildonoingresso = snapshotData['emaildonoingresso'] as String?;
    _local = snapshotData['local'] as String?;
    _cidadeBeloHorizonte = snapshotData['cidade_BeloHorizonte'] as bool?;
    _cidadeSaoPaulo = snapshotData['cidade_SaoPaulo'] as bool?;
    _cidadeRiodeJaneiro = snapshotData['cidade_RiodeJaneiro'] as bool?;
    _cidadeVitoria = snapshotData['cidade_Vitoria'] as bool?;
    _cidadeCuritiba = snapshotData['cidade_Curitiba'] as bool?;
    _cidadeBalneario = snapshotData['cidade_Balneario'] as bool?;
    _cidadeOutros = snapshotData['cidade_Outros'] as bool?;
    _cidadeRecife = snapshotData['cidade_Recife'] as bool?;
    _cidadeFortaleza = snapshotData['cidade_Fortaleza'] as bool?;
    _cidadeBrasilia = snapshotData['cidade_Brasilia'] as bool?;
    _cidadeFlorianopolis = snapshotData['cidade_Florianopolis'] as bool?;
    _usersREF = snapshotData['usersREF'] as DocumentReference?;
    _ingressoREF = snapshotData['ingressoREF'] as DocumentReference?;
    _usersREFProposta = snapshotData['usersREF_proposta'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notification_leilaoaceito');

  static Stream<NotificationLeilaoaceitoRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => NotificationLeilaoaceitoRecord.fromSnapshot(s));

  static Future<NotificationLeilaoaceitoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => NotificationLeilaoaceitoRecord.fromSnapshot(s));

  static NotificationLeilaoaceitoRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      NotificationLeilaoaceitoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationLeilaoaceitoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationLeilaoaceitoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationLeilaoaceitoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationLeilaoaceitoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationLeilaoaceitoRecordData({
  int? valorproposto,
  String? nomedafesta,
  DateTime? data,
  String? datadoshow,
  String? descricao,
  String? plataformaoficial,
  String? image,
  String? nomedoingresso,
  String? nomedousuarioProposta,
  String? emaildonoingresso,
  String? local,
  bool? cidadeBeloHorizonte,
  bool? cidadeSaoPaulo,
  bool? cidadeRiodeJaneiro,
  bool? cidadeVitoria,
  bool? cidadeCuritiba,
  bool? cidadeBalneario,
  bool? cidadeOutros,
  bool? cidadeRecife,
  bool? cidadeFortaleza,
  bool? cidadeBrasilia,
  bool? cidadeFlorianopolis,
  DocumentReference? usersREF,
  DocumentReference? ingressoREF,
  DocumentReference? usersREFProposta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'valorproposto': valorproposto,
      'nomedafesta': nomedafesta,
      'data': data,
      'datadoshow': datadoshow,
      'descricao': descricao,
      'plataformaoficial': plataformaoficial,
      'image': image,
      'nomedoingresso': nomedoingresso,
      'nomedousuario_proposta': nomedousuarioProposta,
      'emaildonoingresso': emaildonoingresso,
      'local': local,
      'cidade_BeloHorizonte': cidadeBeloHorizonte,
      'cidade_SaoPaulo': cidadeSaoPaulo,
      'cidade_RiodeJaneiro': cidadeRiodeJaneiro,
      'cidade_Vitoria': cidadeVitoria,
      'cidade_Curitiba': cidadeCuritiba,
      'cidade_Balneario': cidadeBalneario,
      'cidade_Outros': cidadeOutros,
      'cidade_Recife': cidadeRecife,
      'cidade_Fortaleza': cidadeFortaleza,
      'cidade_Brasilia': cidadeBrasilia,
      'cidade_Florianopolis': cidadeFlorianopolis,
      'usersREF': usersREF,
      'ingressoREF': ingressoREF,
      'usersREF_proposta': usersREFProposta,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationLeilaoaceitoRecordDocumentEquality
    implements Equality<NotificationLeilaoaceitoRecord> {
  const NotificationLeilaoaceitoRecordDocumentEquality();

  @override
  bool equals(
      NotificationLeilaoaceitoRecord? e1, NotificationLeilaoaceitoRecord? e2) {
    return e1?.valorproposto == e2?.valorproposto &&
        e1?.nomedafesta == e2?.nomedafesta &&
        e1?.data == e2?.data &&
        e1?.datadoshow == e2?.datadoshow &&
        e1?.descricao == e2?.descricao &&
        e1?.plataformaoficial == e2?.plataformaoficial &&
        e1?.image == e2?.image &&
        e1?.nomedoingresso == e2?.nomedoingresso &&
        e1?.nomedousuarioProposta == e2?.nomedousuarioProposta &&
        e1?.emaildonoingresso == e2?.emaildonoingresso &&
        e1?.local == e2?.local &&
        e1?.cidadeBeloHorizonte == e2?.cidadeBeloHorizonte &&
        e1?.cidadeSaoPaulo == e2?.cidadeSaoPaulo &&
        e1?.cidadeRiodeJaneiro == e2?.cidadeRiodeJaneiro &&
        e1?.cidadeVitoria == e2?.cidadeVitoria &&
        e1?.cidadeCuritiba == e2?.cidadeCuritiba &&
        e1?.cidadeBalneario == e2?.cidadeBalneario &&
        e1?.cidadeOutros == e2?.cidadeOutros &&
        e1?.cidadeRecife == e2?.cidadeRecife &&
        e1?.cidadeFortaleza == e2?.cidadeFortaleza &&
        e1?.cidadeBrasilia == e2?.cidadeBrasilia &&
        e1?.cidadeFlorianopolis == e2?.cidadeFlorianopolis &&
        e1?.usersREF == e2?.usersREF &&
        e1?.ingressoREF == e2?.ingressoREF &&
        e1?.usersREFProposta == e2?.usersREFProposta;
  }

  @override
  int hash(NotificationLeilaoaceitoRecord? e) => const ListEquality().hash([
        e?.valorproposto,
        e?.nomedafesta,
        e?.data,
        e?.datadoshow,
        e?.descricao,
        e?.plataformaoficial,
        e?.image,
        e?.nomedoingresso,
        e?.nomedousuarioProposta,
        e?.emaildonoingresso,
        e?.local,
        e?.cidadeBeloHorizonte,
        e?.cidadeSaoPaulo,
        e?.cidadeRiodeJaneiro,
        e?.cidadeVitoria,
        e?.cidadeCuritiba,
        e?.cidadeBalneario,
        e?.cidadeOutros,
        e?.cidadeRecife,
        e?.cidadeFortaleza,
        e?.cidadeBrasilia,
        e?.cidadeFlorianopolis,
        e?.usersREF,
        e?.ingressoREF,
        e?.usersREFProposta
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationLeilaoaceitoRecord;
}
