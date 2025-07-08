import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MensagensSuporteRecord extends FirestoreRecord {
  MensagensSuporteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomedousuario" field.
  String? _nomedousuario;
  String get nomedousuario => _nomedousuario ?? '';
  bool hasNomedousuario() => _nomedousuario != null;

  // "datadoenvio" field.
  DateTime? _datadoenvio;
  DateTime? get datadoenvio => _datadoenvio;
  bool hasDatadoenvio() => _datadoenvio != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "relato" field.
  String? _relato;
  String get relato => _relato ?? '';
  bool hasRelato() => _relato != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  // "usersREF" field.
  DocumentReference? _usersREF;
  DocumentReference? get usersREF => _usersREF;
  bool hasUsersREF() => _usersREF != null;

  void _initializeFields() {
    _nomedousuario = snapshotData['nomedousuario'] as String?;
    _datadoenvio = snapshotData['datadoenvio'] as DateTime?;
    _image = snapshotData['image'] as String?;
    _relato = snapshotData['relato'] as String?;
    _email = snapshotData['email'] as String?;
    _telefone = snapshotData['telefone'] as String?;
    _usersREF = snapshotData['usersREF'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mensagens_suporte');

  static Stream<MensagensSuporteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MensagensSuporteRecord.fromSnapshot(s));

  static Future<MensagensSuporteRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => MensagensSuporteRecord.fromSnapshot(s));

  static MensagensSuporteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MensagensSuporteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MensagensSuporteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MensagensSuporteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MensagensSuporteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MensagensSuporteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMensagensSuporteRecordData({
  String? nomedousuario,
  DateTime? datadoenvio,
  String? image,
  String? relato,
  String? email,
  String? telefone,
  DocumentReference? usersREF,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomedousuario': nomedousuario,
      'datadoenvio': datadoenvio,
      'image': image,
      'relato': relato,
      'email': email,
      'telefone': telefone,
      'usersREF': usersREF,
    }.withoutNulls,
  );

  return firestoreData;
}

class MensagensSuporteRecordDocumentEquality
    implements Equality<MensagensSuporteRecord> {
  const MensagensSuporteRecordDocumentEquality();

  @override
  bool equals(MensagensSuporteRecord? e1, MensagensSuporteRecord? e2) {
    return e1?.nomedousuario == e2?.nomedousuario &&
        e1?.datadoenvio == e2?.datadoenvio &&
        e1?.image == e2?.image &&
        e1?.relato == e2?.relato &&
        e1?.email == e2?.email &&
        e1?.telefone == e2?.telefone &&
        e1?.usersREF == e2?.usersREF;
  }

  @override
  int hash(MensagensSuporteRecord? e) => const ListEquality().hash([
        e?.nomedousuario,
        e?.datadoenvio,
        e?.image,
        e?.relato,
        e?.email,
        e?.telefone,
        e?.usersREF
      ]);

  @override
  bool isValidKey(Object? o) => o is MensagensSuporteRecord;
}
