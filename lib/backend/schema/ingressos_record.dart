import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IngressosRecord extends FirestoreRecord {
  IngressosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "local" field.
  String? _local;
  String get local => _local ?? '';
  bool hasLocal() => _local != null;

  // "datashow" field.
  String? _datashow;
  String get datashow => _datashow ?? '';
  bool hasDatashow() => _datashow != null;

  // "valordoingresso" field.
  int? _valordoingresso;
  int get valordoingresso => _valordoingresso ?? 0;
  bool hasValordoingresso() => _valordoingresso != null;

  // "nomedoingresso" field.
  String? _nomedoingresso;
  String get nomedoingresso => _nomedoingresso ?? '';
  bool hasNomedoingresso() => _nomedoingresso != null;

  // "nomedafesta" field.
  String? _nomedafesta;
  String get nomedafesta => _nomedafesta ?? '';
  bool hasNomedafesta() => _nomedafesta != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "melhoraroferta" field.
  bool? _melhoraroferta;
  bool get melhoraroferta => _melhoraroferta ?? false;
  bool hasMelhoraroferta() => _melhoraroferta != null;

  // "melhoraralcance1dia" field.
  bool? _melhoraralcance1dia;
  bool get melhoraralcance1dia => _melhoraralcance1dia ?? false;
  bool hasMelhoraralcance1dia() => _melhoraralcance1dia != null;

  // "melhoraralcance5dias" field.
  bool? _melhoraralcance5dias;
  bool get melhoraralcance5dias => _melhoraralcance5dias ?? false;
  bool hasMelhoraralcance5dias() => _melhoraralcance5dias != null;

  // "melhoraralcance15dias" field.
  bool? _melhoraralcance15dias;
  bool get melhoraralcance15dias => _melhoraralcance15dias ?? false;
  bool hasMelhoraralcance15dias() => _melhoraralcance15dias != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "plataforma_oficial" field.
  String? _plataformaOficial;
  String get plataformaOficial => _plataformaOficial ?? '';
  bool hasPlataformaOficial() => _plataformaOficial != null;

  // "valordoingresso_original" field.
  String? _valordoingressoOriginal;
  String get valordoingressoOriginal => _valordoingressoOriginal ?? '';
  bool hasValordoingressoOriginal() => _valordoingressoOriginal != null;

  // "disponivel" field.
  bool? _disponivel;
  bool get disponivel => _disponivel ?? false;
  bool hasDisponivel() => _disponivel != null;

  // "datadavenda" field.
  DateTime? _datadavenda;
  DateTime? get datadavenda => _datadavenda;
  bool hasDatadavenda() => _datadavenda != null;

  // "datacompraalcance" field.
  DateTime? _datacompraalcance;
  DateTime? get datacompraalcance => _datacompraalcance;
  bool hasDatacompraalcance() => _datacompraalcance != null;

  // "tema_festa" field.
  bool? _temaFesta;
  bool get temaFesta => _temaFesta ?? false;
  bool hasTemaFesta() => _temaFesta != null;

  // "tema_show" field.
  bool? _temaShow;
  bool get temaShow => _temaShow ?? false;
  bool hasTemaShow() => _temaShow != null;

  // "tema_esportes" field.
  bool? _temaEsportes;
  bool get temaEsportes => _temaEsportes ?? false;
  bool hasTemaEsportes() => _temaEsportes != null;

  // "tema_teatroEconsertos" field.
  bool? _temaTeatroEconsertos;
  bool get temaTeatroEconsertos => _temaTeatroEconsertos ?? false;
  bool hasTemaTeatroEconsertos() => _temaTeatroEconsertos != null;

  // "cidade_BeloHorizonte" field.
  bool? _cidadeBeloHorizonte;
  bool get cidadeBeloHorizonte => _cidadeBeloHorizonte ?? false;
  bool hasCidadeBeloHorizonte() => _cidadeBeloHorizonte != null;

  // "cidade_SaoPaulo" field.
  bool? _cidadeSaoPaulo;
  bool get cidadeSaoPaulo => _cidadeSaoPaulo ?? false;
  bool hasCidadeSaoPaulo() => _cidadeSaoPaulo != null;

  // "cidade_RiodeJaneiro" field.
  bool? _cidadeRiodeJaneiro;
  bool get cidadeRiodeJaneiro => _cidadeRiodeJaneiro ?? false;
  bool hasCidadeRiodeJaneiro() => _cidadeRiodeJaneiro != null;

  // "cidade_Vitoria" field.
  bool? _cidadeVitoria;
  bool get cidadeVitoria => _cidadeVitoria ?? false;
  bool hasCidadeVitoria() => _cidadeVitoria != null;

  // "cidade_Curitiba" field.
  bool? _cidadeCuritiba;
  bool get cidadeCuritiba => _cidadeCuritiba ?? false;
  bool hasCidadeCuritiba() => _cidadeCuritiba != null;

  // "cidade_Balneario" field.
  bool? _cidadeBalneario;
  bool get cidadeBalneario => _cidadeBalneario ?? false;
  bool hasCidadeBalneario() => _cidadeBalneario != null;

  // "cidade_Outros" field.
  bool? _cidadeOutros;
  bool get cidadeOutros => _cidadeOutros ?? false;
  bool hasCidadeOutros() => _cidadeOutros != null;

  // "data_adicaonoapp" field.
  DateTime? _dataAdicaonoapp;
  DateTime? get dataAdicaonoapp => _dataAdicaonoapp;
  bool hasDataAdicaonoapp() => _dataAdicaonoapp != null;

  // "telefonevendedor" field.
  String? _telefonevendedor;
  String get telefonevendedor => _telefonevendedor ?? '';
  bool hasTelefonevendedor() => _telefonevendedor != null;

  // "cidade_Fortaleza" field.
  bool? _cidadeFortaleza;
  bool get cidadeFortaleza => _cidadeFortaleza ?? false;
  bool hasCidadeFortaleza() => _cidadeFortaleza != null;

  // "cidade_Brasilia" field.
  bool? _cidadeBrasilia;
  bool get cidadeBrasilia => _cidadeBrasilia ?? false;
  bool hasCidadeBrasilia() => _cidadeBrasilia != null;

  // "cidade_Recife" field.
  bool? _cidadeRecife;
  bool get cidadeRecife => _cidadeRecife ?? false;
  bool hasCidadeRecife() => _cidadeRecife != null;

  // "cidade_Florianopolis" field.
  bool? _cidadeFlorianopolis;
  bool get cidadeFlorianopolis => _cidadeFlorianopolis ?? false;
  bool hasCidadeFlorianopolis() => _cidadeFlorianopolis != null;

  // "local1_MINEIRAO" field.
  bool? _local1MINEIRAO;
  bool get local1MINEIRAO => _local1MINEIRAO ?? false;
  bool hasLocal1MINEIRAO() => _local1MINEIRAO != null;

  // "local2_CHALEZINHO" field.
  bool? _local2CHALEZINHO;
  bool get local2CHALEZINHO => _local2CHALEZINHO ?? false;
  bool hasLocal2CHALEZINHO() => _local2CHALEZINHO != null;

  // "local3_CLUB415" field.
  bool? _local3CLUB415;
  bool get local3CLUB415 => _local3CLUB415 ?? false;
  bool hasLocal3CLUB415() => _local3CLUB415 != null;

  // "local4_NASALA" field.
  bool? _local4NASALA;
  bool get local4NASALA => _local4NASALA ?? false;
  bool hasLocal4NASALA() => _local4NASALA != null;

  // "local5_PALACIOdasARTES" field.
  bool? _local5PALACIOdasARTES;
  bool get local5PALACIOdasARTES => _local5PALACIOdasARTES ?? false;
  bool hasLocal5PALACIOdasARTES() => _local5PALACIOdasARTES != null;

  // "totaldelances" field.
  int? _totaldelances;
  int get totaldelances => _totaldelances ?? 0;
  bool hasTotaldelances() => _totaldelances != null;

  // "datadoshow" field.
  DateTime? _datadoshow;
  DateTime? get datadoshow => _datadoshow;
  bool hasDatadoshow() => _datadoshow != null;

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  // "like_by_" field.
  List<DocumentReference>? _likeBy;
  List<DocumentReference> get likeBy => _likeBy ?? const [];
  bool hasLikeBy() => _likeBy != null;

  // "image1" field.
  String? _image1;
  String get image1 => _image1 ?? '';
  bool hasImage1() => _image1 != null;

  // "image2" field.
  String? _image2;
  String get image2 => _image2 ?? '';
  bool hasImage2() => _image2 != null;

  // "image3" field.
  String? _image3;
  String get image3 => _image3 ?? '';
  bool hasImage3() => _image3 != null;

  void _initializeFields() {
    _cpf = snapshotData['cpf'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _local = snapshotData['local'] as String?;
    _datashow = snapshotData['datashow'] as String?;
    _valordoingresso = castToType<int>(snapshotData['valordoingresso']);
    _nomedoingresso = snapshotData['nomedoingresso'] as String?;
    _nomedafesta = snapshotData['nomedafesta'] as String?;
    _email = snapshotData['email'] as String?;
    _melhoraroferta = snapshotData['melhoraroferta'] as bool?;
    _melhoraralcance1dia = snapshotData['melhoraralcance1dia'] as bool?;
    _melhoraralcance5dias = snapshotData['melhoraralcance5dias'] as bool?;
    _melhoraralcance15dias = snapshotData['melhoraralcance15dias'] as bool?;
    _image = snapshotData['image'] as String?;
    _plataformaOficial = snapshotData['plataforma_oficial'] as String?;
    _valordoingressoOriginal =
        snapshotData['valordoingresso_original'] as String?;
    _disponivel = snapshotData['disponivel'] as bool?;
    _datadavenda = snapshotData['datadavenda'] as DateTime?;
    _datacompraalcance = snapshotData['datacompraalcance'] as DateTime?;
    _temaFesta = snapshotData['tema_festa'] as bool?;
    _temaShow = snapshotData['tema_show'] as bool?;
    _temaEsportes = snapshotData['tema_esportes'] as bool?;
    _temaTeatroEconsertos = snapshotData['tema_teatroEconsertos'] as bool?;
    _cidadeBeloHorizonte = snapshotData['cidade_BeloHorizonte'] as bool?;
    _cidadeSaoPaulo = snapshotData['cidade_SaoPaulo'] as bool?;
    _cidadeRiodeJaneiro = snapshotData['cidade_RiodeJaneiro'] as bool?;
    _cidadeVitoria = snapshotData['cidade_Vitoria'] as bool?;
    _cidadeCuritiba = snapshotData['cidade_Curitiba'] as bool?;
    _cidadeBalneario = snapshotData['cidade_Balneario'] as bool?;
    _cidadeOutros = snapshotData['cidade_Outros'] as bool?;
    _dataAdicaonoapp = snapshotData['data_adicaonoapp'] as DateTime?;
    _telefonevendedor = snapshotData['telefonevendedor'] as String?;
    _cidadeFortaleza = snapshotData['cidade_Fortaleza'] as bool?;
    _cidadeBrasilia = snapshotData['cidade_Brasilia'] as bool?;
    _cidadeRecife = snapshotData['cidade_Recife'] as bool?;
    _cidadeFlorianopolis = snapshotData['cidade_Florianopolis'] as bool?;
    _local1MINEIRAO = snapshotData['local1_MINEIRAO'] as bool?;
    _local2CHALEZINHO = snapshotData['local2_CHALEZINHO'] as bool?;
    _local3CLUB415 = snapshotData['local3_CLUB415'] as bool?;
    _local4NASALA = snapshotData['local4_NASALA'] as bool?;
    _local5PALACIOdasARTES = snapshotData['local5_PALACIOdasARTES'] as bool?;
    _totaldelances = castToType<int>(snapshotData['totaldelances']);
    _datadoshow = snapshotData['datadoshow'] as DateTime?;
    _users = snapshotData['users'] as DocumentReference?;
    _likeBy = getDataList(snapshotData['like_by_']);
    _image1 = snapshotData['image1'] as String?;
    _image2 = snapshotData['image2'] as String?;
    _image3 = snapshotData['image3'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ingressos');

  static Stream<IngressosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IngressosRecord.fromSnapshot(s));

  static Future<IngressosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IngressosRecord.fromSnapshot(s));

  static IngressosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IngressosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IngressosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IngressosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IngressosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IngressosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIngressosRecordData({
  String? cpf,
  String? descricao,
  String? local,
  String? datashow,
  int? valordoingresso,
  String? nomedoingresso,
  String? nomedafesta,
  String? email,
  bool? melhoraroferta,
  bool? melhoraralcance1dia,
  bool? melhoraralcance5dias,
  bool? melhoraralcance15dias,
  String? image,
  String? plataformaOficial,
  String? valordoingressoOriginal,
  bool? disponivel,
  DateTime? datadavenda,
  DateTime? datacompraalcance,
  bool? temaFesta,
  bool? temaShow,
  bool? temaEsportes,
  bool? temaTeatroEconsertos,
  bool? cidadeBeloHorizonte,
  bool? cidadeSaoPaulo,
  bool? cidadeRiodeJaneiro,
  bool? cidadeVitoria,
  bool? cidadeCuritiba,
  bool? cidadeBalneario,
  bool? cidadeOutros,
  DateTime? dataAdicaonoapp,
  String? telefonevendedor,
  bool? cidadeFortaleza,
  bool? cidadeBrasilia,
  bool? cidadeRecife,
  bool? cidadeFlorianopolis,
  bool? local1MINEIRAO,
  bool? local2CHALEZINHO,
  bool? local3CLUB415,
  bool? local4NASALA,
  bool? local5PALACIOdasARTES,
  int? totaldelances,
  DateTime? datadoshow,
  DocumentReference? users,
  String? image1,
  String? image2,
  String? image3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cpf': cpf,
      'descricao': descricao,
      'local': local,
      'datashow': datashow,
      'valordoingresso': valordoingresso,
      'nomedoingresso': nomedoingresso,
      'nomedafesta': nomedafesta,
      'email': email,
      'melhoraroferta': melhoraroferta,
      'melhoraralcance1dia': melhoraralcance1dia,
      'melhoraralcance5dias': melhoraralcance5dias,
      'melhoraralcance15dias': melhoraralcance15dias,
      'image': image,
      'plataforma_oficial': plataformaOficial,
      'valordoingresso_original': valordoingressoOriginal,
      'disponivel': disponivel,
      'datadavenda': datadavenda,
      'datacompraalcance': datacompraalcance,
      'tema_festa': temaFesta,
      'tema_show': temaShow,
      'tema_esportes': temaEsportes,
      'tema_teatroEconsertos': temaTeatroEconsertos,
      'cidade_BeloHorizonte': cidadeBeloHorizonte,
      'cidade_SaoPaulo': cidadeSaoPaulo,
      'cidade_RiodeJaneiro': cidadeRiodeJaneiro,
      'cidade_Vitoria': cidadeVitoria,
      'cidade_Curitiba': cidadeCuritiba,
      'cidade_Balneario': cidadeBalneario,
      'cidade_Outros': cidadeOutros,
      'data_adicaonoapp': dataAdicaonoapp,
      'telefonevendedor': telefonevendedor,
      'cidade_Fortaleza': cidadeFortaleza,
      'cidade_Brasilia': cidadeBrasilia,
      'cidade_Recife': cidadeRecife,
      'cidade_Florianopolis': cidadeFlorianopolis,
      'local1_MINEIRAO': local1MINEIRAO,
      'local2_CHALEZINHO': local2CHALEZINHO,
      'local3_CLUB415': local3CLUB415,
      'local4_NASALA': local4NASALA,
      'local5_PALACIOdasARTES': local5PALACIOdasARTES,
      'totaldelances': totaldelances,
      'datadoshow': datadoshow,
      'users': users,
      'image1': image1,
      'image2': image2,
      'image3': image3,
    }.withoutNulls,
  );

  return firestoreData;
}

class IngressosRecordDocumentEquality implements Equality<IngressosRecord> {
  const IngressosRecordDocumentEquality();

  @override
  bool equals(IngressosRecord? e1, IngressosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.cpf == e2?.cpf &&
        e1?.descricao == e2?.descricao &&
        e1?.local == e2?.local &&
        e1?.datashow == e2?.datashow &&
        e1?.valordoingresso == e2?.valordoingresso &&
        e1?.nomedoingresso == e2?.nomedoingresso &&
        e1?.nomedafesta == e2?.nomedafesta &&
        e1?.email == e2?.email &&
        e1?.melhoraroferta == e2?.melhoraroferta &&
        e1?.melhoraralcance1dia == e2?.melhoraralcance1dia &&
        e1?.melhoraralcance5dias == e2?.melhoraralcance5dias &&
        e1?.melhoraralcance15dias == e2?.melhoraralcance15dias &&
        e1?.image == e2?.image &&
        e1?.plataformaOficial == e2?.plataformaOficial &&
        e1?.valordoingressoOriginal == e2?.valordoingressoOriginal &&
        e1?.disponivel == e2?.disponivel &&
        e1?.datadavenda == e2?.datadavenda &&
        e1?.datacompraalcance == e2?.datacompraalcance &&
        e1?.temaFesta == e2?.temaFesta &&
        e1?.temaShow == e2?.temaShow &&
        e1?.temaEsportes == e2?.temaEsportes &&
        e1?.temaTeatroEconsertos == e2?.temaTeatroEconsertos &&
        e1?.cidadeBeloHorizonte == e2?.cidadeBeloHorizonte &&
        e1?.cidadeSaoPaulo == e2?.cidadeSaoPaulo &&
        e1?.cidadeRiodeJaneiro == e2?.cidadeRiodeJaneiro &&
        e1?.cidadeVitoria == e2?.cidadeVitoria &&
        e1?.cidadeCuritiba == e2?.cidadeCuritiba &&
        e1?.cidadeBalneario == e2?.cidadeBalneario &&
        e1?.cidadeOutros == e2?.cidadeOutros &&
        e1?.dataAdicaonoapp == e2?.dataAdicaonoapp &&
        e1?.telefonevendedor == e2?.telefonevendedor &&
        e1?.cidadeFortaleza == e2?.cidadeFortaleza &&
        e1?.cidadeBrasilia == e2?.cidadeBrasilia &&
        e1?.cidadeRecife == e2?.cidadeRecife &&
        e1?.cidadeFlorianopolis == e2?.cidadeFlorianopolis &&
        e1?.local1MINEIRAO == e2?.local1MINEIRAO &&
        e1?.local2CHALEZINHO == e2?.local2CHALEZINHO &&
        e1?.local3CLUB415 == e2?.local3CLUB415 &&
        e1?.local4NASALA == e2?.local4NASALA &&
        e1?.local5PALACIOdasARTES == e2?.local5PALACIOdasARTES &&
        e1?.totaldelances == e2?.totaldelances &&
        e1?.datadoshow == e2?.datadoshow &&
        e1?.users == e2?.users &&
        listEquality.equals(e1?.likeBy, e2?.likeBy) &&
        e1?.image1 == e2?.image1 &&
        e1?.image2 == e2?.image2 &&
        e1?.image3 == e2?.image3;
  }

  @override
  int hash(IngressosRecord? e) => const ListEquality().hash([
        e?.cpf,
        e?.descricao,
        e?.local,
        e?.datashow,
        e?.valordoingresso,
        e?.nomedoingresso,
        e?.nomedafesta,
        e?.email,
        e?.melhoraroferta,
        e?.melhoraralcance1dia,
        e?.melhoraralcance5dias,
        e?.melhoraralcance15dias,
        e?.image,
        e?.plataformaOficial,
        e?.valordoingressoOriginal,
        e?.disponivel,
        e?.datadavenda,
        e?.datacompraalcance,
        e?.temaFesta,
        e?.temaShow,
        e?.temaEsportes,
        e?.temaTeatroEconsertos,
        e?.cidadeBeloHorizonte,
        e?.cidadeSaoPaulo,
        e?.cidadeRiodeJaneiro,
        e?.cidadeVitoria,
        e?.cidadeCuritiba,
        e?.cidadeBalneario,
        e?.cidadeOutros,
        e?.dataAdicaonoapp,
        e?.telefonevendedor,
        e?.cidadeFortaleza,
        e?.cidadeBrasilia,
        e?.cidadeRecife,
        e?.cidadeFlorianopolis,
        e?.local1MINEIRAO,
        e?.local2CHALEZINHO,
        e?.local3CLUB415,
        e?.local4NASALA,
        e?.local5PALACIOdasARTES,
        e?.totaldelances,
        e?.datadoshow,
        e?.users,
        e?.likeBy,
        e?.image1,
        e?.image2,
        e?.image3
      ]);

  @override
  bool isValidKey(Object? o) => o is IngressosRecord;
}
