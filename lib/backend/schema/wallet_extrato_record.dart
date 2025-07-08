import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WalletExtratoRecord extends FirestoreRecord {
  WalletExtratoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tipo_de_transacao" field.
  String? _tipoDeTransacao;
  String get tipoDeTransacao => _tipoDeTransacao ?? '';
  bool hasTipoDeTransacao() => _tipoDeTransacao != null;

  // "data_da_transacao" field.
  DateTime? _dataDaTransacao;
  DateTime? get dataDaTransacao => _dataDaTransacao;
  bool hasDataDaTransacao() => _dataDaTransacao != null;

  // "valor_da_transacao" field.
  int? _valorDaTransacao;
  int get valorDaTransacao => _valorDaTransacao ?? 0;
  bool hasValorDaTransacao() => _valorDaTransacao != null;

  // "vendido_para" field.
  String? _vendidoPara;
  String get vendidoPara => _vendidoPara ?? '';
  bool hasVendidoPara() => _vendidoPara != null;

  // "comprado_de" field.
  String? _compradoDe;
  String get compradoDe => _compradoDe ?? '';
  bool hasCompradoDe() => _compradoDe != null;

  // "primeira_venda" field.
  bool? _primeiraVenda;
  bool get primeiraVenda => _primeiraVenda ?? false;
  bool hasPrimeiraVenda() => _primeiraVenda != null;

  // "icone_vermelho" field.
  bool? _iconeVermelho;
  bool get iconeVermelho => _iconeVermelho ?? false;
  bool hasIconeVermelho() => _iconeVermelho != null;

  // "icone_verde" field.
  bool? _iconeVerde;
  bool get iconeVerde => _iconeVerde ?? false;
  bool hasIconeVerde() => _iconeVerde != null;

  // "nomedafesta" field.
  String? _nomedafesta;
  String get nomedafesta => _nomedafesta ?? '';
  bool hasNomedafesta() => _nomedafesta != null;

  // "add_saldo" field.
  bool? _addSaldo;
  bool get addSaldo => _addSaldo ?? false;
  bool hasAddSaldo() => _addSaldo != null;

  // "retirar_saldo" field.
  bool? _retirarSaldo;
  bool get retirarSaldo => _retirarSaldo ?? false;
  bool hasRetirarSaldo() => _retirarSaldo != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _tipoDeTransacao = snapshotData['tipo_de_transacao'] as String?;
    _dataDaTransacao = snapshotData['data_da_transacao'] as DateTime?;
    _valorDaTransacao = castToType<int>(snapshotData['valor_da_transacao']);
    _vendidoPara = snapshotData['vendido_para'] as String?;
    _compradoDe = snapshotData['comprado_de'] as String?;
    _primeiraVenda = snapshotData['primeira_venda'] as bool?;
    _iconeVermelho = snapshotData['icone_vermelho'] as bool?;
    _iconeVerde = snapshotData['icone_verde'] as bool?;
    _nomedafesta = snapshotData['nomedafesta'] as String?;
    _addSaldo = snapshotData['add_saldo'] as bool?;
    _retirarSaldo = snapshotData['retirar_saldo'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('wallet_extrato')
          : FirebaseFirestore.instance.collectionGroup('wallet_extrato');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('wallet_extrato').doc(id);

  static Stream<WalletExtratoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WalletExtratoRecord.fromSnapshot(s));

  static Future<WalletExtratoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WalletExtratoRecord.fromSnapshot(s));

  static WalletExtratoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WalletExtratoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WalletExtratoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WalletExtratoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WalletExtratoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WalletExtratoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWalletExtratoRecordData({
  String? tipoDeTransacao,
  DateTime? dataDaTransacao,
  int? valorDaTransacao,
  String? vendidoPara,
  String? compradoDe,
  bool? primeiraVenda,
  bool? iconeVermelho,
  bool? iconeVerde,
  String? nomedafesta,
  bool? addSaldo,
  bool? retirarSaldo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tipo_de_transacao': tipoDeTransacao,
      'data_da_transacao': dataDaTransacao,
      'valor_da_transacao': valorDaTransacao,
      'vendido_para': vendidoPara,
      'comprado_de': compradoDe,
      'primeira_venda': primeiraVenda,
      'icone_vermelho': iconeVermelho,
      'icone_verde': iconeVerde,
      'nomedafesta': nomedafesta,
      'add_saldo': addSaldo,
      'retirar_saldo': retirarSaldo,
    }.withoutNulls,
  );

  return firestoreData;
}

class WalletExtratoRecordDocumentEquality
    implements Equality<WalletExtratoRecord> {
  const WalletExtratoRecordDocumentEquality();

  @override
  bool equals(WalletExtratoRecord? e1, WalletExtratoRecord? e2) {
    return e1?.tipoDeTransacao == e2?.tipoDeTransacao &&
        e1?.dataDaTransacao == e2?.dataDaTransacao &&
        e1?.valorDaTransacao == e2?.valorDaTransacao &&
        e1?.vendidoPara == e2?.vendidoPara &&
        e1?.compradoDe == e2?.compradoDe &&
        e1?.primeiraVenda == e2?.primeiraVenda &&
        e1?.iconeVermelho == e2?.iconeVermelho &&
        e1?.iconeVerde == e2?.iconeVerde &&
        e1?.nomedafesta == e2?.nomedafesta &&
        e1?.addSaldo == e2?.addSaldo &&
        e1?.retirarSaldo == e2?.retirarSaldo;
  }

  @override
  int hash(WalletExtratoRecord? e) => const ListEquality().hash([
        e?.tipoDeTransacao,
        e?.dataDaTransacao,
        e?.valorDaTransacao,
        e?.vendidoPara,
        e?.compradoDe,
        e?.primeiraVenda,
        e?.iconeVermelho,
        e?.iconeVerde,
        e?.nomedafesta,
        e?.addSaldo,
        e?.retirarSaldo
      ]);

  @override
  bool isValidKey(Object? o) => o is WalletExtratoRecord;
}
