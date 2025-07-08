import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompraIngressoRecord extends FirestoreRecord {
  CompraIngressoRecord._(
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

  // "recebimeuingresso" field.
  bool? _recebimeuingresso;
  bool get recebimeuingresso => _recebimeuingresso ?? false;
  bool hasRecebimeuingresso() => _recebimeuingresso != null;

  // "plataforma_oficial" field.
  String? _plataformaOficial;
  String get plataformaOficial => _plataformaOficial ?? '';
  bool hasPlataformaOficial() => _plataformaOficial != null;

  // "nomedafestacomprada" field.
  String? _nomedafestacomprada;
  String get nomedafestacomprada => _nomedafestacomprada ?? '';
  bool hasNomedafestacomprada() => _nomedafestacomprada != null;

  // "valordoingressoComprado" field.
  int? _valordoingressoComprado;
  int get valordoingressoComprado => _valordoingressoComprado ?? 0;
  bool hasValordoingressoComprado() => _valordoingressoComprado != null;

  // "emailvendedor" field.
  String? _emailvendedor;
  String get emailvendedor => _emailvendedor ?? '';
  bool hasEmailvendedor() => _emailvendedor != null;

  // "data_da_compra" field.
  DateTime? _dataDaCompra;
  DateTime? get dataDaCompra => _dataDaCompra;
  bool hasDataDaCompra() => _dataDaCompra != null;

  // "usersREF" field.
  DocumentReference? _usersREF;
  DocumentReference? get usersREF => _usersREF;
  bool hasUsersREF() => _usersREF != null;

  // "ref_users_compradoingresso" field.
  DocumentReference? _refUsersCompradoingresso;
  DocumentReference? get refUsersCompradoingresso => _refUsersCompradoingresso;
  bool hasRefUsersCompradoingresso() => _refUsersCompradoingresso != null;

  // "ref_ingressocomprado" field.
  DocumentReference? _refIngressocomprado;
  DocumentReference? get refIngressocomprado => _refIngressocomprado;
  bool hasRefIngressocomprado() => _refIngressocomprado != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nomedocomprador = snapshotData['nomedocomprador'] as String?;
    _cpf = snapshotData['cpf'] as String?;
    _endereco = snapshotData['endereco'] as String?;
    _numerodetelefone = snapshotData['numerodetelefone'] as String?;
    _email = snapshotData['email'] as String?;
    _nomeDoINGRESSOComprado =
        snapshotData['nome_doINGRESSO_comprado'] as String?;
    _recebimeuingresso = snapshotData['recebimeuingresso'] as bool?;
    _plataformaOficial = snapshotData['plataforma_oficial'] as String?;
    _nomedafestacomprada = snapshotData['nomedafestacomprada'] as String?;
    _valordoingressoComprado =
        castToType<int>(snapshotData['valordoingressoComprado']);
    _emailvendedor = snapshotData['emailvendedor'] as String?;
    _dataDaCompra = snapshotData['data_da_compra'] as DateTime?;
    _usersREF = snapshotData['usersREF'] as DocumentReference?;
    _refUsersCompradoingresso =
        snapshotData['ref_users_compradoingresso'] as DocumentReference?;
    _refIngressocomprado =
        snapshotData['ref_ingressocomprado'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('compra_ingresso')
          : FirebaseFirestore.instance.collectionGroup('compra_ingresso');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('compra_ingresso').doc(id);

  static Stream<CompraIngressoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompraIngressoRecord.fromSnapshot(s));

  static Future<CompraIngressoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompraIngressoRecord.fromSnapshot(s));

  static CompraIngressoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompraIngressoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompraIngressoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompraIngressoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompraIngressoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompraIngressoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompraIngressoRecordData({
  String? nomedocomprador,
  String? cpf,
  String? endereco,
  String? numerodetelefone,
  String? email,
  String? nomeDoINGRESSOComprado,
  bool? recebimeuingresso,
  String? plataformaOficial,
  String? nomedafestacomprada,
  int? valordoingressoComprado,
  String? emailvendedor,
  DateTime? dataDaCompra,
  DocumentReference? usersREF,
  DocumentReference? refUsersCompradoingresso,
  DocumentReference? refIngressocomprado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomedocomprador': nomedocomprador,
      'cpf': cpf,
      'endereco': endereco,
      'numerodetelefone': numerodetelefone,
      'email': email,
      'nome_doINGRESSO_comprado': nomeDoINGRESSOComprado,
      'recebimeuingresso': recebimeuingresso,
      'plataforma_oficial': plataformaOficial,
      'nomedafestacomprada': nomedafestacomprada,
      'valordoingressoComprado': valordoingressoComprado,
      'emailvendedor': emailvendedor,
      'data_da_compra': dataDaCompra,
      'usersREF': usersREF,
      'ref_users_compradoingresso': refUsersCompradoingresso,
      'ref_ingressocomprado': refIngressocomprado,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompraIngressoRecordDocumentEquality
    implements Equality<CompraIngressoRecord> {
  const CompraIngressoRecordDocumentEquality();

  @override
  bool equals(CompraIngressoRecord? e1, CompraIngressoRecord? e2) {
    return e1?.nomedocomprador == e2?.nomedocomprador &&
        e1?.cpf == e2?.cpf &&
        e1?.endereco == e2?.endereco &&
        e1?.numerodetelefone == e2?.numerodetelefone &&
        e1?.email == e2?.email &&
        e1?.nomeDoINGRESSOComprado == e2?.nomeDoINGRESSOComprado &&
        e1?.recebimeuingresso == e2?.recebimeuingresso &&
        e1?.plataformaOficial == e2?.plataformaOficial &&
        e1?.nomedafestacomprada == e2?.nomedafestacomprada &&
        e1?.valordoingressoComprado == e2?.valordoingressoComprado &&
        e1?.emailvendedor == e2?.emailvendedor &&
        e1?.dataDaCompra == e2?.dataDaCompra &&
        e1?.usersREF == e2?.usersREF &&
        e1?.refUsersCompradoingresso == e2?.refUsersCompradoingresso &&
        e1?.refIngressocomprado == e2?.refIngressocomprado;
  }

  @override
  int hash(CompraIngressoRecord? e) => const ListEquality().hash([
        e?.nomedocomprador,
        e?.cpf,
        e?.endereco,
        e?.numerodetelefone,
        e?.email,
        e?.nomeDoINGRESSOComprado,
        e?.recebimeuingresso,
        e?.plataformaOficial,
        e?.nomedafestacomprada,
        e?.valordoingressoComprado,
        e?.emailvendedor,
        e?.dataDaCompra,
        e?.usersREF,
        e?.refUsersCompradoingresso,
        e?.refIngressocomprado
      ]);

  @override
  bool isValidKey(Object? o) => o is CompraIngressoRecord;
}
