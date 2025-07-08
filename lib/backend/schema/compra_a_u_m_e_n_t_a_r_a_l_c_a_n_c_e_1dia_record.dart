import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompraAUMENTARALCANCE1diaRecord extends FirestoreRecord {
  CompraAUMENTARALCANCE1diaRecord._(
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

  // "nomedafesta" field.
  String? _nomedafesta;
  String get nomedafesta => _nomedafesta ?? '';
  bool hasNomedafesta() => _nomedafesta != null;

  // "datadacompra" field.
  DateTime? _datadacompra;
  DateTime? get datadacompra => _datadacompra;
  bool hasDatadacompra() => _datadacompra != null;

  // "usersREF" field.
  DocumentReference? _usersREF;
  DocumentReference? get usersREF => _usersREF;
  bool hasUsersREF() => _usersREF != null;

  void _initializeFields() {
    _nomedocomprador = snapshotData['nomedocomprador'] as String?;
    _cpf = snapshotData['cpf'] as String?;
    _endereco = snapshotData['endereco'] as String?;
    _numerodetelefone = snapshotData['numerodetelefone'] as String?;
    _email = snapshotData['email'] as String?;
    _nomedafesta = snapshotData['nomedafesta'] as String?;
    _datadacompra = snapshotData['datadacompra'] as DateTime?;
    _usersREF = snapshotData['usersREF'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('compra_AUMENTAR-ALCANCE-1dia');

  static Stream<CompraAUMENTARALCANCE1diaRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => CompraAUMENTARALCANCE1diaRecord.fromSnapshot(s));

  static Future<CompraAUMENTARALCANCE1diaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CompraAUMENTARALCANCE1diaRecord.fromSnapshot(s));

  static CompraAUMENTARALCANCE1diaRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      CompraAUMENTARALCANCE1diaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompraAUMENTARALCANCE1diaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompraAUMENTARALCANCE1diaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompraAUMENTARALCANCE1diaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompraAUMENTARALCANCE1diaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompraAUMENTARALCANCE1diaRecordData({
  String? nomedocomprador,
  String? cpf,
  String? endereco,
  String? numerodetelefone,
  String? email,
  String? nomedafesta,
  DateTime? datadacompra,
  DocumentReference? usersREF,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomedocomprador': nomedocomprador,
      'cpf': cpf,
      'endereco': endereco,
      'numerodetelefone': numerodetelefone,
      'email': email,
      'nomedafesta': nomedafesta,
      'datadacompra': datadacompra,
      'usersREF': usersREF,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompraAUMENTARALCANCE1diaRecordDocumentEquality
    implements Equality<CompraAUMENTARALCANCE1diaRecord> {
  const CompraAUMENTARALCANCE1diaRecordDocumentEquality();

  @override
  bool equals(CompraAUMENTARALCANCE1diaRecord? e1,
      CompraAUMENTARALCANCE1diaRecord? e2) {
    return e1?.nomedocomprador == e2?.nomedocomprador &&
        e1?.cpf == e2?.cpf &&
        e1?.endereco == e2?.endereco &&
        e1?.numerodetelefone == e2?.numerodetelefone &&
        e1?.email == e2?.email &&
        e1?.nomedafesta == e2?.nomedafesta &&
        e1?.datadacompra == e2?.datadacompra &&
        e1?.usersREF == e2?.usersREF;
  }

  @override
  int hash(CompraAUMENTARALCANCE1diaRecord? e) => const ListEquality().hash([
        e?.nomedocomprador,
        e?.cpf,
        e?.endereco,
        e?.numerodetelefone,
        e?.email,
        e?.nomedafesta,
        e?.datadacompra,
        e?.usersREF
      ]);

  @override
  bool isValidKey(Object? o) => o is CompraAUMENTARALCANCE1diaRecord;
}
