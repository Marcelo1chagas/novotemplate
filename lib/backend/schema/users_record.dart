import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "permitirPUSHNotificacao" field.
  bool? _permitirPUSHNotificacao;
  bool get permitirPUSHNotificacao => _permitirPUSHNotificacao ?? false;
  bool hasPermitirPUSHNotificacao() => _permitirPUSHNotificacao != null;

  // "permitirEMAILnotifcacao" field.
  bool? _permitirEMAILnotifcacao;
  bool get permitirEMAILnotifcacao => _permitirEMAILnotifcacao ?? false;
  bool hasPermitirEMAILnotifcacao() => _permitirEMAILnotifcacao != null;

  // "permitirAPPNotifcacao" field.
  bool? _permitirAPPNotifcacao;
  bool get permitirAPPNotifcacao => _permitirAPPNotifcacao ?? false;
  bool hasPermitirAPPNotifcacao() => _permitirAPPNotifcacao != null;

  // "datadenascimento" field.
  String? _datadenascimento;
  String get datadenascimento => _datadenascimento ?? '';
  bool hasDatadenascimento() => _datadenascimento != null;

  // "CPF" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "jatenhoDADOS_BANCARIOS" field.
  bool? _jatenhoDADOSBANCARIOS;
  bool get jatenhoDADOSBANCARIOS => _jatenhoDADOSBANCARIOS ?? false;
  bool hasJatenhoDADOSBANCARIOS() => _jatenhoDADOSBANCARIOS != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  // "ingressosvendidos" field.
  int? _ingressosvendidos;
  int get ingressosvendidos => _ingressosvendidos ?? 0;
  bool hasIngressosvendidos() => _ingressosvendidos != null;

  // "ingressoscomprados" field.
  int? _ingressoscomprados;
  int get ingressoscomprados => _ingressoscomprados ?? 0;
  bool hasIngressoscomprados() => _ingressoscomprados != null;

  // "likes" field.
  int? _likes;
  int get likes => _likes ?? 0;
  bool hasLikes() => _likes != null;

  // "visibilidade_LIKE_acao" field.
  bool? _visibilidadeLIKEAcao;
  bool get visibilidadeLIKEAcao => _visibilidadeLIKEAcao ?? false;
  bool hasVisibilidadeLIKEAcao() => _visibilidadeLIKEAcao != null;

  // "lastTicketComprado_nome" field.
  String? _lastTicketCompradoNome;
  String get lastTicketCompradoNome => _lastTicketCompradoNome ?? '';
  bool hasLastTicketCompradoNome() => _lastTicketCompradoNome != null;

  // "lastTicketVendido_nome" field.
  String? _lastTicketVendidoNome;
  String get lastTicketVendidoNome => _lastTicketVendidoNome ?? '';
  bool hasLastTicketVendidoNome() => _lastTicketVendidoNome != null;

  // "lastTicketVendido_data" field.
  DateTime? _lastTicketVendidoData;
  DateTime? get lastTicketVendidoData => _lastTicketVendidoData;
  bool hasLastTicketVendidoData() => _lastTicketVendidoData != null;

  // "lastTicketComprado_data" field.
  DateTime? _lastTicketCompradoData;
  DateTime? get lastTicketCompradoData => _lastTicketCompradoData;
  bool hasLastTicketCompradoData() => _lastTicketCompradoData != null;

  // "imagem1_momentos" field.
  String? _imagem1Momentos;
  String get imagem1Momentos => _imagem1Momentos ?? '';
  bool hasImagem1Momentos() => _imagem1Momentos != null;

  // "imagem2_momentos" field.
  String? _imagem2Momentos;
  String get imagem2Momentos => _imagem2Momentos ?? '';
  bool hasImagem2Momentos() => _imagem2Momentos != null;

  // "imagem3_momentos" field.
  String? _imagem3Momentos;
  String get imagem3Momentos => _imagem3Momentos ?? '';
  bool hasImagem3Momentos() => _imagem3Momentos != null;

  // "frente_comprovante_de_identidade" field.
  String? _frenteComprovanteDeIdentidade;
  String get frenteComprovanteDeIdentidade =>
      _frenteComprovanteDeIdentidade ?? '';
  bool hasFrenteComprovanteDeIdentidade() =>
      _frenteComprovanteDeIdentidade != null;

  // "verso_comprovante_identidade" field.
  String? _versoComprovanteIdentidade;
  String get versoComprovanteIdentidade => _versoComprovanteIdentidade ?? '';
  bool hasVersoComprovanteIdentidade() => _versoComprovanteIdentidade != null;

  // "verificado" field.
  bool? _verificado;
  bool get verificado => _verificado ?? false;
  bool hasVerificado() => _verificado != null;

  // "alcance30OFF" field.
  bool? _alcance30OFF;
  bool get alcance30OFF => _alcance30OFF ?? false;
  bool hasAlcance30OFF() => _alcance30OFF != null;

  // "usersADM_dono" field.
  bool? _usersADMDono;
  bool get usersADMDono => _usersADMDono ?? false;
  bool hasUsersADMDono() => _usersADMDono != null;

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

  // "notifications" field.
  int? _notifications;
  int get notifications => _notifications ?? 0;
  bool hasNotifications() => _notifications != null;

  // "valorTotalFAV" field.
  int? _valorTotalFAV;
  int get valorTotalFAV => _valorTotalFAV ?? 0;
  bool hasValorTotalFAV() => _valorTotalFAV != null;

  // "todosostemas" field.
  bool? _todosostemas;
  bool get todosostemas => _todosostemas ?? false;
  bool hasTodosostemas() => _todosostemas != null;

  // "tema_festa" field.
  bool? _temaFesta;
  bool get temaFesta => _temaFesta ?? false;
  bool hasTemaFesta() => _temaFesta != null;

  // "tema_show" field.
  bool? _temaShow;
  bool get temaShow => _temaShow ?? false;
  bool hasTemaShow() => _temaShow != null;

  // "tema_esporte" field.
  bool? _temaEsporte;
  bool get temaEsporte => _temaEsporte ?? false;
  bool hasTemaEsporte() => _temaEsporte != null;

  // "tema_teatro" field.
  bool? _temaTeatro;
  bool get temaTeatro => _temaTeatro ?? false;
  bool hasTemaTeatro() => _temaTeatro != null;

  // "nenhumtema" field.
  bool? _nenhumtema;
  bool get nenhumtema => _nenhumtema ?? false;
  bool hasNenhumtema() => _nenhumtema != null;

  // "confirm_users" field.
  bool? _confirmUsers;
  bool get confirmUsers => _confirmUsers ?? false;
  bool hasConfirmUsers() => _confirmUsers != null;

  // "quantidadedeavalicao" field.
  int? _quantidadedeavalicao;
  int get quantidadedeavalicao => _quantidadedeavalicao ?? 0;
  bool hasQuantidadedeavalicao() => _quantidadedeavalicao != null;

  // "cidade_Florianopolis" field.
  bool? _cidadeFlorianopolis;
  bool get cidadeFlorianopolis => _cidadeFlorianopolis ?? false;
  bool hasCidadeFlorianopolis() => _cidadeFlorianopolis != null;

  // "cidade_Brasilia" field.
  bool? _cidadeBrasilia;
  bool get cidadeBrasilia => _cidadeBrasilia ?? false;
  bool hasCidadeBrasilia() => _cidadeBrasilia != null;

  // "cidade_Fortaleza" field.
  bool? _cidadeFortaleza;
  bool get cidadeFortaleza => _cidadeFortaleza ?? false;
  bool hasCidadeFortaleza() => _cidadeFortaleza != null;

  // "cidade_Recife" field.
  bool? _cidadeRecife;
  bool get cidadeRecife => _cidadeRecife ?? false;
  bool hasCidadeRecife() => _cidadeRecife != null;

  // "idCliente_PagarME" field.
  String? _idClientePagarME;
  String get idClientePagarME => _idClientePagarME ?? '';
  bool hasIdClientePagarME() => _idClientePagarME != null;

  // "idCliente_cobranca_PagarME" field.
  String? _idClienteCobrancaPagarME;
  String get idClienteCobrancaPagarME => _idClienteCobrancaPagarME ?? '';
  bool hasIdClienteCobrancaPagarME() => _idClienteCobrancaPagarME != null;

  // "CEP" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "Endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "UF" field.
  String? _uf;
  String get uf => _uf ?? '';
  bool hasUf() => _uf != null;

  // "Cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "code_PagarME" field.
  String? _codePagarME;
  String get codePagarME => _codePagarME ?? '';
  bool hasCodePagarME() => _codePagarME != null;

  // "cidade_Betim" field.
  bool? _cidadeBetim;
  bool get cidadeBetim => _cidadeBetim ?? false;
  bool hasCidadeBetim() => _cidadeBetim != null;

  // "cidade_NovaLima" field.
  bool? _cidadeNovaLima;
  bool get cidadeNovaLima => _cidadeNovaLima ?? false;
  bool hasCidadeNovaLima() => _cidadeNovaLima != null;

  // "cidade_Contagem" field.
  bool? _cidadeContagem;
  bool get cidadeContagem => _cidadeContagem ?? false;
  bool hasCidadeContagem() => _cidadeContagem != null;

  // "avaliacaoTRUE" field.
  bool? _avaliacaoTRUE;
  bool get avaliacaoTRUE => _avaliacaoTRUE ?? false;
  bool hasAvaliacaoTRUE() => _avaliacaoTRUE != null;

  // "genero" field.
  String? _genero;
  String get genero => _genero ?? '';
  bool hasGenero() => _genero != null;

  // "saldoemconta" field.
  int? _saldoemconta;
  int get saldoemconta => _saldoemconta ?? 0;
  bool hasSaldoemconta() => _saldoemconta != null;

  // "imagem4_momentos" field.
  String? _imagem4Momentos;
  String get imagem4Momentos => _imagem4Momentos ?? '';
  bool hasImagem4Momentos() => _imagem4Momentos != null;

  // "fotos_true" field.
  bool? _fotosTrue;
  bool get fotosTrue => _fotosTrue ?? false;
  bool hasFotosTrue() => _fotosTrue != null;

  // "donodoIngressoREF" field.
  DocumentReference? _donodoIngressoREF;
  DocumentReference? get donodoIngressoREF => _donodoIngressoREF;
  bool hasDonodoIngressoREF() => _donodoIngressoREF != null;

  // "usersNot_Comprovante" field.
  DocumentReference? _usersNotComprovante;
  DocumentReference? get usersNotComprovante => _usersNotComprovante;
  bool hasUsersNotComprovante() => _usersNotComprovante != null;

  // "avaliacaoREF" field.
  DocumentReference? _avaliacaoREF;
  DocumentReference? get avaliacaoREF => _avaliacaoREF;
  bool hasAvaliacaoREF() => _avaliacaoREF != null;

  // "ratings" field.
  List<int>? _ratings;
  List<int> get ratings => _ratings ?? const [];
  bool hasRatings() => _ratings != null;

  // "like_by" field.
  List<DocumentReference>? _likeBy;
  List<DocumentReference> get likeBy => _likeBy ?? const [];
  bool hasLikeBy() => _likeBy != null;

  // "like_by2" field.
  List<DocumentReference>? _likeBy2;
  List<DocumentReference> get likeBy2 => _likeBy2 ?? const [];
  bool hasLikeBy2() => _likeBy2 != null;

  // "like_by3" field.
  List<DocumentReference>? _likeBy3;
  List<DocumentReference> get likeBy3 => _likeBy3 ?? const [];
  bool hasLikeBy3() => _likeBy3 != null;

  // "like_by4" field.
  List<DocumentReference>? _likeBy4;
  List<DocumentReference> get likeBy4 => _likeBy4 ?? const [];
  bool hasLikeBy4() => _likeBy4 != null;

  // "useresAVALIACAOREF" field.
  DocumentReference? _useresAVALIACAOREF;
  DocumentReference? get useresAVALIACAOREF => _useresAVALIACAOREF;
  bool hasUseresAVALIACAOREF() => _useresAVALIACAOREF != null;

  // "portugues" field.
  bool? _portugues;
  bool get portugues => _portugues ?? false;
  bool hasPortugues() => _portugues != null;

  // "ingles" field.
  bool? _ingles;
  bool get ingles => _ingles ?? false;
  bool hasIngles() => _ingles != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _name = snapshotData['name'] as String?;
    _permitirPUSHNotificacao = snapshotData['permitirPUSHNotificacao'] as bool?;
    _permitirEMAILnotifcacao = snapshotData['permitirEMAILnotifcacao'] as bool?;
    _permitirAPPNotifcacao = snapshotData['permitirAPPNotifcacao'] as bool?;
    _datadenascimento = snapshotData['datadenascimento'] as String?;
    _cpf = snapshotData['CPF'] as String?;
    _image = snapshotData['image'] as String?;
    _jatenhoDADOSBANCARIOS = snapshotData['jatenhoDADOS_BANCARIOS'] as bool?;
    _rating = castToType<int>(snapshotData['rating']);
    _ingressosvendidos = castToType<int>(snapshotData['ingressosvendidos']);
    _ingressoscomprados = castToType<int>(snapshotData['ingressoscomprados']);
    _likes = castToType<int>(snapshotData['likes']);
    _visibilidadeLIKEAcao = snapshotData['visibilidade_LIKE_acao'] as bool?;
    _lastTicketCompradoNome =
        snapshotData['lastTicketComprado_nome'] as String?;
    _lastTicketVendidoNome = snapshotData['lastTicketVendido_nome'] as String?;
    _lastTicketVendidoData =
        snapshotData['lastTicketVendido_data'] as DateTime?;
    _lastTicketCompradoData =
        snapshotData['lastTicketComprado_data'] as DateTime?;
    _imagem1Momentos = snapshotData['imagem1_momentos'] as String?;
    _imagem2Momentos = snapshotData['imagem2_momentos'] as String?;
    _imagem3Momentos = snapshotData['imagem3_momentos'] as String?;
    _frenteComprovanteDeIdentidade =
        snapshotData['frente_comprovante_de_identidade'] as String?;
    _versoComprovanteIdentidade =
        snapshotData['verso_comprovante_identidade'] as String?;
    _verificado = snapshotData['verificado'] as bool?;
    _alcance30OFF = snapshotData['alcance30OFF'] as bool?;
    _usersADMDono = snapshotData['usersADM_dono'] as bool?;
    _cidadeBeloHorizonte = snapshotData['cidade_BeloHorizonte'] as bool?;
    _cidadeSaoPaulo = snapshotData['cidade_SaoPaulo'] as bool?;
    _cidadeRiodeJaneiro = snapshotData['cidade_RiodeJaneiro'] as bool?;
    _cidadeVitoria = snapshotData['cidade_Vitoria'] as bool?;
    _cidadeCuritiba = snapshotData['cidade_Curitiba'] as bool?;
    _cidadeBalneario = snapshotData['cidade_Balneario'] as bool?;
    _cidadeOutros = snapshotData['cidade_Outros'] as bool?;
    _notifications = castToType<int>(snapshotData['notifications']);
    _valorTotalFAV = castToType<int>(snapshotData['valorTotalFAV']);
    _todosostemas = snapshotData['todosostemas'] as bool?;
    _temaFesta = snapshotData['tema_festa'] as bool?;
    _temaShow = snapshotData['tema_show'] as bool?;
    _temaEsporte = snapshotData['tema_esporte'] as bool?;
    _temaTeatro = snapshotData['tema_teatro'] as bool?;
    _nenhumtema = snapshotData['nenhumtema'] as bool?;
    _confirmUsers = snapshotData['confirm_users'] as bool?;
    _quantidadedeavalicao =
        castToType<int>(snapshotData['quantidadedeavalicao']);
    _cidadeFlorianopolis = snapshotData['cidade_Florianopolis'] as bool?;
    _cidadeBrasilia = snapshotData['cidade_Brasilia'] as bool?;
    _cidadeFortaleza = snapshotData['cidade_Fortaleza'] as bool?;
    _cidadeRecife = snapshotData['cidade_Recife'] as bool?;
    _idClientePagarME = snapshotData['idCliente_PagarME'] as String?;
    _idClienteCobrancaPagarME =
        snapshotData['idCliente_cobranca_PagarME'] as String?;
    _cep = snapshotData['CEP'] as String?;
    _endereco = snapshotData['Endereco'] as String?;
    _uf = snapshotData['UF'] as String?;
    _cidade = snapshotData['Cidade'] as String?;
    _codePagarME = snapshotData['code_PagarME'] as String?;
    _cidadeBetim = snapshotData['cidade_Betim'] as bool?;
    _cidadeNovaLima = snapshotData['cidade_NovaLima'] as bool?;
    _cidadeContagem = snapshotData['cidade_Contagem'] as bool?;
    _avaliacaoTRUE = snapshotData['avaliacaoTRUE'] as bool?;
    _genero = snapshotData['genero'] as String?;
    _saldoemconta = castToType<int>(snapshotData['saldoemconta']);
    _imagem4Momentos = snapshotData['imagem4_momentos'] as String?;
    _fotosTrue = snapshotData['fotos_true'] as bool?;
    _donodoIngressoREF =
        snapshotData['donodoIngressoREF'] as DocumentReference?;
    _usersNotComprovante =
        snapshotData['usersNot_Comprovante'] as DocumentReference?;
    _avaliacaoREF = snapshotData['avaliacaoREF'] as DocumentReference?;
    _ratings = getDataList(snapshotData['ratings']);
    _likeBy = getDataList(snapshotData['like_by']);
    _likeBy2 = getDataList(snapshotData['like_by2']);
    _likeBy3 = getDataList(snapshotData['like_by3']);
    _likeBy4 = getDataList(snapshotData['like_by4']);
    _useresAVALIACAOREF =
        snapshotData['useresAVALIACAOREF'] as DocumentReference?;
    _portugues = snapshotData['portugues'] as bool?;
    _ingles = snapshotData['ingles'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? name,
  bool? permitirPUSHNotificacao,
  bool? permitirEMAILnotifcacao,
  bool? permitirAPPNotifcacao,
  String? datadenascimento,
  String? cpf,
  String? image,
  bool? jatenhoDADOSBANCARIOS,
  int? rating,
  int? ingressosvendidos,
  int? ingressoscomprados,
  int? likes,
  bool? visibilidadeLIKEAcao,
  String? lastTicketCompradoNome,
  String? lastTicketVendidoNome,
  DateTime? lastTicketVendidoData,
  DateTime? lastTicketCompradoData,
  String? imagem1Momentos,
  String? imagem2Momentos,
  String? imagem3Momentos,
  String? frenteComprovanteDeIdentidade,
  String? versoComprovanteIdentidade,
  bool? verificado,
  bool? alcance30OFF,
  bool? usersADMDono,
  bool? cidadeBeloHorizonte,
  bool? cidadeSaoPaulo,
  bool? cidadeRiodeJaneiro,
  bool? cidadeVitoria,
  bool? cidadeCuritiba,
  bool? cidadeBalneario,
  bool? cidadeOutros,
  int? notifications,
  int? valorTotalFAV,
  bool? todosostemas,
  bool? temaFesta,
  bool? temaShow,
  bool? temaEsporte,
  bool? temaTeatro,
  bool? nenhumtema,
  bool? confirmUsers,
  int? quantidadedeavalicao,
  bool? cidadeFlorianopolis,
  bool? cidadeBrasilia,
  bool? cidadeFortaleza,
  bool? cidadeRecife,
  String? idClientePagarME,
  String? idClienteCobrancaPagarME,
  String? cep,
  String? endereco,
  String? uf,
  String? cidade,
  String? codePagarME,
  bool? cidadeBetim,
  bool? cidadeNovaLima,
  bool? cidadeContagem,
  bool? avaliacaoTRUE,
  String? genero,
  int? saldoemconta,
  String? imagem4Momentos,
  bool? fotosTrue,
  DocumentReference? donodoIngressoREF,
  DocumentReference? usersNotComprovante,
  DocumentReference? avaliacaoREF,
  DocumentReference? useresAVALIACAOREF,
  bool? portugues,
  bool? ingles,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'name': name,
      'permitirPUSHNotificacao': permitirPUSHNotificacao,
      'permitirEMAILnotifcacao': permitirEMAILnotifcacao,
      'permitirAPPNotifcacao': permitirAPPNotifcacao,
      'datadenascimento': datadenascimento,
      'CPF': cpf,
      'image': image,
      'jatenhoDADOS_BANCARIOS': jatenhoDADOSBANCARIOS,
      'rating': rating,
      'ingressosvendidos': ingressosvendidos,
      'ingressoscomprados': ingressoscomprados,
      'likes': likes,
      'visibilidade_LIKE_acao': visibilidadeLIKEAcao,
      'lastTicketComprado_nome': lastTicketCompradoNome,
      'lastTicketVendido_nome': lastTicketVendidoNome,
      'lastTicketVendido_data': lastTicketVendidoData,
      'lastTicketComprado_data': lastTicketCompradoData,
      'imagem1_momentos': imagem1Momentos,
      'imagem2_momentos': imagem2Momentos,
      'imagem3_momentos': imagem3Momentos,
      'frente_comprovante_de_identidade': frenteComprovanteDeIdentidade,
      'verso_comprovante_identidade': versoComprovanteIdentidade,
      'verificado': verificado,
      'alcance30OFF': alcance30OFF,
      'usersADM_dono': usersADMDono,
      'cidade_BeloHorizonte': cidadeBeloHorizonte,
      'cidade_SaoPaulo': cidadeSaoPaulo,
      'cidade_RiodeJaneiro': cidadeRiodeJaneiro,
      'cidade_Vitoria': cidadeVitoria,
      'cidade_Curitiba': cidadeCuritiba,
      'cidade_Balneario': cidadeBalneario,
      'cidade_Outros': cidadeOutros,
      'notifications': notifications,
      'valorTotalFAV': valorTotalFAV,
      'todosostemas': todosostemas,
      'tema_festa': temaFesta,
      'tema_show': temaShow,
      'tema_esporte': temaEsporte,
      'tema_teatro': temaTeatro,
      'nenhumtema': nenhumtema,
      'confirm_users': confirmUsers,
      'quantidadedeavalicao': quantidadedeavalicao,
      'cidade_Florianopolis': cidadeFlorianopolis,
      'cidade_Brasilia': cidadeBrasilia,
      'cidade_Fortaleza': cidadeFortaleza,
      'cidade_Recife': cidadeRecife,
      'idCliente_PagarME': idClientePagarME,
      'idCliente_cobranca_PagarME': idClienteCobrancaPagarME,
      'CEP': cep,
      'Endereco': endereco,
      'UF': uf,
      'Cidade': cidade,
      'code_PagarME': codePagarME,
      'cidade_Betim': cidadeBetim,
      'cidade_NovaLima': cidadeNovaLima,
      'cidade_Contagem': cidadeContagem,
      'avaliacaoTRUE': avaliacaoTRUE,
      'genero': genero,
      'saldoemconta': saldoemconta,
      'imagem4_momentos': imagem4Momentos,
      'fotos_true': fotosTrue,
      'donodoIngressoREF': donodoIngressoREF,
      'usersNot_Comprovante': usersNotComprovante,
      'avaliacaoREF': avaliacaoREF,
      'useresAVALIACAOREF': useresAVALIACAOREF,
      'portugues': portugues,
      'ingles': ingles,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.name == e2?.name &&
        e1?.permitirPUSHNotificacao == e2?.permitirPUSHNotificacao &&
        e1?.permitirEMAILnotifcacao == e2?.permitirEMAILnotifcacao &&
        e1?.permitirAPPNotifcacao == e2?.permitirAPPNotifcacao &&
        e1?.datadenascimento == e2?.datadenascimento &&
        e1?.cpf == e2?.cpf &&
        e1?.image == e2?.image &&
        e1?.jatenhoDADOSBANCARIOS == e2?.jatenhoDADOSBANCARIOS &&
        e1?.rating == e2?.rating &&
        e1?.ingressosvendidos == e2?.ingressosvendidos &&
        e1?.ingressoscomprados == e2?.ingressoscomprados &&
        e1?.likes == e2?.likes &&
        e1?.visibilidadeLIKEAcao == e2?.visibilidadeLIKEAcao &&
        e1?.lastTicketCompradoNome == e2?.lastTicketCompradoNome &&
        e1?.lastTicketVendidoNome == e2?.lastTicketVendidoNome &&
        e1?.lastTicketVendidoData == e2?.lastTicketVendidoData &&
        e1?.lastTicketCompradoData == e2?.lastTicketCompradoData &&
        e1?.imagem1Momentos == e2?.imagem1Momentos &&
        e1?.imagem2Momentos == e2?.imagem2Momentos &&
        e1?.imagem3Momentos == e2?.imagem3Momentos &&
        e1?.frenteComprovanteDeIdentidade ==
            e2?.frenteComprovanteDeIdentidade &&
        e1?.versoComprovanteIdentidade == e2?.versoComprovanteIdentidade &&
        e1?.verificado == e2?.verificado &&
        e1?.alcance30OFF == e2?.alcance30OFF &&
        e1?.usersADMDono == e2?.usersADMDono &&
        e1?.cidadeBeloHorizonte == e2?.cidadeBeloHorizonte &&
        e1?.cidadeSaoPaulo == e2?.cidadeSaoPaulo &&
        e1?.cidadeRiodeJaneiro == e2?.cidadeRiodeJaneiro &&
        e1?.cidadeVitoria == e2?.cidadeVitoria &&
        e1?.cidadeCuritiba == e2?.cidadeCuritiba &&
        e1?.cidadeBalneario == e2?.cidadeBalneario &&
        e1?.cidadeOutros == e2?.cidadeOutros &&
        e1?.notifications == e2?.notifications &&
        e1?.valorTotalFAV == e2?.valorTotalFAV &&
        e1?.todosostemas == e2?.todosostemas &&
        e1?.temaFesta == e2?.temaFesta &&
        e1?.temaShow == e2?.temaShow &&
        e1?.temaEsporte == e2?.temaEsporte &&
        e1?.temaTeatro == e2?.temaTeatro &&
        e1?.nenhumtema == e2?.nenhumtema &&
        e1?.confirmUsers == e2?.confirmUsers &&
        e1?.quantidadedeavalicao == e2?.quantidadedeavalicao &&
        e1?.cidadeFlorianopolis == e2?.cidadeFlorianopolis &&
        e1?.cidadeBrasilia == e2?.cidadeBrasilia &&
        e1?.cidadeFortaleza == e2?.cidadeFortaleza &&
        e1?.cidadeRecife == e2?.cidadeRecife &&
        e1?.idClientePagarME == e2?.idClientePagarME &&
        e1?.idClienteCobrancaPagarME == e2?.idClienteCobrancaPagarME &&
        e1?.cep == e2?.cep &&
        e1?.endereco == e2?.endereco &&
        e1?.uf == e2?.uf &&
        e1?.cidade == e2?.cidade &&
        e1?.codePagarME == e2?.codePagarME &&
        e1?.cidadeBetim == e2?.cidadeBetim &&
        e1?.cidadeNovaLima == e2?.cidadeNovaLima &&
        e1?.cidadeContagem == e2?.cidadeContagem &&
        e1?.avaliacaoTRUE == e2?.avaliacaoTRUE &&
        e1?.genero == e2?.genero &&
        e1?.saldoemconta == e2?.saldoemconta &&
        e1?.imagem4Momentos == e2?.imagem4Momentos &&
        e1?.fotosTrue == e2?.fotosTrue &&
        e1?.donodoIngressoREF == e2?.donodoIngressoREF &&
        e1?.usersNotComprovante == e2?.usersNotComprovante &&
        e1?.avaliacaoREF == e2?.avaliacaoREF &&
        listEquality.equals(e1?.ratings, e2?.ratings) &&
        listEquality.equals(e1?.likeBy, e2?.likeBy) &&
        listEquality.equals(e1?.likeBy2, e2?.likeBy2) &&
        listEquality.equals(e1?.likeBy3, e2?.likeBy3) &&
        listEquality.equals(e1?.likeBy4, e2?.likeBy4) &&
        e1?.useresAVALIACAOREF == e2?.useresAVALIACAOREF &&
        e1?.portugues == e2?.portugues &&
        e1?.ingles == e2?.ingles;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.name,
        e?.permitirPUSHNotificacao,
        e?.permitirEMAILnotifcacao,
        e?.permitirAPPNotifcacao,
        e?.datadenascimento,
        e?.cpf,
        e?.image,
        e?.jatenhoDADOSBANCARIOS,
        e?.rating,
        e?.ingressosvendidos,
        e?.ingressoscomprados,
        e?.likes,
        e?.visibilidadeLIKEAcao,
        e?.lastTicketCompradoNome,
        e?.lastTicketVendidoNome,
        e?.lastTicketVendidoData,
        e?.lastTicketCompradoData,
        e?.imagem1Momentos,
        e?.imagem2Momentos,
        e?.imagem3Momentos,
        e?.frenteComprovanteDeIdentidade,
        e?.versoComprovanteIdentidade,
        e?.verificado,
        e?.alcance30OFF,
        e?.usersADMDono,
        e?.cidadeBeloHorizonte,
        e?.cidadeSaoPaulo,
        e?.cidadeRiodeJaneiro,
        e?.cidadeVitoria,
        e?.cidadeCuritiba,
        e?.cidadeBalneario,
        e?.cidadeOutros,
        e?.notifications,
        e?.valorTotalFAV,
        e?.todosostemas,
        e?.temaFesta,
        e?.temaShow,
        e?.temaEsporte,
        e?.temaTeatro,
        e?.nenhumtema,
        e?.confirmUsers,
        e?.quantidadedeavalicao,
        e?.cidadeFlorianopolis,
        e?.cidadeBrasilia,
        e?.cidadeFortaleza,
        e?.cidadeRecife,
        e?.idClientePagarME,
        e?.idClienteCobrancaPagarME,
        e?.cep,
        e?.endereco,
        e?.uf,
        e?.cidade,
        e?.codePagarME,
        e?.cidadeBetim,
        e?.cidadeNovaLima,
        e?.cidadeContagem,
        e?.avaliacaoTRUE,
        e?.genero,
        e?.saldoemconta,
        e?.imagem4Momentos,
        e?.fotosTrue,
        e?.donodoIngressoREF,
        e?.usersNotComprovante,
        e?.avaliacaoREF,
        e?.ratings,
        e?.likeBy,
        e?.likeBy2,
        e?.likeBy3,
        e?.likeBy4,
        e?.useresAVALIACAOREF,
        e?.portugues,
        e?.ingles
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
