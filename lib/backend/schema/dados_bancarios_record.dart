import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DadosBancariosRecord extends FirestoreRecord {
  DadosBancariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomedovendedor" field.
  String? _nomedovendedor;
  String get nomedovendedor => _nomedovendedor ?? '';
  bool hasNomedovendedor() => _nomedovendedor != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "numerodetelefone" field.
  String? _numerodetelefone;
  String get numerodetelefone => _numerodetelefone ?? '';
  bool hasNumerodetelefone() => _numerodetelefone != null;

  // "nome_da_conta" field.
  String? _nomeDaConta;
  String get nomeDaConta => _nomeDaConta ?? '';
  bool hasNomeDaConta() => _nomeDaConta != null;

  // "chave_pix" field.
  String? _chavePix;
  String get chavePix => _chavePix ?? '';
  bool hasChavePix() => _chavePix != null;

  // "nome_e_numero_do_banco" field.
  String? _nomeENumeroDoBanco;
  String get nomeENumeroDoBanco => _nomeENumeroDoBanco ?? '';
  bool hasNomeENumeroDoBanco() => _nomeENumeroDoBanco != null;

  // "numero_da_agencia" field.
  String? _numeroDaAgencia;
  String get numeroDaAgencia => _numeroDaAgencia ?? '';
  bool hasNumeroDaAgencia() => _numeroDaAgencia != null;

  // "tipo_de_conta" field.
  String? _tipoDeConta;
  String get tipoDeConta => _tipoDeConta ?? '';
  bool hasTipoDeConta() => _tipoDeConta != null;

  // "numero_da_conta" field.
  String? _numeroDaConta;
  String get numeroDaConta => _numeroDaConta ?? '';
  bool hasNumeroDaConta() => _numeroDaConta != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "enviei_o_ingresso" field.
  bool? _envieiOIngresso;
  bool get envieiOIngresso => _envieiOIngresso ?? false;
  bool hasEnvieiOIngresso() => _envieiOIngresso != null;

  // "valordopagamento" field.
  int? _valordopagamento;
  int get valordopagamento => _valordopagamento ?? 0;
  bool hasValordopagamento() => _valordopagamento != null;

  // "comprovantedeenvio" field.
  String? _comprovantedeenvio;
  String get comprovantedeenvio => _comprovantedeenvio ?? '';
  bool hasComprovantedeenvio() => _comprovantedeenvio != null;

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  // "usersNOTComprovante" field.
  DocumentReference? _usersNOTComprovante;
  DocumentReference? get usersNOTComprovante => _usersNOTComprovante;
  bool hasUsersNOTComprovante() => _usersNOTComprovante != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nomedovendedor = snapshotData['nomedovendedor'] as String?;
    _email = snapshotData['email'] as String?;
    _numerodetelefone = snapshotData['numerodetelefone'] as String?;
    _nomeDaConta = snapshotData['nome_da_conta'] as String?;
    _chavePix = snapshotData['chave_pix'] as String?;
    _nomeENumeroDoBanco = snapshotData['nome_e_numero_do_banco'] as String?;
    _numeroDaAgencia = snapshotData['numero_da_agencia'] as String?;
    _tipoDeConta = snapshotData['tipo_de_conta'] as String?;
    _numeroDaConta = snapshotData['numero_da_conta'] as String?;
    _cpf = snapshotData['cpf'] as String?;
    _envieiOIngresso = snapshotData['enviei_o_ingresso'] as bool?;
    _valordopagamento = castToType<int>(snapshotData['valordopagamento']);
    _comprovantedeenvio = snapshotData['comprovantedeenvio'] as String?;
    _users = snapshotData['users'] as DocumentReference?;
    _usersNOTComprovante =
        snapshotData['usersNOTComprovante'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('dados_bancarios')
          : FirebaseFirestore.instance.collectionGroup('dados_bancarios');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('dados_bancarios').doc(id);

  static Stream<DadosBancariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DadosBancariosRecord.fromSnapshot(s));

  static Future<DadosBancariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DadosBancariosRecord.fromSnapshot(s));

  static DadosBancariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DadosBancariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DadosBancariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DadosBancariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DadosBancariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DadosBancariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDadosBancariosRecordData({
  String? nomedovendedor,
  String? email,
  String? numerodetelefone,
  String? nomeDaConta,
  String? chavePix,
  String? nomeENumeroDoBanco,
  String? numeroDaAgencia,
  String? tipoDeConta,
  String? numeroDaConta,
  String? cpf,
  bool? envieiOIngresso,
  int? valordopagamento,
  String? comprovantedeenvio,
  DocumentReference? users,
  DocumentReference? usersNOTComprovante,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomedovendedor': nomedovendedor,
      'email': email,
      'numerodetelefone': numerodetelefone,
      'nome_da_conta': nomeDaConta,
      'chave_pix': chavePix,
      'nome_e_numero_do_banco': nomeENumeroDoBanco,
      'numero_da_agencia': numeroDaAgencia,
      'tipo_de_conta': tipoDeConta,
      'numero_da_conta': numeroDaConta,
      'cpf': cpf,
      'enviei_o_ingresso': envieiOIngresso,
      'valordopagamento': valordopagamento,
      'comprovantedeenvio': comprovantedeenvio,
      'users': users,
      'usersNOTComprovante': usersNOTComprovante,
    }.withoutNulls,
  );

  return firestoreData;
}

class DadosBancariosRecordDocumentEquality
    implements Equality<DadosBancariosRecord> {
  const DadosBancariosRecordDocumentEquality();

  @override
  bool equals(DadosBancariosRecord? e1, DadosBancariosRecord? e2) {
    return e1?.nomedovendedor == e2?.nomedovendedor &&
        e1?.email == e2?.email &&
        e1?.numerodetelefone == e2?.numerodetelefone &&
        e1?.nomeDaConta == e2?.nomeDaConta &&
        e1?.chavePix == e2?.chavePix &&
        e1?.nomeENumeroDoBanco == e2?.nomeENumeroDoBanco &&
        e1?.numeroDaAgencia == e2?.numeroDaAgencia &&
        e1?.tipoDeConta == e2?.tipoDeConta &&
        e1?.numeroDaConta == e2?.numeroDaConta &&
        e1?.cpf == e2?.cpf &&
        e1?.envieiOIngresso == e2?.envieiOIngresso &&
        e1?.valordopagamento == e2?.valordopagamento &&
        e1?.comprovantedeenvio == e2?.comprovantedeenvio &&
        e1?.users == e2?.users &&
        e1?.usersNOTComprovante == e2?.usersNOTComprovante;
  }

  @override
  int hash(DadosBancariosRecord? e) => const ListEquality().hash([
        e?.nomedovendedor,
        e?.email,
        e?.numerodetelefone,
        e?.nomeDaConta,
        e?.chavePix,
        e?.nomeENumeroDoBanco,
        e?.numeroDaAgencia,
        e?.tipoDeConta,
        e?.numeroDaConta,
        e?.cpf,
        e?.envieiOIngresso,
        e?.valordopagamento,
        e?.comprovantedeenvio,
        e?.users,
        e?.usersNOTComprovante
      ]);

  @override
  bool isValidKey(Object? o) => o is DadosBancariosRecord;
}
