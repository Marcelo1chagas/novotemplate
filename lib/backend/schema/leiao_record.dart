import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeiaoRecord extends FirestoreRecord {
  LeiaoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "datadaoferta" field.
  DateTime? _datadaoferta;
  DateTime? get datadaoferta => _datadaoferta;
  bool hasDatadaoferta() => _datadaoferta != null;

  // "nomedafesta" field.
  String? _nomedafesta;
  String get nomedafesta => _nomedafesta ?? '';
  bool hasNomedafesta() => _nomedafesta != null;

  // "valorproposto" field.
  int? _valorproposto;
  int get valorproposto => _valorproposto ?? 0;
  bool hasValorproposto() => _valorproposto != null;

  // "nomedousuario_proposta" field.
  String? _nomedousuarioProposta;
  String get nomedousuarioProposta => _nomedousuarioProposta ?? '';
  bool hasNomedousuarioProposta() => _nomedousuarioProposta != null;

  // "datadafesta" field.
  String? _datadafesta;
  String get datadafesta => _datadafesta ?? '';
  bool hasDatadafesta() => _datadafesta != null;

  // "local" field.
  String? _local;
  String get local => _local ?? '';
  bool hasLocal() => _local != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "plataforma_oficial" field.
  String? _plataformaOficial;
  String get plataformaOficial => _plataformaOficial ?? '';
  bool hasPlataformaOficial() => _plataformaOficial != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "nomedonoingresso" field.
  String? _nomedonoingresso;
  String get nomedonoingresso => _nomedonoingresso ?? '';
  bool hasNomedonoingresso() => _nomedonoingresso != null;

  // "emaildonoingresso" field.
  String? _emaildonoingresso;
  String get emaildonoingresso => _emaildonoingresso ?? '';
  bool hasEmaildonoingresso() => _emaildonoingresso != null;

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

  // "usersREF" field.
  DocumentReference? _usersREF;
  DocumentReference? get usersREF => _usersREF;
  bool hasUsersREF() => _usersREF != null;

  // "usersREF_donoingresso" field.
  DocumentReference? _usersREFDonoingresso;
  DocumentReference? get usersREFDonoingresso => _usersREFDonoingresso;
  bool hasUsersREFDonoingresso() => _usersREFDonoingresso != null;

  // "ingressoREF" field.
  DocumentReference? _ingressoREF;
  DocumentReference? get ingressoREF => _ingressoREF;
  bool hasIngressoREF() => _ingressoREF != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _datadaoferta = snapshotData['datadaoferta'] as DateTime?;
    _nomedafesta = snapshotData['nomedafesta'] as String?;
    _valorproposto = castToType<int>(snapshotData['valorproposto']);
    _nomedousuarioProposta = snapshotData['nomedousuario_proposta'] as String?;
    _datadafesta = snapshotData['datadafesta'] as String?;
    _local = snapshotData['local'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _plataformaOficial = snapshotData['plataforma_oficial'] as String?;
    _imagem = snapshotData['imagem'] as String?;
    _nomedonoingresso = snapshotData['nomedonoingresso'] as String?;
    _emaildonoingresso = snapshotData['emaildonoingresso'] as String?;
    _cidadeBeloHorizonte = snapshotData['cidade_BeloHorizonte'] as bool?;
    _cidadeSaoPaulo = snapshotData['cidade_SaoPaulo'] as bool?;
    _cidadeRiodeJaneiro = snapshotData['cidade_RiodeJaneiro'] as bool?;
    _cidadeVitoria = snapshotData['cidade_Vitoria'] as bool?;
    _cidadeCuritiba = snapshotData['cidade_Curitiba'] as bool?;
    _cidadeBalneario = snapshotData['cidade_Balneario'] as bool?;
    _cidadeOutros = snapshotData['cidade_Outros'] as bool?;
    _usersREF = snapshotData['usersREF'] as DocumentReference?;
    _usersREFDonoingresso =
        snapshotData['usersREF_donoingresso'] as DocumentReference?;
    _ingressoREF = snapshotData['ingressoREF'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('leiao')
          : FirebaseFirestore.instance.collectionGroup('leiao');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('leiao').doc(id);

  static Stream<LeiaoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LeiaoRecord.fromSnapshot(s));

  static Future<LeiaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LeiaoRecord.fromSnapshot(s));

  static LeiaoRecord fromSnapshot(DocumentSnapshot snapshot) => LeiaoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LeiaoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LeiaoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LeiaoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LeiaoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLeiaoRecordData({
  DateTime? datadaoferta,
  String? nomedafesta,
  int? valorproposto,
  String? nomedousuarioProposta,
  String? datadafesta,
  String? local,
  String? descricao,
  String? plataformaOficial,
  String? imagem,
  String? nomedonoingresso,
  String? emaildonoingresso,
  bool? cidadeBeloHorizonte,
  bool? cidadeSaoPaulo,
  bool? cidadeRiodeJaneiro,
  bool? cidadeVitoria,
  bool? cidadeCuritiba,
  bool? cidadeBalneario,
  bool? cidadeOutros,
  DocumentReference? usersREF,
  DocumentReference? usersREFDonoingresso,
  DocumentReference? ingressoREF,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'datadaoferta': datadaoferta,
      'nomedafesta': nomedafesta,
      'valorproposto': valorproposto,
      'nomedousuario_proposta': nomedousuarioProposta,
      'datadafesta': datadafesta,
      'local': local,
      'descricao': descricao,
      'plataforma_oficial': plataformaOficial,
      'imagem': imagem,
      'nomedonoingresso': nomedonoingresso,
      'emaildonoingresso': emaildonoingresso,
      'cidade_BeloHorizonte': cidadeBeloHorizonte,
      'cidade_SaoPaulo': cidadeSaoPaulo,
      'cidade_RiodeJaneiro': cidadeRiodeJaneiro,
      'cidade_Vitoria': cidadeVitoria,
      'cidade_Curitiba': cidadeCuritiba,
      'cidade_Balneario': cidadeBalneario,
      'cidade_Outros': cidadeOutros,
      'usersREF': usersREF,
      'usersREF_donoingresso': usersREFDonoingresso,
      'ingressoREF': ingressoREF,
    }.withoutNulls,
  );

  return firestoreData;
}

class LeiaoRecordDocumentEquality implements Equality<LeiaoRecord> {
  const LeiaoRecordDocumentEquality();

  @override
  bool equals(LeiaoRecord? e1, LeiaoRecord? e2) {
    return e1?.datadaoferta == e2?.datadaoferta &&
        e1?.nomedafesta == e2?.nomedafesta &&
        e1?.valorproposto == e2?.valorproposto &&
        e1?.nomedousuarioProposta == e2?.nomedousuarioProposta &&
        e1?.datadafesta == e2?.datadafesta &&
        e1?.local == e2?.local &&
        e1?.descricao == e2?.descricao &&
        e1?.plataformaOficial == e2?.plataformaOficial &&
        e1?.imagem == e2?.imagem &&
        e1?.nomedonoingresso == e2?.nomedonoingresso &&
        e1?.emaildonoingresso == e2?.emaildonoingresso &&
        e1?.cidadeBeloHorizonte == e2?.cidadeBeloHorizonte &&
        e1?.cidadeSaoPaulo == e2?.cidadeSaoPaulo &&
        e1?.cidadeRiodeJaneiro == e2?.cidadeRiodeJaneiro &&
        e1?.cidadeVitoria == e2?.cidadeVitoria &&
        e1?.cidadeCuritiba == e2?.cidadeCuritiba &&
        e1?.cidadeBalneario == e2?.cidadeBalneario &&
        e1?.cidadeOutros == e2?.cidadeOutros &&
        e1?.usersREF == e2?.usersREF &&
        e1?.usersREFDonoingresso == e2?.usersREFDonoingresso &&
        e1?.ingressoREF == e2?.ingressoREF;
  }

  @override
  int hash(LeiaoRecord? e) => const ListEquality().hash([
        e?.datadaoferta,
        e?.nomedafesta,
        e?.valorproposto,
        e?.nomedousuarioProposta,
        e?.datadafesta,
        e?.local,
        e?.descricao,
        e?.plataformaOficial,
        e?.imagem,
        e?.nomedonoingresso,
        e?.emaildonoingresso,
        e?.cidadeBeloHorizonte,
        e?.cidadeSaoPaulo,
        e?.cidadeRiodeJaneiro,
        e?.cidadeVitoria,
        e?.cidadeCuritiba,
        e?.cidadeBalneario,
        e?.cidadeOutros,
        e?.usersREF,
        e?.usersREFDonoingresso,
        e?.ingressoREF
      ]);

  @override
  bool isValidKey(Object? o) => o is LeiaoRecord;
}
