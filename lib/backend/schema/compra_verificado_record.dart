import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompraVerificadoRecord extends FirestoreRecord {
  CompraVerificadoRecord._(
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

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "numerodecelular" field.
  String? _numerodecelular;
  String get numerodecelular => _numerodecelular ?? '';
  bool hasNumerodecelular() => _numerodecelular != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "imagem_identidade" field.
  String? _imagemIdentidade;
  String get imagemIdentidade => _imagemIdentidade ?? '';
  bool hasImagemIdentidade() => _imagemIdentidade != null;

  // "valordacompra" field.
  String? _valordacompra;
  String get valordacompra => _valordacompra ?? '';
  bool hasValordacompra() => _valordacompra != null;

  // "data_da_compra" field.
  DateTime? _dataDaCompra;
  DateTime? get dataDaCompra => _dataDaCompra;
  bool hasDataDaCompra() => _dataDaCompra != null;

  // "usersREF" field.
  DocumentReference? _usersREF;
  DocumentReference? get usersREF => _usersREF;
  bool hasUsersREF() => _usersREF != null;

  void _initializeFields() {
    _nomedousuario = snapshotData['nomedousuario'] as String?;
    _datadacompra = snapshotData['datadacompra'] as DateTime?;
    _email = snapshotData['email'] as String?;
    _numerodecelular = snapshotData['numerodecelular'] as String?;
    _cpf = snapshotData['cpf'] as String?;
    _imagemIdentidade = snapshotData['imagem_identidade'] as String?;
    _valordacompra = snapshotData['valordacompra'] as String?;
    _dataDaCompra = snapshotData['data_da_compra'] as DateTime?;
    _usersREF = snapshotData['usersREF'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('compra_verificado');

  static Stream<CompraVerificadoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompraVerificadoRecord.fromSnapshot(s));

  static Future<CompraVerificadoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CompraVerificadoRecord.fromSnapshot(s));

  static CompraVerificadoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompraVerificadoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompraVerificadoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompraVerificadoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompraVerificadoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompraVerificadoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompraVerificadoRecordData({
  String? nomedousuario,
  DateTime? datadacompra,
  String? email,
  String? numerodecelular,
  String? cpf,
  String? imagemIdentidade,
  String? valordacompra,
  DateTime? dataDaCompra,
  DocumentReference? usersREF,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomedousuario': nomedousuario,
      'datadacompra': datadacompra,
      'email': email,
      'numerodecelular': numerodecelular,
      'cpf': cpf,
      'imagem_identidade': imagemIdentidade,
      'valordacompra': valordacompra,
      'data_da_compra': dataDaCompra,
      'usersREF': usersREF,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompraVerificadoRecordDocumentEquality
    implements Equality<CompraVerificadoRecord> {
  const CompraVerificadoRecordDocumentEquality();

  @override
  bool equals(CompraVerificadoRecord? e1, CompraVerificadoRecord? e2) {
    return e1?.nomedousuario == e2?.nomedousuario &&
        e1?.datadacompra == e2?.datadacompra &&
        e1?.email == e2?.email &&
        e1?.numerodecelular == e2?.numerodecelular &&
        e1?.cpf == e2?.cpf &&
        e1?.imagemIdentidade == e2?.imagemIdentidade &&
        e1?.valordacompra == e2?.valordacompra &&
        e1?.dataDaCompra == e2?.dataDaCompra &&
        e1?.usersREF == e2?.usersREF;
  }

  @override
  int hash(CompraVerificadoRecord? e) => const ListEquality().hash([
        e?.nomedousuario,
        e?.datadacompra,
        e?.email,
        e?.numerodecelular,
        e?.cpf,
        e?.imagemIdentidade,
        e?.valordacompra,
        e?.dataDaCompra,
        e?.usersREF
      ]);

  @override
  bool isValidKey(Object? o) => o is CompraVerificadoRecord;
}
