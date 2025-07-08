import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IngressosAnunciadosVendedorRecord extends FirestoreRecord {
  IngressosAnunciadosVendedorRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomedafesta" field.
  String? _nomedafesta;
  String get nomedafesta => _nomedafesta ?? '';
  bool hasNomedafesta() => _nomedafesta != null;

  // "data" field.
  String? _data;
  String get data => _data ?? '';
  bool hasData() => _data != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "nomedoingresso" field.
  String? _nomedoingresso;
  String get nomedoingresso => _nomedoingresso ?? '';
  bool hasNomedoingresso() => _nomedoingresso != null;

  // "valor" field.
  int? _valor;
  int get valor => _valor ?? 0;
  bool hasValor() => _valor != null;

  // "plataformaoficial" field.
  String? _plataformaoficial;
  String get plataformaoficial => _plataformaoficial ?? '';
  bool hasPlataformaoficial() => _plataformaoficial != null;

  // "local" field.
  String? _local;
  String get local => _local ?? '';
  bool hasLocal() => _local != null;

  // "disponivel" field.
  bool? _disponivel;
  bool get disponivel => _disponivel ?? false;
  bool hasDisponivel() => _disponivel != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "datadavenda" field.
  DateTime? _datadavenda;
  DateTime? get datadavenda => _datadavenda;
  bool hasDatadavenda() => _datadavenda != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

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

  // "cidade_Fortaleza" field.
  bool? _cidadeFortaleza;
  bool get cidadeFortaleza => _cidadeFortaleza ?? false;
  bool hasCidadeFortaleza() => _cidadeFortaleza != null;

  // "cidade_Recife" field.
  bool? _cidadeRecife;
  bool get cidadeRecife => _cidadeRecife ?? false;
  bool hasCidadeRecife() => _cidadeRecife != null;

  // "cidade_Brasilia" field.
  bool? _cidadeBrasilia;
  bool get cidadeBrasilia => _cidadeBrasilia ?? false;
  bool hasCidadeBrasilia() => _cidadeBrasilia != null;

  // "cidade_Florianopolis" field.
  bool? _cidadeFlorianopolis;
  bool get cidadeFlorianopolis => _cidadeFlorianopolis ?? false;
  bool hasCidadeFlorianopolis() => _cidadeFlorianopolis != null;

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  // "ingressoREF" field.
  DocumentReference? _ingressoREF;
  DocumentReference? get ingressoREF => _ingressoREF;
  bool hasIngressoREF() => _ingressoREF != null;

  // "like_by" field.
  List<DocumentReference>? _likeBy;
  List<DocumentReference> get likeBy => _likeBy ?? const [];
  bool hasLikeBy() => _likeBy != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nomedafesta = snapshotData['nomedafesta'] as String?;
    _data = snapshotData['data'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _nomedoingresso = snapshotData['nomedoingresso'] as String?;
    _valor = castToType<int>(snapshotData['valor']);
    _plataformaoficial = snapshotData['plataformaoficial'] as String?;
    _local = snapshotData['local'] as String?;
    _disponivel = snapshotData['disponivel'] as bool?;
    _imagem = snapshotData['imagem'] as String?;
    _datadavenda = snapshotData['datadavenda'] as DateTime?;
    _email = snapshotData['email'] as String?;
    _cidadeBeloHorizonte = snapshotData['cidade_BeloHorizonte'] as bool?;
    _cidadeSaoPaulo = snapshotData['cidade_SaoPaulo'] as bool?;
    _cidadeRiodeJaneiro = snapshotData['cidade_RiodeJaneiro'] as bool?;
    _cidadeVitoria = snapshotData['cidade_Vitoria'] as bool?;
    _cidadeCuritiba = snapshotData['cidade_Curitiba'] as bool?;
    _cidadeBalneario = snapshotData['cidade_Balneario'] as bool?;
    _cidadeOutros = snapshotData['cidade_Outros'] as bool?;
    _cidadeFortaleza = snapshotData['cidade_Fortaleza'] as bool?;
    _cidadeRecife = snapshotData['cidade_Recife'] as bool?;
    _cidadeBrasilia = snapshotData['cidade_Brasilia'] as bool?;
    _cidadeFlorianopolis = snapshotData['cidade_Florianopolis'] as bool?;
    _users = snapshotData['users'] as DocumentReference?;
    _ingressoREF = snapshotData['ingressoREF'] as DocumentReference?;
    _likeBy = getDataList(snapshotData['like_by']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('ingressos_anunciados_vendedor')
          : FirebaseFirestore.instance
              .collectionGroup('ingressos_anunciados_vendedor');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('ingressos_anunciados_vendedor').doc(id);

  static Stream<IngressosAnunciadosVendedorRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => IngressosAnunciadosVendedorRecord.fromSnapshot(s));

  static Future<IngressosAnunciadosVendedorRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => IngressosAnunciadosVendedorRecord.fromSnapshot(s));

  static IngressosAnunciadosVendedorRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      IngressosAnunciadosVendedorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IngressosAnunciadosVendedorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IngressosAnunciadosVendedorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IngressosAnunciadosVendedorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IngressosAnunciadosVendedorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIngressosAnunciadosVendedorRecordData({
  String? nomedafesta,
  String? data,
  String? descricao,
  String? nomedoingresso,
  int? valor,
  String? plataformaoficial,
  String? local,
  bool? disponivel,
  String? imagem,
  DateTime? datadavenda,
  String? email,
  bool? cidadeBeloHorizonte,
  bool? cidadeSaoPaulo,
  bool? cidadeRiodeJaneiro,
  bool? cidadeVitoria,
  bool? cidadeCuritiba,
  bool? cidadeBalneario,
  bool? cidadeOutros,
  bool? cidadeFortaleza,
  bool? cidadeRecife,
  bool? cidadeBrasilia,
  bool? cidadeFlorianopolis,
  DocumentReference? users,
  DocumentReference? ingressoREF,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomedafesta': nomedafesta,
      'data': data,
      'descricao': descricao,
      'nomedoingresso': nomedoingresso,
      'valor': valor,
      'plataformaoficial': plataformaoficial,
      'local': local,
      'disponivel': disponivel,
      'imagem': imagem,
      'datadavenda': datadavenda,
      'email': email,
      'cidade_BeloHorizonte': cidadeBeloHorizonte,
      'cidade_SaoPaulo': cidadeSaoPaulo,
      'cidade_RiodeJaneiro': cidadeRiodeJaneiro,
      'cidade_Vitoria': cidadeVitoria,
      'cidade_Curitiba': cidadeCuritiba,
      'cidade_Balneario': cidadeBalneario,
      'cidade_Outros': cidadeOutros,
      'cidade_Fortaleza': cidadeFortaleza,
      'cidade_Recife': cidadeRecife,
      'cidade_Brasilia': cidadeBrasilia,
      'cidade_Florianopolis': cidadeFlorianopolis,
      'users': users,
      'ingressoREF': ingressoREF,
    }.withoutNulls,
  );

  return firestoreData;
}

class IngressosAnunciadosVendedorRecordDocumentEquality
    implements Equality<IngressosAnunciadosVendedorRecord> {
  const IngressosAnunciadosVendedorRecordDocumentEquality();

  @override
  bool equals(IngressosAnunciadosVendedorRecord? e1,
      IngressosAnunciadosVendedorRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nomedafesta == e2?.nomedafesta &&
        e1?.data == e2?.data &&
        e1?.descricao == e2?.descricao &&
        e1?.nomedoingresso == e2?.nomedoingresso &&
        e1?.valor == e2?.valor &&
        e1?.plataformaoficial == e2?.plataformaoficial &&
        e1?.local == e2?.local &&
        e1?.disponivel == e2?.disponivel &&
        e1?.imagem == e2?.imagem &&
        e1?.datadavenda == e2?.datadavenda &&
        e1?.email == e2?.email &&
        e1?.cidadeBeloHorizonte == e2?.cidadeBeloHorizonte &&
        e1?.cidadeSaoPaulo == e2?.cidadeSaoPaulo &&
        e1?.cidadeRiodeJaneiro == e2?.cidadeRiodeJaneiro &&
        e1?.cidadeVitoria == e2?.cidadeVitoria &&
        e1?.cidadeCuritiba == e2?.cidadeCuritiba &&
        e1?.cidadeBalneario == e2?.cidadeBalneario &&
        e1?.cidadeOutros == e2?.cidadeOutros &&
        e1?.cidadeFortaleza == e2?.cidadeFortaleza &&
        e1?.cidadeRecife == e2?.cidadeRecife &&
        e1?.cidadeBrasilia == e2?.cidadeBrasilia &&
        e1?.cidadeFlorianopolis == e2?.cidadeFlorianopolis &&
        e1?.users == e2?.users &&
        e1?.ingressoREF == e2?.ingressoREF &&
        listEquality.equals(e1?.likeBy, e2?.likeBy);
  }

  @override
  int hash(IngressosAnunciadosVendedorRecord? e) => const ListEquality().hash([
        e?.nomedafesta,
        e?.data,
        e?.descricao,
        e?.nomedoingresso,
        e?.valor,
        e?.plataformaoficial,
        e?.local,
        e?.disponivel,
        e?.imagem,
        e?.datadavenda,
        e?.email,
        e?.cidadeBeloHorizonte,
        e?.cidadeSaoPaulo,
        e?.cidadeRiodeJaneiro,
        e?.cidadeVitoria,
        e?.cidadeCuritiba,
        e?.cidadeBalneario,
        e?.cidadeOutros,
        e?.cidadeFortaleza,
        e?.cidadeRecife,
        e?.cidadeBrasilia,
        e?.cidadeFlorianopolis,
        e?.users,
        e?.ingressoREF,
        e?.likeBy
      ]);

  @override
  bool isValidKey(Object? o) => o is IngressosAnunciadosVendedorRecord;
}
