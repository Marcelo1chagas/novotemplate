import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth/firebase_auth/auth_util.dart';

import '../flutter_flow/flutter_flow_util.dart';
import 'schema/util/firestore_util.dart';

import 'schema/ingressos_record.dart';
import 'schema/leiao_record.dart';
import 'schema/users_record.dart';
import 'schema/a_v_a_l_i_a_c_a_o_de_u_s_u_a_r_i_o_record.dart';
import 'schema/ingressos_anunciados_vendedor_record.dart';
import 'schema/dados_bancarios_record.dart';
import 'schema/compra_ingresso_record.dart';
import 'schema/denunciar_usuario_record.dart';
import 'schema/enviodocomprovante_record.dart';
import 'schema/verificado_compra_record.dart';
import 'schema/wallet_extrato_record.dart';
import 'schema/favoritos_record.dart';
import 'schema/compra_record.dart';
import 'schema/compras_f_a_v_o_r_i_t_o_s_record.dart';
import 'schema/compra_a_u_m_e_n_t_a_r_a_l_c_a_n_c_e_1dia_record.dart';
import 'schema/compra_a_u_m_e_n_t_a_r_a_l_c_a_n_c_e_5dias_record.dart';
import 'schema/compra_a_u_m_e_n_t_a_r_a_l_c_a_n_c_e_15dias_record.dart';
import 'schema/notification_a_d_d_i_n_g_r_e_s_s_o_s_record.dart';
import 'schema/notification_f_a_v_i_n_g_r_e_s_s_o_record.dart';
import 'schema/notification_a_l_c_a_n_c_e_1dia_record.dart';
import 'schema/notification_a_l_c_a_n_c_e_5dias_record.dart';
import 'schema/notification_a_l_c_a_n_c_e_15dias_record.dart';
import 'schema/notification_compra_ingresso_comprador_record.dart';
import 'schema/notification_compra_ingresso_vendedor_record.dart';
import 'schema/dados_bancarios_vendedores_record.dart';
import 'schema/notification_envio_do_ingresso_record.dart';
import 'schema/ingressos_comprados_record.dart';
import 'schema/compra_verificado_record.dart';
import 'schema/notification_leilaoaceito_record.dart';
import 'schema/mensagens_suporte_record.dart';
import 'schema/cidades_record.dart';
import 'schema/eventos_brasil_record.dart';
import 'schema/ingressos_perfil_evento_record.dart';
import 'schema/lancesenviados_record.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart' hide Order;
export 'package:firebase_core/firebase_core.dart';
export 'schema/index.dart';
export 'schema/util/firestore_util.dart';
export 'schema/util/schema_util.dart';

export 'schema/ingressos_record.dart';
export 'schema/leiao_record.dart';
export 'schema/users_record.dart';
export 'schema/a_v_a_l_i_a_c_a_o_de_u_s_u_a_r_i_o_record.dart';
export 'schema/ingressos_anunciados_vendedor_record.dart';
export 'schema/dados_bancarios_record.dart';
export 'schema/compra_ingresso_record.dart';
export 'schema/denunciar_usuario_record.dart';
export 'schema/enviodocomprovante_record.dart';
export 'schema/verificado_compra_record.dart';
export 'schema/wallet_extrato_record.dart';
export 'schema/favoritos_record.dart';
export 'schema/compra_record.dart';
export 'schema/compras_f_a_v_o_r_i_t_o_s_record.dart';
export 'schema/compra_a_u_m_e_n_t_a_r_a_l_c_a_n_c_e_1dia_record.dart';
export 'schema/compra_a_u_m_e_n_t_a_r_a_l_c_a_n_c_e_5dias_record.dart';
export 'schema/compra_a_u_m_e_n_t_a_r_a_l_c_a_n_c_e_15dias_record.dart';
export 'schema/notification_a_d_d_i_n_g_r_e_s_s_o_s_record.dart';
export 'schema/notification_f_a_v_i_n_g_r_e_s_s_o_record.dart';
export 'schema/notification_a_l_c_a_n_c_e_1dia_record.dart';
export 'schema/notification_a_l_c_a_n_c_e_5dias_record.dart';
export 'schema/notification_a_l_c_a_n_c_e_15dias_record.dart';
export 'schema/notification_compra_ingresso_comprador_record.dart';
export 'schema/notification_compra_ingresso_vendedor_record.dart';
export 'schema/dados_bancarios_vendedores_record.dart';
export 'schema/notification_envio_do_ingresso_record.dart';
export 'schema/ingressos_comprados_record.dart';
export 'schema/compra_verificado_record.dart';
export 'schema/notification_leilaoaceito_record.dart';
export 'schema/mensagens_suporte_record.dart';
export 'schema/cidades_record.dart';
export 'schema/eventos_brasil_record.dart';
export 'schema/ingressos_perfil_evento_record.dart';
export 'schema/lancesenviados_record.dart';

/// Functions to query IngressosRecords (as a Stream and as a Future).
Future<int> queryIngressosRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      IngressosRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<IngressosRecord>> queryIngressosRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      IngressosRecord.collection,
      IngressosRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<IngressosRecord>> queryIngressosRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      IngressosRecord.collection,
      IngressosRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query LeiaoRecords (as a Stream and as a Future).
Future<int> queryLeiaoRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      LeiaoRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<LeiaoRecord>> queryLeiaoRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      LeiaoRecord.collection(parent),
      LeiaoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<LeiaoRecord>> queryLeiaoRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      LeiaoRecord.collection(parent),
      LeiaoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query UsersRecords (as a Stream and as a Future).
Future<int> queryUsersRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UsersRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UsersRecord>> queryUsersRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UsersRecord.collection,
      UsersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UsersRecord>> queryUsersRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UsersRecord.collection,
      UsersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query AVALIACAODeUSUARIORecords (as a Stream and as a Future).
Future<int> queryAVALIACAODeUSUARIORecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AVALIACAODeUSUARIORecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AVALIACAODeUSUARIORecord>> queryAVALIACAODeUSUARIORecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      AVALIACAODeUSUARIORecord.collection(parent),
      AVALIACAODeUSUARIORecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<AVALIACAODeUSUARIORecord>> queryAVALIACAODeUSUARIORecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      AVALIACAODeUSUARIORecord.collection(parent),
      AVALIACAODeUSUARIORecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query IngressosAnunciadosVendedorRecords (as a Stream and as a Future).
Future<int> queryIngressosAnunciadosVendedorRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      IngressosAnunciadosVendedorRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<IngressosAnunciadosVendedorRecord>>
    queryIngressosAnunciadosVendedorRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          IngressosAnunciadosVendedorRecord.collection(parent),
          IngressosAnunciadosVendedorRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<IngressosAnunciadosVendedorRecord>>
    queryIngressosAnunciadosVendedorRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          IngressosAnunciadosVendedorRecord.collection(parent),
          IngressosAnunciadosVendedorRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query DadosBancariosRecords (as a Stream and as a Future).
Future<int> queryDadosBancariosRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      DadosBancariosRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<DadosBancariosRecord>> queryDadosBancariosRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      DadosBancariosRecord.collection(parent),
      DadosBancariosRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<DadosBancariosRecord>> queryDadosBancariosRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      DadosBancariosRecord.collection(parent),
      DadosBancariosRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CompraIngressoRecords (as a Stream and as a Future).
Future<int> queryCompraIngressoRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CompraIngressoRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CompraIngressoRecord>> queryCompraIngressoRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CompraIngressoRecord.collection(parent),
      CompraIngressoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CompraIngressoRecord>> queryCompraIngressoRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CompraIngressoRecord.collection(parent),
      CompraIngressoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query DenunciarUsuarioRecords (as a Stream and as a Future).
Future<int> queryDenunciarUsuarioRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      DenunciarUsuarioRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<DenunciarUsuarioRecord>> queryDenunciarUsuarioRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      DenunciarUsuarioRecord.collection(parent),
      DenunciarUsuarioRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<DenunciarUsuarioRecord>> queryDenunciarUsuarioRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      DenunciarUsuarioRecord.collection(parent),
      DenunciarUsuarioRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query EnviodocomprovanteRecords (as a Stream and as a Future).
Future<int> queryEnviodocomprovanteRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      EnviodocomprovanteRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<EnviodocomprovanteRecord>> queryEnviodocomprovanteRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      EnviodocomprovanteRecord.collection(parent),
      EnviodocomprovanteRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<EnviodocomprovanteRecord>> queryEnviodocomprovanteRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      EnviodocomprovanteRecord.collection(parent),
      EnviodocomprovanteRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VerificadoCompraRecords (as a Stream and as a Future).
Future<int> queryVerificadoCompraRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VerificadoCompraRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VerificadoCompraRecord>> queryVerificadoCompraRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VerificadoCompraRecord.collection(parent),
      VerificadoCompraRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VerificadoCompraRecord>> queryVerificadoCompraRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VerificadoCompraRecord.collection(parent),
      VerificadoCompraRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query WalletExtratoRecords (as a Stream and as a Future).
Future<int> queryWalletExtratoRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      WalletExtratoRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<WalletExtratoRecord>> queryWalletExtratoRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      WalletExtratoRecord.collection(parent),
      WalletExtratoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<WalletExtratoRecord>> queryWalletExtratoRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      WalletExtratoRecord.collection(parent),
      WalletExtratoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query FavoritosRecords (as a Stream and as a Future).
Future<int> queryFavoritosRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FavoritosRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FavoritosRecord>> queryFavoritosRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      FavoritosRecord.collection,
      FavoritosRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<FavoritosRecord>> queryFavoritosRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      FavoritosRecord.collection,
      FavoritosRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CompraRecords (as a Stream and as a Future).
Future<int> queryCompraRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CompraRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CompraRecord>> queryCompraRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CompraRecord.collection,
      CompraRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CompraRecord>> queryCompraRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CompraRecord.collection,
      CompraRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ComprasFAVORITOSRecords (as a Stream and as a Future).
Future<int> queryComprasFAVORITOSRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ComprasFAVORITOSRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ComprasFAVORITOSRecord>> queryComprasFAVORITOSRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ComprasFAVORITOSRecord.collection,
      ComprasFAVORITOSRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ComprasFAVORITOSRecord>> queryComprasFAVORITOSRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ComprasFAVORITOSRecord.collection,
      ComprasFAVORITOSRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CompraAUMENTARALCANCE1diaRecords (as a Stream and as a Future).
Future<int> queryCompraAUMENTARALCANCE1diaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CompraAUMENTARALCANCE1diaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CompraAUMENTARALCANCE1diaRecord>>
    queryCompraAUMENTARALCANCE1diaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          CompraAUMENTARALCANCE1diaRecord.collection,
          CompraAUMENTARALCANCE1diaRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<CompraAUMENTARALCANCE1diaRecord>>
    queryCompraAUMENTARALCANCE1diaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          CompraAUMENTARALCANCE1diaRecord.collection,
          CompraAUMENTARALCANCE1diaRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query CompraAUMENTARALCANCE5diasRecords (as a Stream and as a Future).
Future<int> queryCompraAUMENTARALCANCE5diasRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CompraAUMENTARALCANCE5diasRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CompraAUMENTARALCANCE5diasRecord>>
    queryCompraAUMENTARALCANCE5diasRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          CompraAUMENTARALCANCE5diasRecord.collection,
          CompraAUMENTARALCANCE5diasRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<CompraAUMENTARALCANCE5diasRecord>>
    queryCompraAUMENTARALCANCE5diasRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          CompraAUMENTARALCANCE5diasRecord.collection,
          CompraAUMENTARALCANCE5diasRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query CompraAUMENTARALCANCE15diasRecords (as a Stream and as a Future).
Future<int> queryCompraAUMENTARALCANCE15diasRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CompraAUMENTARALCANCE15diasRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CompraAUMENTARALCANCE15diasRecord>>
    queryCompraAUMENTARALCANCE15diasRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          CompraAUMENTARALCANCE15diasRecord.collection,
          CompraAUMENTARALCANCE15diasRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<CompraAUMENTARALCANCE15diasRecord>>
    queryCompraAUMENTARALCANCE15diasRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          CompraAUMENTARALCANCE15diasRecord.collection,
          CompraAUMENTARALCANCE15diasRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query NotificationADDINGRESSOSRecords (as a Stream and as a Future).
Future<int> queryNotificationADDINGRESSOSRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      NotificationADDINGRESSOSRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<NotificationADDINGRESSOSRecord>>
    queryNotificationADDINGRESSOSRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          NotificationADDINGRESSOSRecord.collection,
          NotificationADDINGRESSOSRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<NotificationADDINGRESSOSRecord>>
    queryNotificationADDINGRESSOSRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          NotificationADDINGRESSOSRecord.collection,
          NotificationADDINGRESSOSRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query NotificationFAVINGRESSORecords (as a Stream and as a Future).
Future<int> queryNotificationFAVINGRESSORecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      NotificationFAVINGRESSORecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<NotificationFAVINGRESSORecord>> queryNotificationFAVINGRESSORecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      NotificationFAVINGRESSORecord.collection,
      NotificationFAVINGRESSORecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<NotificationFAVINGRESSORecord>>
    queryNotificationFAVINGRESSORecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          NotificationFAVINGRESSORecord.collection,
          NotificationFAVINGRESSORecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query NotificationALCANCE1diaRecords (as a Stream and as a Future).
Future<int> queryNotificationALCANCE1diaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      NotificationALCANCE1diaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<NotificationALCANCE1diaRecord>> queryNotificationALCANCE1diaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      NotificationALCANCE1diaRecord.collection,
      NotificationALCANCE1diaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<NotificationALCANCE1diaRecord>>
    queryNotificationALCANCE1diaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          NotificationALCANCE1diaRecord.collection,
          NotificationALCANCE1diaRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query NotificationALCANCE5diasRecords (as a Stream and as a Future).
Future<int> queryNotificationALCANCE5diasRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      NotificationALCANCE5diasRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<NotificationALCANCE5diasRecord>>
    queryNotificationALCANCE5diasRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          NotificationALCANCE5diasRecord.collection,
          NotificationALCANCE5diasRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<NotificationALCANCE5diasRecord>>
    queryNotificationALCANCE5diasRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          NotificationALCANCE5diasRecord.collection,
          NotificationALCANCE5diasRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query NotificationALCANCE15diasRecords (as a Stream and as a Future).
Future<int> queryNotificationALCANCE15diasRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      NotificationALCANCE15diasRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<NotificationALCANCE15diasRecord>>
    queryNotificationALCANCE15diasRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          NotificationALCANCE15diasRecord.collection,
          NotificationALCANCE15diasRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<NotificationALCANCE15diasRecord>>
    queryNotificationALCANCE15diasRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          NotificationALCANCE15diasRecord.collection,
          NotificationALCANCE15diasRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query NotificationCompraIngressoCompradorRecords (as a Stream and as a Future).
Future<int> queryNotificationCompraIngressoCompradorRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      NotificationCompraIngressoCompradorRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<NotificationCompraIngressoCompradorRecord>>
    queryNotificationCompraIngressoCompradorRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          NotificationCompraIngressoCompradorRecord.collection,
          NotificationCompraIngressoCompradorRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<NotificationCompraIngressoCompradorRecord>>
    queryNotificationCompraIngressoCompradorRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          NotificationCompraIngressoCompradorRecord.collection,
          NotificationCompraIngressoCompradorRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query NotificationCompraIngressoVendedorRecords (as a Stream and as a Future).
Future<int> queryNotificationCompraIngressoVendedorRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      NotificationCompraIngressoVendedorRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<NotificationCompraIngressoVendedorRecord>>
    queryNotificationCompraIngressoVendedorRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          NotificationCompraIngressoVendedorRecord.collection,
          NotificationCompraIngressoVendedorRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<NotificationCompraIngressoVendedorRecord>>
    queryNotificationCompraIngressoVendedorRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          NotificationCompraIngressoVendedorRecord.collection,
          NotificationCompraIngressoVendedorRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query DadosBancariosVendedoresRecords (as a Stream and as a Future).
Future<int> queryDadosBancariosVendedoresRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      DadosBancariosVendedoresRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<DadosBancariosVendedoresRecord>>
    queryDadosBancariosVendedoresRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          DadosBancariosVendedoresRecord.collection,
          DadosBancariosVendedoresRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<DadosBancariosVendedoresRecord>>
    queryDadosBancariosVendedoresRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          DadosBancariosVendedoresRecord.collection,
          DadosBancariosVendedoresRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query NotificationEnvioDoIngressoRecords (as a Stream and as a Future).
Future<int> queryNotificationEnvioDoIngressoRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      NotificationEnvioDoIngressoRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<NotificationEnvioDoIngressoRecord>>
    queryNotificationEnvioDoIngressoRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          NotificationEnvioDoIngressoRecord.collection,
          NotificationEnvioDoIngressoRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<NotificationEnvioDoIngressoRecord>>
    queryNotificationEnvioDoIngressoRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          NotificationEnvioDoIngressoRecord.collection,
          NotificationEnvioDoIngressoRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query IngressosCompradosRecords (as a Stream and as a Future).
Future<int> queryIngressosCompradosRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      IngressosCompradosRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<IngressosCompradosRecord>> queryIngressosCompradosRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      IngressosCompradosRecord.collection,
      IngressosCompradosRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<IngressosCompradosRecord>> queryIngressosCompradosRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      IngressosCompradosRecord.collection,
      IngressosCompradosRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CompraVerificadoRecords (as a Stream and as a Future).
Future<int> queryCompraVerificadoRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CompraVerificadoRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CompraVerificadoRecord>> queryCompraVerificadoRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CompraVerificadoRecord.collection,
      CompraVerificadoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CompraVerificadoRecord>> queryCompraVerificadoRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CompraVerificadoRecord.collection,
      CompraVerificadoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query NotificationLeilaoaceitoRecords (as a Stream and as a Future).
Future<int> queryNotificationLeilaoaceitoRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      NotificationLeilaoaceitoRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<NotificationLeilaoaceitoRecord>>
    queryNotificationLeilaoaceitoRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          NotificationLeilaoaceitoRecord.collection,
          NotificationLeilaoaceitoRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<NotificationLeilaoaceitoRecord>>
    queryNotificationLeilaoaceitoRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          NotificationLeilaoaceitoRecord.collection,
          NotificationLeilaoaceitoRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query MensagensSuporteRecords (as a Stream and as a Future).
Future<int> queryMensagensSuporteRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MensagensSuporteRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MensagensSuporteRecord>> queryMensagensSuporteRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MensagensSuporteRecord.collection,
      MensagensSuporteRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MensagensSuporteRecord>> queryMensagensSuporteRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MensagensSuporteRecord.collection,
      MensagensSuporteRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CidadesRecords (as a Stream and as a Future).
Future<int> queryCidadesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CidadesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CidadesRecord>> queryCidadesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CidadesRecord.collection,
      CidadesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CidadesRecord>> queryCidadesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CidadesRecord.collection,
      CidadesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query EventosBrasilRecords (as a Stream and as a Future).
Future<int> queryEventosBrasilRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      EventosBrasilRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<EventosBrasilRecord>> queryEventosBrasilRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      EventosBrasilRecord.collection,
      EventosBrasilRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<EventosBrasilRecord>> queryEventosBrasilRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      EventosBrasilRecord.collection,
      EventosBrasilRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query IngressosPerfilEventoRecords (as a Stream and as a Future).
Future<int> queryIngressosPerfilEventoRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      IngressosPerfilEventoRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<IngressosPerfilEventoRecord>> queryIngressosPerfilEventoRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      IngressosPerfilEventoRecord.collection(parent),
      IngressosPerfilEventoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<IngressosPerfilEventoRecord>> queryIngressosPerfilEventoRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      IngressosPerfilEventoRecord.collection(parent),
      IngressosPerfilEventoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query LancesenviadosRecords (as a Stream and as a Future).
Future<int> queryLancesenviadosRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      LancesenviadosRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<LancesenviadosRecord>> queryLancesenviadosRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      LancesenviadosRecord.collection(parent),
      LancesenviadosRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<LancesenviadosRecord>> queryLancesenviadosRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      LancesenviadosRecord.collection(parent),
      LancesenviadosRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<int> queryCollectionCount(
  Query collection, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0) {
    query = query.limit(limit);
  }

  return query.count().get().catchError((err) {
    print('Error querying $collection: $err');
  }).then((value) => value.count!);
}

Stream<List<T>> queryCollection<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Filter filterIn(String field, List? list) => (list?.isEmpty ?? true)
    ? Filter(field, whereIn: null)
    : Filter(field, whereIn: list);

Filter filterArrayContainsAny(String field, List? list) =>
    (list?.isEmpty ?? true)
        ? Filter(field, arrayContainsAny: null)
        : Filter(field, arrayContainsAny: list);

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) =>
      (list?.isEmpty ?? true)
          ? where(field, arrayContainsAny: null)
          : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

// Creates a Firestore document representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UsersRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    currentUserDocument = await UsersRecord.getDocumentOnce(userRecord);
    return;
  }

  final userData = createUsersRecordData(
    email: user.email ??
        FirebaseAuth.instance.currentUser?.email ??
        user.providerData.firstOrNull?.email,
    displayName:
        user.displayName ?? FirebaseAuth.instance.currentUser?.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
  currentUserDocument = UsersRecord.getDocumentFromData(userData, userRecord);
}

Future updateUserDocument({String? email}) async {
  await currentUserDocument?.reference
      .update(createUsersRecordData(email: email));
}
