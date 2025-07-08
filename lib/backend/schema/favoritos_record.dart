import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FavoritosRecord extends FirestoreRecord {
  FavoritosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "local" field.
  String? _local;
  String get local => _local ?? '';
  bool hasLocal() => _local != null;

  // "datadoshow" field.
  String? _datadoshow;
  String get datadoshow => _datadoshow ?? '';
  bool hasDatadoshow() => _datadoshow != null;

  // "nomedafesta" field.
  String? _nomedafesta;
  String get nomedafesta => _nomedafesta ?? '';
  bool hasNomedafesta() => _nomedafesta != null;

  // "nomedoingresso" field.
  String? _nomedoingresso;
  String get nomedoingresso => _nomedoingresso ?? '';
  bool hasNomedoingresso() => _nomedoingresso != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "valordoingresso" field.
  int? _valordoingresso;
  int get valordoingresso => _valordoingresso ?? 0;
  bool hasValordoingresso() => _valordoingresso != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "emailvendedor" field.
  String? _emailvendedor;
  String get emailvendedor => _emailvendedor ?? '';
  bool hasEmailvendedor() => _emailvendedor != null;

  // "plataforma_oficial" field.
  String? _plataformaOficial;
  String get plataformaOficial => _plataformaOficial ?? '';
  bool hasPlataformaOficial() => _plataformaOficial != null;

  // "disponivel" field.
  bool? _disponivel;
  bool get disponivel => _disponivel ?? false;
  bool hasDisponivel() => _disponivel != null;

  // "datadacompra" field.
  DateTime? _datadacompra;
  DateTime? get datadacompra => _datadacompra;
  bool hasDatadacompra() => _datadacompra != null;

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

  // "like_by" field.
  List<DocumentReference>? _likeBy;
  List<DocumentReference> get likeBy => _likeBy ?? const [];
  bool hasLikeBy() => _likeBy != null;

  // "usersDONOingresso" field.
  DocumentReference? _usersDONOingresso;
  DocumentReference? get usersDONOingresso => _usersDONOingresso;
  bool hasUsersDONOingresso() => _usersDONOingresso != null;

  // "ingressoREF" field.
  DocumentReference? _ingressoREF;
  DocumentReference? get ingressoREF => _ingressoREF;
  bool hasIngressoREF() => _ingressoREF != null;

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  void _initializeFields() {
    _local = snapshotData['local'] as String?;
    _datadoshow = snapshotData['datadoshow'] as String?;
    _nomedafesta = snapshotData['nomedafesta'] as String?;
    _nomedoingresso = snapshotData['nomedoingresso'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _valordoingresso = castToType<int>(snapshotData['valordoingresso']);
    _image = snapshotData['image'] as String?;
    _emailvendedor = snapshotData['emailvendedor'] as String?;
    _plataformaOficial = snapshotData['plataforma_oficial'] as String?;
    _disponivel = snapshotData['disponivel'] as bool?;
    _datadacompra = snapshotData['datadacompra'] as DateTime?;
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
    _likeBy = getDataList(snapshotData['like_by']);
    _usersDONOingresso =
        snapshotData['usersDONOingresso'] as DocumentReference?;
    _ingressoREF = snapshotData['ingressoREF'] as DocumentReference?;
    _users = snapshotData['users'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('favoritos');

  static Stream<FavoritosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FavoritosRecord.fromSnapshot(s));

  static Future<FavoritosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FavoritosRecord.fromSnapshot(s));

  static FavoritosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FavoritosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FavoritosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FavoritosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FavoritosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FavoritosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFavoritosRecordData({
  String? local,
  String? datadoshow,
  String? nomedafesta,
  String? nomedoingresso,
  String? descricao,
  int? valordoingresso,
  String? image,
  String? emailvendedor,
  String? plataformaOficial,
  bool? disponivel,
  DateTime? datadacompra,
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
  DocumentReference? usersDONOingresso,
  DocumentReference? ingressoREF,
  DocumentReference? users,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'local': local,
      'datadoshow': datadoshow,
      'nomedafesta': nomedafesta,
      'nomedoingresso': nomedoingresso,
      'descricao': descricao,
      'valordoingresso': valordoingresso,
      'image': image,
      'emailvendedor': emailvendedor,
      'plataforma_oficial': plataformaOficial,
      'disponivel': disponivel,
      'datadacompra': datadacompra,
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
      'usersDONOingresso': usersDONOingresso,
      'ingressoREF': ingressoREF,
      'users': users,
    }.withoutNulls,
  );

  return firestoreData;
}

class FavoritosRecordDocumentEquality implements Equality<FavoritosRecord> {
  const FavoritosRecordDocumentEquality();

  @override
  bool equals(FavoritosRecord? e1, FavoritosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.local == e2?.local &&
        e1?.datadoshow == e2?.datadoshow &&
        e1?.nomedafesta == e2?.nomedafesta &&
        e1?.nomedoingresso == e2?.nomedoingresso &&
        e1?.descricao == e2?.descricao &&
        e1?.valordoingresso == e2?.valordoingresso &&
        e1?.image == e2?.image &&
        e1?.emailvendedor == e2?.emailvendedor &&
        e1?.plataformaOficial == e2?.plataformaOficial &&
        e1?.disponivel == e2?.disponivel &&
        e1?.datadacompra == e2?.datadacompra &&
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
        listEquality.equals(e1?.likeBy, e2?.likeBy) &&
        e1?.usersDONOingresso == e2?.usersDONOingresso &&
        e1?.ingressoREF == e2?.ingressoREF &&
        e1?.users == e2?.users;
  }

  @override
  int hash(FavoritosRecord? e) => const ListEquality().hash([
        e?.local,
        e?.datadoshow,
        e?.nomedafesta,
        e?.nomedoingresso,
        e?.descricao,
        e?.valordoingresso,
        e?.image,
        e?.emailvendedor,
        e?.plataformaOficial,
        e?.disponivel,
        e?.datadacompra,
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
        e?.likeBy,
        e?.usersDONOingresso,
        e?.ingressoREF,
        e?.users
      ]);

  @override
  bool isValidKey(Object? o) => o is FavoritosRecord;
}
