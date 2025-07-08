import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IngressosCompradosRecord extends FirestoreRecord {
  IngressosCompradosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomedafesta" field.
  String? _nomedafesta;
  String get nomedafesta => _nomedafesta ?? '';
  bool hasNomedafesta() => _nomedafesta != null;

  // "nomedoingresso" field.
  String? _nomedoingresso;
  String get nomedoingresso => _nomedoingresso ?? '';
  bool hasNomedoingresso() => _nomedoingresso != null;

  // "valordoingresso" field.
  String? _valordoingresso;
  String get valordoingresso => _valordoingresso ?? '';
  bool hasValordoingresso() => _valordoingresso != null;

  // "datadafesta" field.
  String? _datadafesta;
  String get datadafesta => _datadafesta ?? '';
  bool hasDatadafesta() => _datadafesta != null;

  // "datadacompra" field.
  DateTime? _datadacompra;
  DateTime? get datadacompra => _datadacompra;
  bool hasDatadacompra() => _datadacompra != null;

  // "nomedocomprador" field.
  String? _nomedocomprador;
  String get nomedocomprador => _nomedocomprador ?? '';
  bool hasNomedocomprador() => _nomedocomprador != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "local" field.
  String? _local;
  String get local => _local ?? '';
  bool hasLocal() => _local != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "plataforma_ofical" field.
  String? _plataformaOfical;
  String get plataformaOfical => _plataformaOfical ?? '';
  bool hasPlataformaOfical() => _plataformaOfical != null;

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

  // "refUsers" field.
  DocumentReference? _refUsers;
  DocumentReference? get refUsers => _refUsers;
  bool hasRefUsers() => _refUsers != null;

  void _initializeFields() {
    _nomedafesta = snapshotData['nomedafesta'] as String?;
    _nomedoingresso = snapshotData['nomedoingresso'] as String?;
    _valordoingresso = snapshotData['valordoingresso'] as String?;
    _datadafesta = snapshotData['datadafesta'] as String?;
    _datadacompra = snapshotData['datadacompra'] as DateTime?;
    _nomedocomprador = snapshotData['nomedocomprador'] as String?;
    _image = snapshotData['image'] as String?;
    _local = snapshotData['local'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _plataformaOfical = snapshotData['plataforma_ofical'] as String?;
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
    _refUsers = snapshotData['refUsers'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ingressos_comprados');

  static Stream<IngressosCompradosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IngressosCompradosRecord.fromSnapshot(s));

  static Future<IngressosCompradosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => IngressosCompradosRecord.fromSnapshot(s));

  static IngressosCompradosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IngressosCompradosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IngressosCompradosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IngressosCompradosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IngressosCompradosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IngressosCompradosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIngressosCompradosRecordData({
  String? nomedafesta,
  String? nomedoingresso,
  String? valordoingresso,
  String? datadafesta,
  DateTime? datadacompra,
  String? nomedocomprador,
  String? image,
  String? local,
  String? descricao,
  String? plataformaOfical,
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
  DocumentReference? refUsers,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomedafesta': nomedafesta,
      'nomedoingresso': nomedoingresso,
      'valordoingresso': valordoingresso,
      'datadafesta': datadafesta,
      'datadacompra': datadacompra,
      'nomedocomprador': nomedocomprador,
      'image': image,
      'local': local,
      'descricao': descricao,
      'plataforma_ofical': plataformaOfical,
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
      'refUsers': refUsers,
    }.withoutNulls,
  );

  return firestoreData;
}

class IngressosCompradosRecordDocumentEquality
    implements Equality<IngressosCompradosRecord> {
  const IngressosCompradosRecordDocumentEquality();

  @override
  bool equals(IngressosCompradosRecord? e1, IngressosCompradosRecord? e2) {
    return e1?.nomedafesta == e2?.nomedafesta &&
        e1?.nomedoingresso == e2?.nomedoingresso &&
        e1?.valordoingresso == e2?.valordoingresso &&
        e1?.datadafesta == e2?.datadafesta &&
        e1?.datadacompra == e2?.datadacompra &&
        e1?.nomedocomprador == e2?.nomedocomprador &&
        e1?.image == e2?.image &&
        e1?.local == e2?.local &&
        e1?.descricao == e2?.descricao &&
        e1?.plataformaOfical == e2?.plataformaOfical &&
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
        e1?.refUsers == e2?.refUsers;
  }

  @override
  int hash(IngressosCompradosRecord? e) => const ListEquality().hash([
        e?.nomedafesta,
        e?.nomedoingresso,
        e?.valordoingresso,
        e?.datadafesta,
        e?.datadacompra,
        e?.nomedocomprador,
        e?.image,
        e?.local,
        e?.descricao,
        e?.plataformaOfical,
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
        e?.refUsers
      ]);

  @override
  bool isValidKey(Object? o) => o is IngressosCompradosRecord;
}
