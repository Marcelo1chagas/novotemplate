import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComprasFAVORITOSRecord extends FirestoreRecord {
  ComprasFAVORITOSRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomedocomprador" field.
  String? _nomedocomprador;
  String get nomedocomprador => _nomedocomprador ?? '';
  bool hasNomedocomprador() => _nomedocomprador != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "numerodetelefone" field.
  String? _numerodetelefone;
  String get numerodetelefone => _numerodetelefone ?? '';
  bool hasNumerodetelefone() => _numerodetelefone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "nome_doINGRESSO_comprado" field.
  String? _nomeDoINGRESSOComprado;
  String get nomeDoINGRESSOComprado => _nomeDoINGRESSOComprado ?? '';
  bool hasNomeDoINGRESSOComprado() => _nomeDoINGRESSOComprado != null;

  // "plataforma_oficial" field.
  String? _plataformaOficial;
  String get plataformaOficial => _plataformaOficial ?? '';
  bool hasPlataformaOficial() => _plataformaOficial != null;

  // "data_da_compra" field.
  DateTime? _dataDaCompra;
  DateTime? get dataDaCompra => _dataDaCompra;
  bool hasDataDaCompra() => _dataDaCompra != null;

  // "usersREF" field.
  DocumentReference? _usersREF;
  DocumentReference? get usersREF => _usersREF;
  bool hasUsersREF() => _usersREF != null;

  // "ref_users_compraingresso" field.
  DocumentReference? _refUsersCompraingresso;
  DocumentReference? get refUsersCompraingresso => _refUsersCompraingresso;
  bool hasRefUsersCompraingresso() => _refUsersCompraingresso != null;

  // "refingresso" field.
  DocumentReference? _refingresso;
  DocumentReference? get refingresso => _refingresso;
  bool hasRefingresso() => _refingresso != null;

  void _initializeFields() {
    _nomedocomprador = snapshotData['nomedocomprador'] as String?;
    _cpf = snapshotData['cpf'] as String?;
    _endereco = snapshotData['endereco'] as String?;
    _numerodetelefone = snapshotData['numerodetelefone'] as String?;
    _email = snapshotData['email'] as String?;
    _nomeDoINGRESSOComprado =
        snapshotData['nome_doINGRESSO_comprado'] as String?;
    _plataformaOficial = snapshotData['plataforma_oficial'] as String?;
    _dataDaCompra = snapshotData['data_da_compra'] as DateTime?;
    _usersREF = snapshotData['usersREF'] as DocumentReference?;
    _refUsersCompraingresso =
        snapshotData['ref_users_compraingresso'] as DocumentReference?;
    _refingresso = snapshotData['refingresso'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('compras-FAVORITOS');

  static Stream<ComprasFAVORITOSRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ComprasFAVORITOSRecord.fromSnapshot(s));

  static Future<ComprasFAVORITOSRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ComprasFAVORITOSRecord.fromSnapshot(s));

  static ComprasFAVORITOSRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ComprasFAVORITOSRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ComprasFAVORITOSRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ComprasFAVORITOSRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ComprasFAVORITOSRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ComprasFAVORITOSRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createComprasFAVORITOSRecordData({
  String? nomedocomprador,
  String? cpf,
  String? endereco,
  String? numerodetelefone,
  String? email,
  String? nomeDoINGRESSOComprado,
  String? plataformaOficial,
  DateTime? dataDaCompra,
  DocumentReference? usersREF,
  DocumentReference? refUsersCompraingresso,
  DocumentReference? refingresso,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomedocomprador': nomedocomprador,
      'cpf': cpf,
      'endereco': endereco,
      'numerodetelefone': numerodetelefone,
      'email': email,
      'nome_doINGRESSO_comprado': nomeDoINGRESSOComprado,
      'plataforma_oficial': plataformaOficial,
      'data_da_compra': dataDaCompra,
      'usersREF': usersREF,
      'ref_users_compraingresso': refUsersCompraingresso,
      'refingresso': refingresso,
    }.withoutNulls,
  );

  return firestoreData;
}

class ComprasFAVORITOSRecordDocumentEquality
    implements Equality<ComprasFAVORITOSRecord> {
  const ComprasFAVORITOSRecordDocumentEquality();

  @override
  bool equals(ComprasFAVORITOSRecord? e1, ComprasFAVORITOSRecord? e2) {
    return e1?.nomedocomprador == e2?.nomedocomprador &&
        e1?.cpf == e2?.cpf &&
        e1?.endereco == e2?.endereco &&
        e1?.numerodetelefone == e2?.numerodetelefone &&
        e1?.email == e2?.email &&
        e1?.nomeDoINGRESSOComprado == e2?.nomeDoINGRESSOComprado &&
        e1?.plataformaOficial == e2?.plataformaOficial &&
        e1?.dataDaCompra == e2?.dataDaCompra &&
        e1?.usersREF == e2?.usersREF &&
        e1?.refUsersCompraingresso == e2?.refUsersCompraingresso &&
        e1?.refingresso == e2?.refingresso;
  }

  @override
  int hash(ComprasFAVORITOSRecord? e) => const ListEquality().hash([
        e?.nomedocomprador,
        e?.cpf,
        e?.endereco,
        e?.numerodetelefone,
        e?.email,
        e?.nomeDoINGRESSOComprado,
        e?.plataformaOficial,
        e?.dataDaCompra,
        e?.usersREF,
        e?.refUsersCompraingresso,
        e?.refingresso
      ]);

  @override
  bool isValidKey(Object? o) => o is ComprasFAVORITOSRecord;
}
