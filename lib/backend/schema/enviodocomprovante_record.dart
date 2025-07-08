import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EnviodocomprovanteRecord extends FirestoreRecord {
  EnviodocomprovanteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "comprovante" field.
  String? _comprovante;
  String get comprovante => _comprovante ?? '';
  bool hasComprovante() => _comprovante != null;

  // "nomedafestacomprado" field.
  String? _nomedafestacomprado;
  String get nomedafestacomprado => _nomedafestacomprado ?? '';
  bool hasNomedafestacomprado() => _nomedafestacomprado != null;

  // "plataforma_oficial" field.
  String? _plataformaOficial;
  String get plataformaOficial => _plataformaOficial ?? '';
  bool hasPlataformaOficial() => _plataformaOficial != null;

  // "nomedovendedor" field.
  String? _nomedovendedor;
  String get nomedovendedor => _nomedovendedor ?? '';
  bool hasNomedovendedor() => _nomedovendedor != null;

  // "emaildovendedor" field.
  String? _emaildovendedor;
  String get emaildovendedor => _emaildovendedor ?? '';
  bool hasEmaildovendedor() => _emaildovendedor != null;

  // "nomedocomprador" field.
  String? _nomedocomprador;
  String get nomedocomprador => _nomedocomprador ?? '';
  bool hasNomedocomprador() => _nomedocomprador != null;

  // "emailcomprador" field.
  String? _emailcomprador;
  String get emailcomprador => _emailcomprador ?? '';
  bool hasEmailcomprador() => _emailcomprador != null;

  // "recebimeuingresso" field.
  bool? _recebimeuingresso;
  bool get recebimeuingresso => _recebimeuingresso ?? false;
  bool hasRecebimeuingresso() => _recebimeuingresso != null;

  // "envieioingresso" field.
  bool? _envieioingresso;
  bool get envieioingresso => _envieioingresso ?? false;
  bool hasEnvieioingresso() => _envieioingresso != null;

  // "valor_a_receber" field.
  int? _valorAReceber;
  int get valorAReceber => _valorAReceber ?? 0;
  bool hasValorAReceber() => _valorAReceber != null;

  // "ref_comprador" field.
  DocumentReference? _refComprador;
  DocumentReference? get refComprador => _refComprador;
  bool hasRefComprador() => _refComprador != null;

  // "ref_vendedor" field.
  DocumentReference? _refVendedor;
  DocumentReference? get refVendedor => _refVendedor;
  bool hasRefVendedor() => _refVendedor != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _comprovante = snapshotData['comprovante'] as String?;
    _nomedafestacomprado = snapshotData['nomedafestacomprado'] as String?;
    _plataformaOficial = snapshotData['plataforma_oficial'] as String?;
    _nomedovendedor = snapshotData['nomedovendedor'] as String?;
    _emaildovendedor = snapshotData['emaildovendedor'] as String?;
    _nomedocomprador = snapshotData['nomedocomprador'] as String?;
    _emailcomprador = snapshotData['emailcomprador'] as String?;
    _recebimeuingresso = snapshotData['recebimeuingresso'] as bool?;
    _envieioingresso = snapshotData['envieioingresso'] as bool?;
    _valorAReceber = castToType<int>(snapshotData['valor_a_receber']);
    _refComprador = snapshotData['ref_comprador'] as DocumentReference?;
    _refVendedor = snapshotData['ref_vendedor'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('enviodocomprovante')
          : FirebaseFirestore.instance.collectionGroup('enviodocomprovante');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('enviodocomprovante').doc(id);

  static Stream<EnviodocomprovanteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EnviodocomprovanteRecord.fromSnapshot(s));

  static Future<EnviodocomprovanteRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => EnviodocomprovanteRecord.fromSnapshot(s));

  static EnviodocomprovanteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EnviodocomprovanteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EnviodocomprovanteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EnviodocomprovanteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EnviodocomprovanteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EnviodocomprovanteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEnviodocomprovanteRecordData({
  String? comprovante,
  String? nomedafestacomprado,
  String? plataformaOficial,
  String? nomedovendedor,
  String? emaildovendedor,
  String? nomedocomprador,
  String? emailcomprador,
  bool? recebimeuingresso,
  bool? envieioingresso,
  int? valorAReceber,
  DocumentReference? refComprador,
  DocumentReference? refVendedor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'comprovante': comprovante,
      'nomedafestacomprado': nomedafestacomprado,
      'plataforma_oficial': plataformaOficial,
      'nomedovendedor': nomedovendedor,
      'emaildovendedor': emaildovendedor,
      'nomedocomprador': nomedocomprador,
      'emailcomprador': emailcomprador,
      'recebimeuingresso': recebimeuingresso,
      'envieioingresso': envieioingresso,
      'valor_a_receber': valorAReceber,
      'ref_comprador': refComprador,
      'ref_vendedor': refVendedor,
    }.withoutNulls,
  );

  return firestoreData;
}

class EnviodocomprovanteRecordDocumentEquality
    implements Equality<EnviodocomprovanteRecord> {
  const EnviodocomprovanteRecordDocumentEquality();

  @override
  bool equals(EnviodocomprovanteRecord? e1, EnviodocomprovanteRecord? e2) {
    return e1?.comprovante == e2?.comprovante &&
        e1?.nomedafestacomprado == e2?.nomedafestacomprado &&
        e1?.plataformaOficial == e2?.plataformaOficial &&
        e1?.nomedovendedor == e2?.nomedovendedor &&
        e1?.emaildovendedor == e2?.emaildovendedor &&
        e1?.nomedocomprador == e2?.nomedocomprador &&
        e1?.emailcomprador == e2?.emailcomprador &&
        e1?.recebimeuingresso == e2?.recebimeuingresso &&
        e1?.envieioingresso == e2?.envieioingresso &&
        e1?.valorAReceber == e2?.valorAReceber &&
        e1?.refComprador == e2?.refComprador &&
        e1?.refVendedor == e2?.refVendedor;
  }

  @override
  int hash(EnviodocomprovanteRecord? e) => const ListEquality().hash([
        e?.comprovante,
        e?.nomedafestacomprado,
        e?.plataformaOficial,
        e?.nomedovendedor,
        e?.emaildovendedor,
        e?.nomedocomprador,
        e?.emailcomprador,
        e?.recebimeuingresso,
        e?.envieioingresso,
        e?.valorAReceber,
        e?.refComprador,
        e?.refVendedor
      ]);

  @override
  bool isValidKey(Object? o) => o is EnviodocomprovanteRecord;
}
