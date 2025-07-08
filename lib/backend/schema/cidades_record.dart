import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CidadesRecord extends FirestoreRecord {
  CidadesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "nomedacidade" field.
  String? _nomedacidade;
  String get nomedacidade => _nomedacidade ?? '';
  bool hasNomedacidade() => _nomedacidade != null;

  // "ordemdacidade" field.
  int? _ordemdacidade;
  int get ordemdacidade => _ordemdacidade ?? 0;
  bool hasOrdemdacidade() => _ordemdacidade != null;

  // "avaliacao" field.
  List<int>? _avaliacao;
  List<int> get avaliacao => _avaliacao ?? const [];
  bool hasAvaliacao() => _avaliacao != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _nomedacidade = snapshotData['nomedacidade'] as String?;
    _ordemdacidade = castToType<int>(snapshotData['ordemdacidade']);
    _avaliacao = getDataList(snapshotData['avaliacao']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cidades');

  static Stream<CidadesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CidadesRecord.fromSnapshot(s));

  static Future<CidadesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CidadesRecord.fromSnapshot(s));

  static CidadesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CidadesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CidadesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CidadesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CidadesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CidadesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCidadesRecordData({
  String? image,
  String? nomedacidade,
  int? ordemdacidade,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'nomedacidade': nomedacidade,
      'ordemdacidade': ordemdacidade,
    }.withoutNulls,
  );

  return firestoreData;
}

class CidadesRecordDocumentEquality implements Equality<CidadesRecord> {
  const CidadesRecordDocumentEquality();

  @override
  bool equals(CidadesRecord? e1, CidadesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.image == e2?.image &&
        e1?.nomedacidade == e2?.nomedacidade &&
        e1?.ordemdacidade == e2?.ordemdacidade &&
        listEquality.equals(e1?.avaliacao, e2?.avaliacao);
  }

  @override
  int hash(CidadesRecord? e) => const ListEquality()
      .hash([e?.image, e?.nomedacidade, e?.ordemdacidade, e?.avaliacao]);

  @override
  bool isValidKey(Object? o) => o is CidadesRecord;
}
