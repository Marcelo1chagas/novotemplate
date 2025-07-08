import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IngressosPerfilEventoRecord extends FirestoreRecord {
  IngressosPerfilEventoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "local" field.
  String? _local;
  String get local => _local ?? '';
  bool hasLocal() => _local != null;

  // "datashow" field.
  String? _datashow;
  String get datashow => _datashow ?? '';
  bool hasDatashow() => _datashow != null;

  // "valordoingresso" field.
  int? _valordoingresso;
  int get valordoingresso => _valordoingresso ?? 0;
  bool hasValordoingresso() => _valordoingresso != null;

  // "nomedoingresso" field.
  String? _nomedoingresso;
  String get nomedoingresso => _nomedoingresso ?? '';
  bool hasNomedoingresso() => _nomedoingresso != null;

  // "nomedafesta" field.
  String? _nomedafesta;
  String get nomedafesta => _nomedafesta ?? '';
  bool hasNomedafesta() => _nomedafesta != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "plataforma_oficial" field.
  String? _plataformaOficial;
  String get plataformaOficial => _plataformaOficial ?? '';
  bool hasPlataformaOficial() => _plataformaOficial != null;

  // "disponivel" field.
  bool? _disponivel;
  bool get disponivel => _disponivel ?? false;
  bool hasDisponivel() => _disponivel != null;

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

  // "data_adicaonoapp" field.
  DateTime? _dataAdicaonoapp;
  DateTime? get dataAdicaonoapp => _dataAdicaonoapp;
  bool hasDataAdicaonoapp() => _dataAdicaonoapp != null;

  // "telefonevendedor" field.
  String? _telefonevendedor;
  String get telefonevendedor => _telefonevendedor ?? '';
  bool hasTelefonevendedor() => _telefonevendedor != null;

  // "cidade_Fortaleza" field.
  bool? _cidadeFortaleza;
  bool get cidadeFortaleza => _cidadeFortaleza ?? false;
  bool hasCidadeFortaleza() => _cidadeFortaleza != null;

  // "cidade_Brasilia" field.
  bool? _cidadeBrasilia;
  bool get cidadeBrasilia => _cidadeBrasilia ?? false;
  bool hasCidadeBrasilia() => _cidadeBrasilia != null;

  // "cidade_Recife" field.
  bool? _cidadeRecife;
  bool get cidadeRecife => _cidadeRecife ?? false;
  bool hasCidadeRecife() => _cidadeRecife != null;

  // "cidade_Florianopolis" field.
  bool? _cidadeFlorianopolis;
  bool get cidadeFlorianopolis => _cidadeFlorianopolis ?? false;
  bool hasCidadeFlorianopolis() => _cidadeFlorianopolis != null;

  // "datadoshow" field.
  DateTime? _datadoshow;
  DateTime? get datadoshow => _datadoshow;
  bool hasDatadoshow() => _datadoshow != null;

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  // "ingressoREF" field.
  DocumentReference? _ingressoREF;
  DocumentReference? get ingressoREF => _ingressoREF;
  bool hasIngressoREF() => _ingressoREF != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _cpf = snapshotData['cpf'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _local = snapshotData['local'] as String?;
    _datashow = snapshotData['datashow'] as String?;
    _valordoingresso = castToType<int>(snapshotData['valordoingresso']);
    _nomedoingresso = snapshotData['nomedoingresso'] as String?;
    _nomedafesta = snapshotData['nomedafesta'] as String?;
    _email = snapshotData['email'] as String?;
    _image = snapshotData['image'] as String?;
    _plataformaOficial = snapshotData['plataforma_oficial'] as String?;
    _disponivel = snapshotData['disponivel'] as bool?;
    _cidadeBeloHorizonte = snapshotData['cidade_BeloHorizonte'] as bool?;
    _cidadeSaoPaulo = snapshotData['cidade_SaoPaulo'] as bool?;
    _cidadeRiodeJaneiro = snapshotData['cidade_RiodeJaneiro'] as bool?;
    _cidadeVitoria = snapshotData['cidade_Vitoria'] as bool?;
    _cidadeCuritiba = snapshotData['cidade_Curitiba'] as bool?;
    _cidadeBalneario = snapshotData['cidade_Balneario'] as bool?;
    _cidadeOutros = snapshotData['cidade_Outros'] as bool?;
    _dataAdicaonoapp = snapshotData['data_adicaonoapp'] as DateTime?;
    _telefonevendedor = snapshotData['telefonevendedor'] as String?;
    _cidadeFortaleza = snapshotData['cidade_Fortaleza'] as bool?;
    _cidadeBrasilia = snapshotData['cidade_Brasilia'] as bool?;
    _cidadeRecife = snapshotData['cidade_Recife'] as bool?;
    _cidadeFlorianopolis = snapshotData['cidade_Florianopolis'] as bool?;
    _datadoshow = snapshotData['datadoshow'] as DateTime?;
    _users = snapshotData['users'] as DocumentReference?;
    _ingressoREF = snapshotData['ingressoREF'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('ingressos_perfil_evento')
          : FirebaseFirestore.instance
              .collectionGroup('ingressos_perfil_evento');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('ingressos_perfil_evento').doc(id);

  static Stream<IngressosPerfilEventoRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => IngressosPerfilEventoRecord.fromSnapshot(s));

  static Future<IngressosPerfilEventoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => IngressosPerfilEventoRecord.fromSnapshot(s));

  static IngressosPerfilEventoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IngressosPerfilEventoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IngressosPerfilEventoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IngressosPerfilEventoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IngressosPerfilEventoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IngressosPerfilEventoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIngressosPerfilEventoRecordData({
  String? cpf,
  String? descricao,
  String? local,
  String? datashow,
  int? valordoingresso,
  String? nomedoingresso,
  String? nomedafesta,
  String? email,
  String? image,
  String? plataformaOficial,
  bool? disponivel,
  bool? cidadeBeloHorizonte,
  bool? cidadeSaoPaulo,
  bool? cidadeRiodeJaneiro,
  bool? cidadeVitoria,
  bool? cidadeCuritiba,
  bool? cidadeBalneario,
  bool? cidadeOutros,
  DateTime? dataAdicaonoapp,
  String? telefonevendedor,
  bool? cidadeFortaleza,
  bool? cidadeBrasilia,
  bool? cidadeRecife,
  bool? cidadeFlorianopolis,
  DateTime? datadoshow,
  DocumentReference? users,
  DocumentReference? ingressoREF,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cpf': cpf,
      'descricao': descricao,
      'local': local,
      'datashow': datashow,
      'valordoingresso': valordoingresso,
      'nomedoingresso': nomedoingresso,
      'nomedafesta': nomedafesta,
      'email': email,
      'image': image,
      'plataforma_oficial': plataformaOficial,
      'disponivel': disponivel,
      'cidade_BeloHorizonte': cidadeBeloHorizonte,
      'cidade_SaoPaulo': cidadeSaoPaulo,
      'cidade_RiodeJaneiro': cidadeRiodeJaneiro,
      'cidade_Vitoria': cidadeVitoria,
      'cidade_Curitiba': cidadeCuritiba,
      'cidade_Balneario': cidadeBalneario,
      'cidade_Outros': cidadeOutros,
      'data_adicaonoapp': dataAdicaonoapp,
      'telefonevendedor': telefonevendedor,
      'cidade_Fortaleza': cidadeFortaleza,
      'cidade_Brasilia': cidadeBrasilia,
      'cidade_Recife': cidadeRecife,
      'cidade_Florianopolis': cidadeFlorianopolis,
      'datadoshow': datadoshow,
      'users': users,
      'ingressoREF': ingressoREF,
    }.withoutNulls,
  );

  return firestoreData;
}

class IngressosPerfilEventoRecordDocumentEquality
    implements Equality<IngressosPerfilEventoRecord> {
  const IngressosPerfilEventoRecordDocumentEquality();

  @override
  bool equals(
      IngressosPerfilEventoRecord? e1, IngressosPerfilEventoRecord? e2) {
    return e1?.cpf == e2?.cpf &&
        e1?.descricao == e2?.descricao &&
        e1?.local == e2?.local &&
        e1?.datashow == e2?.datashow &&
        e1?.valordoingresso == e2?.valordoingresso &&
        e1?.nomedoingresso == e2?.nomedoingresso &&
        e1?.nomedafesta == e2?.nomedafesta &&
        e1?.email == e2?.email &&
        e1?.image == e2?.image &&
        e1?.plataformaOficial == e2?.plataformaOficial &&
        e1?.disponivel == e2?.disponivel &&
        e1?.cidadeBeloHorizonte == e2?.cidadeBeloHorizonte &&
        e1?.cidadeSaoPaulo == e2?.cidadeSaoPaulo &&
        e1?.cidadeRiodeJaneiro == e2?.cidadeRiodeJaneiro &&
        e1?.cidadeVitoria == e2?.cidadeVitoria &&
        e1?.cidadeCuritiba == e2?.cidadeCuritiba &&
        e1?.cidadeBalneario == e2?.cidadeBalneario &&
        e1?.cidadeOutros == e2?.cidadeOutros &&
        e1?.dataAdicaonoapp == e2?.dataAdicaonoapp &&
        e1?.telefonevendedor == e2?.telefonevendedor &&
        e1?.cidadeFortaleza == e2?.cidadeFortaleza &&
        e1?.cidadeBrasilia == e2?.cidadeBrasilia &&
        e1?.cidadeRecife == e2?.cidadeRecife &&
        e1?.cidadeFlorianopolis == e2?.cidadeFlorianopolis &&
        e1?.datadoshow == e2?.datadoshow &&
        e1?.users == e2?.users &&
        e1?.ingressoREF == e2?.ingressoREF;
  }

  @override
  int hash(IngressosPerfilEventoRecord? e) => const ListEquality().hash([
        e?.cpf,
        e?.descricao,
        e?.local,
        e?.datashow,
        e?.valordoingresso,
        e?.nomedoingresso,
        e?.nomedafesta,
        e?.email,
        e?.image,
        e?.plataformaOficial,
        e?.disponivel,
        e?.cidadeBeloHorizonte,
        e?.cidadeSaoPaulo,
        e?.cidadeRiodeJaneiro,
        e?.cidadeVitoria,
        e?.cidadeCuritiba,
        e?.cidadeBalneario,
        e?.cidadeOutros,
        e?.dataAdicaonoapp,
        e?.telefonevendedor,
        e?.cidadeFortaleza,
        e?.cidadeBrasilia,
        e?.cidadeRecife,
        e?.cidadeFlorianopolis,
        e?.datadoshow,
        e?.users,
        e?.ingressoREF
      ]);

  @override
  bool isValidKey(Object? o) => o is IngressosPerfilEventoRecord;
}
