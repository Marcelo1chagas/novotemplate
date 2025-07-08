import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VerificadoCompraRecord extends FirestoreRecord {
  VerificadoCompraRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomedousuario" field.
  String? _nomedousuario;
  String get nomedousuario => _nomedousuario ?? '';
  bool hasNomedousuario() => _nomedousuario != null;

  // "datadacompra" field.
  DateTime? _datadacompra;
  DateTime? get datadacompra => _datadacompra;
  bool hasDatadacompra() => _datadacompra != null;

  // "numerodocelular" field.
  String? _numerodocelular;
  String get numerodocelular => _numerodocelular ?? '';
  bool hasNumerodocelular() => _numerodocelular != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "frente_identidade" field.
  String? _frenteIdentidade;
  String get frenteIdentidade => _frenteIdentidade ?? '';
  bool hasFrenteIdentidade() => _frenteIdentidade != null;

  // "verso_identidade" field.
  String? _versoIdentidade;
  String get versoIdentidade => _versoIdentidade ?? '';
  bool hasVersoIdentidade() => _versoIdentidade != null;

  // "valordacompra" field.
  String? _valordacompra;
  String get valordacompra => _valordacompra ?? '';
  bool hasValordacompra() => _valordacompra != null;

  // "usersREF" field.
  DocumentReference? _usersREF;
  DocumentReference? get usersREF => _usersREF;
  bool hasUsersREF() => _usersREF != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nomedousuario = snapshotData['nomedousuario'] as String?;
    _datadacompra = snapshotData['datadacompra'] as DateTime?;
    _numerodocelular = snapshotData['numerodocelular'] as String?;
    _email = snapshotData['email'] as String?;
    _cpf = snapshotData['cpf'] as String?;
    _frenteIdentidade = snapshotData['frente_identidade'] as String?;
    _versoIdentidade = snapshotData['verso_identidade'] as String?;
    _valordacompra = snapshotData['valordacompra'] as String?;
    _usersREF = snapshotData['usersREF'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('verificado_compra')
          : FirebaseFirestore.instance.collectionGroup('verificado_compra');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('verificado_compra').doc(id);

  static Stream<VerificadoCompraRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VerificadoCompraRecord.fromSnapshot(s));

  static Future<VerificadoCompraRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => VerificadoCompraRecord.fromSnapshot(s));

  static VerificadoCompraRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VerificadoCompraRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VerificadoCompraRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VerificadoCompraRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VerificadoCompraRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VerificadoCompraRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVerificadoCompraRecordData({
  String? nomedousuario,
  DateTime? datadacompra,
  String? numerodocelular,
  String? email,
  String? cpf,
  String? frenteIdentidade,
  String? versoIdentidade,
  String? valordacompra,
  DocumentReference? usersREF,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomedousuario': nomedousuario,
      'datadacompra': datadacompra,
      'numerodocelular': numerodocelular,
      'email': email,
      'cpf': cpf,
      'frente_identidade': frenteIdentidade,
      'verso_identidade': versoIdentidade,
      'valordacompra': valordacompra,
      'usersREF': usersREF,
    }.withoutNulls,
  );

  return firestoreData;
}

class VerificadoCompraRecordDocumentEquality
    implements Equality<VerificadoCompraRecord> {
  const VerificadoCompraRecordDocumentEquality();

  @override
  bool equals(VerificadoCompraRecord? e1, VerificadoCompraRecord? e2) {
    return e1?.nomedousuario == e2?.nomedousuario &&
        e1?.datadacompra == e2?.datadacompra &&
        e1?.numerodocelular == e2?.numerodocelular &&
        e1?.email == e2?.email &&
        e1?.cpf == e2?.cpf &&
        e1?.frenteIdentidade == e2?.frenteIdentidade &&
        e1?.versoIdentidade == e2?.versoIdentidade &&
        e1?.valordacompra == e2?.valordacompra &&
        e1?.usersREF == e2?.usersREF;
  }

  @override
  int hash(VerificadoCompraRecord? e) => const ListEquality().hash([
        e?.nomedousuario,
        e?.datadacompra,
        e?.numerodocelular,
        e?.email,
        e?.cpf,
        e?.frenteIdentidade,
        e?.versoIdentidade,
        e?.valordacompra,
        e?.usersREF
      ]);

  @override
  bool isValidKey(Object? o) => o is VerificadoCompraRecord;
}
