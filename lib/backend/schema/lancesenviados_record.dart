import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LancesenviadosRecord extends FirestoreRecord {
  LancesenviadosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomedafesta" field.
  String? _nomedafesta;
  String get nomedafesta => _nomedafesta ?? '';
  bool hasNomedafesta() => _nomedafesta != null;

  // "datadafesta" field.
  String? _datadafesta;
  String get datadafesta => _datadafesta ?? '';
  bool hasDatadafesta() => _datadafesta != null;

  // "datadolance" field.
  DateTime? _datadolance;
  DateTime? get datadolance => _datadolance;
  bool hasDatadolance() => _datadolance != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "valorProposto" field.
  int? _valorProposto;
  int get valorProposto => _valorProposto ?? 0;
  bool hasValorProposto() => _valorProposto != null;

  // "ingressoREF" field.
  DocumentReference? _ingressoREF;
  DocumentReference? get ingressoREF => _ingressoREF;
  bool hasIngressoREF() => _ingressoREF != null;

  // "users_DONOINGRESSO_REF" field.
  DocumentReference? _usersDONOINGRESSOREF;
  DocumentReference? get usersDONOINGRESSOREF => _usersDONOINGRESSOREF;
  bool hasUsersDONOINGRESSOREF() => _usersDONOINGRESSOREF != null;

  // "usersCliente" field.
  DocumentReference? _usersCliente;
  DocumentReference? get usersCliente => _usersCliente;
  bool hasUsersCliente() => _usersCliente != null;

  // "local" field.
  String? _local;
  String get local => _local ?? '';
  bool hasLocal() => _local != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nomedafesta = snapshotData['nomedafesta'] as String?;
    _datadafesta = snapshotData['datadafesta'] as String?;
    _datadolance = snapshotData['datadolance'] as DateTime?;
    _image = snapshotData['image'] as String?;
    _valorProposto = castToType<int>(snapshotData['valorProposto']);
    _ingressoREF = snapshotData['ingressoREF'] as DocumentReference?;
    _usersDONOINGRESSOREF =
        snapshotData['users_DONOINGRESSO_REF'] as DocumentReference?;
    _usersCliente = snapshotData['usersCliente'] as DocumentReference?;
    _local = snapshotData['local'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('lancesenviados')
          : FirebaseFirestore.instance.collectionGroup('lancesenviados');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('lancesenviados').doc(id);

  static Stream<LancesenviadosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LancesenviadosRecord.fromSnapshot(s));

  static Future<LancesenviadosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LancesenviadosRecord.fromSnapshot(s));

  static LancesenviadosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LancesenviadosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LancesenviadosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LancesenviadosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LancesenviadosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LancesenviadosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLancesenviadosRecordData({
  String? nomedafesta,
  String? datadafesta,
  DateTime? datadolance,
  String? image,
  int? valorProposto,
  DocumentReference? ingressoREF,
  DocumentReference? usersDONOINGRESSOREF,
  DocumentReference? usersCliente,
  String? local,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomedafesta': nomedafesta,
      'datadafesta': datadafesta,
      'datadolance': datadolance,
      'image': image,
      'valorProposto': valorProposto,
      'ingressoREF': ingressoREF,
      'users_DONOINGRESSO_REF': usersDONOINGRESSOREF,
      'usersCliente': usersCliente,
      'local': local,
    }.withoutNulls,
  );

  return firestoreData;
}

class LancesenviadosRecordDocumentEquality
    implements Equality<LancesenviadosRecord> {
  const LancesenviadosRecordDocumentEquality();

  @override
  bool equals(LancesenviadosRecord? e1, LancesenviadosRecord? e2) {
    return e1?.nomedafesta == e2?.nomedafesta &&
        e1?.datadafesta == e2?.datadafesta &&
        e1?.datadolance == e2?.datadolance &&
        e1?.image == e2?.image &&
        e1?.valorProposto == e2?.valorProposto &&
        e1?.ingressoREF == e2?.ingressoREF &&
        e1?.usersDONOINGRESSOREF == e2?.usersDONOINGRESSOREF &&
        e1?.usersCliente == e2?.usersCliente &&
        e1?.local == e2?.local;
  }

  @override
  int hash(LancesenviadosRecord? e) => const ListEquality().hash([
        e?.nomedafesta,
        e?.datadafesta,
        e?.datadolance,
        e?.image,
        e?.valorProposto,
        e?.ingressoREF,
        e?.usersDONOINGRESSOREF,
        e?.usersCliente,
        e?.local
      ]);

  @override
  bool isValidKey(Object? o) => o is LancesenviadosRecord;
}
