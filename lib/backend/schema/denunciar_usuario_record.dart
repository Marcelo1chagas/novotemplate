import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DenunciarUsuarioRecord extends FirestoreRecord {
  DenunciarUsuarioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "motivodadenuncia" field.
  String? _motivodadenuncia;
  String get motivodadenuncia => _motivodadenuncia ?? '';
  bool hasMotivodadenuncia() => _motivodadenuncia != null;

  // "nomedousuario" field.
  String? _nomedousuario;
  String get nomedousuario => _nomedousuario ?? '';
  bool hasNomedousuario() => _nomedousuario != null;

  // "descrevaoqueaconteceu" field.
  String? _descrevaoqueaconteceu;
  String get descrevaoqueaconteceu => _descrevaoqueaconteceu ?? '';
  bool hasDescrevaoqueaconteceu() => _descrevaoqueaconteceu != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "nomedousuario_denunciando" field.
  String? _nomedousuarioDenunciando;
  String get nomedousuarioDenunciando => _nomedousuarioDenunciando ?? '';
  bool hasNomedousuarioDenunciando() => _nomedousuarioDenunciando != null;

  // "contato_usuario_quedenunciou" field.
  String? _contatoUsuarioQuedenunciou;
  String get contatoUsuarioQuedenunciou => _contatoUsuarioQuedenunciou ?? '';
  bool hasContatoUsuarioQuedenunciou() => _contatoUsuarioQuedenunciou != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _motivodadenuncia = snapshotData['motivodadenuncia'] as String?;
    _nomedousuario = snapshotData['nomedousuario'] as String?;
    _descrevaoqueaconteceu = snapshotData['descrevaoqueaconteceu'] as String?;
    _data = snapshotData['data'] as DateTime?;
    _nomedousuarioDenunciando =
        snapshotData['nomedousuario_denunciando'] as String?;
    _contatoUsuarioQuedenunciou =
        snapshotData['contato_usuario_quedenunciou'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('denunciar_usuario')
          : FirebaseFirestore.instance.collectionGroup('denunciar_usuario');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('denunciar_usuario').doc(id);

  static Stream<DenunciarUsuarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DenunciarUsuarioRecord.fromSnapshot(s));

  static Future<DenunciarUsuarioRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DenunciarUsuarioRecord.fromSnapshot(s));

  static DenunciarUsuarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DenunciarUsuarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DenunciarUsuarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DenunciarUsuarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DenunciarUsuarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DenunciarUsuarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDenunciarUsuarioRecordData({
  String? motivodadenuncia,
  String? nomedousuario,
  String? descrevaoqueaconteceu,
  DateTime? data,
  String? nomedousuarioDenunciando,
  String? contatoUsuarioQuedenunciou,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'motivodadenuncia': motivodadenuncia,
      'nomedousuario': nomedousuario,
      'descrevaoqueaconteceu': descrevaoqueaconteceu,
      'data': data,
      'nomedousuario_denunciando': nomedousuarioDenunciando,
      'contato_usuario_quedenunciou': contatoUsuarioQuedenunciou,
    }.withoutNulls,
  );

  return firestoreData;
}

class DenunciarUsuarioRecordDocumentEquality
    implements Equality<DenunciarUsuarioRecord> {
  const DenunciarUsuarioRecordDocumentEquality();

  @override
  bool equals(DenunciarUsuarioRecord? e1, DenunciarUsuarioRecord? e2) {
    return e1?.motivodadenuncia == e2?.motivodadenuncia &&
        e1?.nomedousuario == e2?.nomedousuario &&
        e1?.descrevaoqueaconteceu == e2?.descrevaoqueaconteceu &&
        e1?.data == e2?.data &&
        e1?.nomedousuarioDenunciando == e2?.nomedousuarioDenunciando &&
        e1?.contatoUsuarioQuedenunciou == e2?.contatoUsuarioQuedenunciou;
  }

  @override
  int hash(DenunciarUsuarioRecord? e) => const ListEquality().hash([
        e?.motivodadenuncia,
        e?.nomedousuario,
        e?.descrevaoqueaconteceu,
        e?.data,
        e?.nomedousuarioDenunciando,
        e?.contatoUsuarioQuedenunciou
      ]);

  @override
  bool isValidKey(Object? o) => o is DenunciarUsuarioRecord;
}
