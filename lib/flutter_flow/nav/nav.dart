import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? HomeWidget() : PropagandainicalWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? HomeWidget()
              : PropagandainicalWidget(),
        ),
        FFRoute(
          name: HomeWidget.routeName,
          path: HomeWidget.routePath,
          builder: (context, params) => HomeWidget(
            fromRegister: params.getParam(
              'fromRegister',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: IngressosCompradosAnunciadosWidget.routeName,
          path: IngressosCompradosAnunciadosWidget.routePath,
          builder: (context, params) => IngressosCompradosAnunciadosWidget(
            menorValor: params.getParam(
              'menorValor',
              ParamType.bool,
            ),
            maiorValor: params.getParam(
              'maiorValor',
              ParamType.bool,
            ),
            data: params.getParam(
              'data',
              ParamType.bool,
            ),
            normal: params.getParam(
              'normal',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: MeusingressosWidget.routeName,
          path: MeusingressosWidget.routePath,
          builder: (context, params) => MeusingressosWidget(),
        ),
        FFRoute(
          name: UserspageWidget.routeName,
          path: UserspageWidget.routePath,
          builder: (context, params) => UserspageWidget(),
        ),
        FFRoute(
          name: PropagandainicalWidget.routeName,
          path: PropagandainicalWidget.routePath,
          builder: (context, params) => PropagandainicalWidget(),
        ),
        FFRoute(
          name: TermoseCondiesdeUsoWidget.routeName,
          path: TermoseCondiesdeUsoWidget.routePath,
          builder: (context, params) => TermoseCondiesdeUsoWidget(),
        ),
        FFRoute(
          name: Ativarnot2Widget.routeName,
          path: Ativarnot2Widget.routePath,
          builder: (context, params) => Ativarnot2Widget(),
        ),
        FFRoute(
          name: SelecionaridiomaWidget.routeName,
          path: SelecionaridiomaWidget.routePath,
          builder: (context, params) => SelecionaridiomaWidget(),
        ),
        FFRoute(
          name: PaymentWidget.routeName,
          path: PaymentWidget.routePath,
          builder: (context, params) => PaymentWidget(),
        ),
        FFRoute(
          name: SecurityWidget.routeName,
          path: SecurityWidget.routePath,
          builder: (context, params) => SecurityWidget(),
        ),
        FFRoute(
          name: SobrenosWidget.routeName,
          path: SobrenosWidget.routePath,
          builder: (context, params) => SobrenosWidget(),
        ),
        FFRoute(
          name: InviteFriendsWidget.routeName,
          path: InviteFriendsWidget.routePath,
          builder: (context, params) => InviteFriendsWidget(),
        ),
        FFRoute(
          name: EditarperfilWidget.routeName,
          path: EditarperfilWidget.routePath,
          builder: (context, params) => EditarperfilWidget(
            editarperfilREF: params.getParam(
              'editarperfilREF',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
            notcompraVendedor: params.getParam(
              'notcompraVendedor',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['notification-Compra_Ingresso-Vendedor'],
            ),
          ),
        ),
        FFRoute(
          name: Criarconta2Widget.routeName,
          path: Criarconta2Widget.routePath,
          builder: (context, params) => Criarconta2Widget(),
        ),
        FFRoute(
          name: EsqueciSenhaWidget.routeName,
          path: EsqueciSenhaWidget.routePath,
          builder: (context, params) => EsqueciSenhaWidget(),
        ),
        FFRoute(
          name: EsqueciSenha2Widget.routeName,
          path: EsqueciSenha2Widget.routePath,
          builder: (context, params) => EsqueciSenha2Widget(),
        ),
        FFRoute(
          name: EsqueciSenha3Widget.routeName,
          path: EsqueciSenha3Widget.routePath,
          builder: (context, params) => EsqueciSenha3Widget(),
        ),
        FFRoute(
          name: PerguntasloginWidget.routeName,
          path: PerguntasloginWidget.routePath,
          builder: (context, params) => PerguntasloginWidget(),
        ),
        FFRoute(
          name: NotificatiosWidget.routeName,
          path: NotificatiosWidget.routePath,
          asyncParams: {
            'users': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => NotificatiosWidget(
            usersREF: params.getParam(
              'usersREF',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
            users: params.getParam(
              'users',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: IngressoEspecificoCompradoWidget.routeName,
          path: IngressoEspecificoCompradoWidget.routePath,
          builder: (context, params) => IngressoEspecificoCompradoWidget(
            ingressoCompradoREF: params.getParam(
              'ingressoCompradoREF',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['ingressos_comprados'],
            ),
          ),
        ),
        FFRoute(
          name: EscreverAvaliacaoWidget.routeName,
          path: EscreverAvaliacaoWidget.routePath,
          builder: (context, params) => EscreverAvaliacaoWidget(
            avaliacaoNOTRef: params.getParam(
              'avaliacaoNOTRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Notification-Envio_do_Ingresso'],
            ),
          ),
        ),
        FFRoute(
          name: ProcurarIngressoWidget.routeName,
          path: ProcurarIngressoWidget.routePath,
          builder: (context, params) => ProcurarIngressoWidget(),
        ),
        FFRoute(
          name: TodososingressosWidget.routeName,
          path: TodososingressosWidget.routePath,
          builder: (context, params) => TodososingressosWidget(
            maiorValor: params.getParam(
              'maiorValor',
              ParamType.bool,
            ),
            menorValor: params.getParam(
              'menorValor',
              ParamType.bool,
            ),
            data: params.getParam(
              'data',
              ParamType.bool,
            ),
            normal: params.getParam(
              'normal',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: AdcionarcartaoWidget.routeName,
          path: AdcionarcartaoWidget.routePath,
          builder: (context, params) => AdcionarcartaoWidget(),
        ),
        FFRoute(
          name: ConfiguracoesadcionaisWidget.routeName,
          path: ConfiguracoesadcionaisWidget.routePath,
          builder: (context, params) => ConfiguracoesadcionaisWidget(),
        ),
        FFRoute(
          name: EscolhercidadeWidget.routeName,
          path: EscolhercidadeWidget.routePath,
          builder: (context, params) => EscolhercidadeWidget(),
        ),
        FFRoute(
          name: ReportEventWidget.routeName,
          path: ReportEventWidget.routePath,
          builder: (context, params) => ReportEventWidget(),
        ),
        FFRoute(
          name: CheckoutWidget.routeName,
          path: CheckoutWidget.routePath,
          builder: (context, params) => CheckoutWidget(
            ingressosREF: params.getParam(
              'ingressosREF',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['ingressos'],
            ),
          ),
        ),
        FFRoute(
          name: CartaodecreditoWidget.routeName,
          path: CartaodecreditoWidget.routePath,
          builder: (context, params) => CartaodecreditoWidget(
            ingressoREF: params.getParam(
              'ingressoREF',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['ingressos'],
            ),
          ),
        ),
        FFRoute(
          name: SucessPaymentWidget.routeName,
          path: SucessPaymentWidget.routePath,
          builder: (context, params) => SucessPaymentWidget(
            eventData: params.getParam(
              'eventData',
              ParamType.DataStruct,
              isList: false,
              structBuilder: EventsStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: PerfilVendedorWidget.routeName,
          path: PerfilVendedorWidget.routePath,
          asyncParams: {
            'avaliacao': getDoc(['users', 'AVALIACAO_de_USUARIO'],
                AVALIACAODeUSUARIORecord.fromSnapshot),
          },
          builder: (context, params) => PerfilVendedorWidget(
            perfilvendedorREF: params.getParam(
              'perfilvendedorREF',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
            avaliacao: params.getParam(
              'avaliacao',
              ParamType.Document,
            ),
            avaliacaoREF: params.getParam(
              'avaliacaoREF',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'AVALIACAO_de_USUARIO'],
            ),
          ),
        ),
        FFRoute(
          name: ProcurarIngresssoCOmpradoWidget.routeName,
          path: ProcurarIngresssoCOmpradoWidget.routePath,
          builder: (context, params) => ProcurarIngresssoCOmpradoWidget(),
        ),
        FFRoute(
          name: Criarconta4Widget.routeName,
          path: Criarconta4Widget.routePath,
          builder: (context, params) => Criarconta4Widget(),
        ),
        FFRoute(
          name: AtivarNOTWidget.routeName,
          path: AtivarNOTWidget.routePath,
          builder: (context, params) => AtivarNOTWidget(),
        ),
        FFRoute(
          name: IngressoEspecifico2Widget.routeName,
          path: IngressoEspecifico2Widget.routePath,
          builder: (context, params) => IngressoEspecifico2Widget(
            data: params.getParam(
              'data',
              ParamType.DataStruct,
              isList: false,
              structBuilder: TrandingEventsStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: FindNewEventsWidget.routeName,
          path: FindNewEventsWidget.routePath,
          builder: (context, params) => FindNewEventsWidget(),
        ),
        FFRoute(
          name: PerfilEventoWidget.routeName,
          path: PerfilEventoWidget.routePath,
          builder: (context, params) => PerfilEventoWidget(
            eventoREF: params.getParam(
              'eventoREF',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['EventosBrasil'],
            ),
          ),
        ),
        FFRoute(
          name: AdicionarIngressoWidget.routeName,
          path: AdicionarIngressoWidget.routePath,
          builder: (context, params) => AdicionarIngressoWidget(),
        ),
        FFRoute(
          name: LeilaoWidget.routeName,
          path: LeilaoWidget.routePath,
          builder: (context, params) => LeilaoWidget(),
        ),
        FFRoute(
          name: LanceespecificoWidget.routeName,
          path: LanceespecificoWidget.routePath,
          builder: (context, params) => LanceespecificoWidget(),
        ),
        FFRoute(
          name: TodososEVENTOSWidget.routeName,
          path: TodososEVENTOSWidget.routePath,
          builder: (context, params) => TodososEVENTOSWidget(),
        ),
        FFRoute(
          name: CategoriashowWidget.routeName,
          path: CategoriashowWidget.routePath,
          builder: (context, params) => CategoriashowWidget(),
        ),
        FFRoute(
          name: StatuspixWidget.routeName,
          path: StatuspixWidget.routePath,
          builder: (context, params) => StatuspixWidget(
            ingressoREF: params.getParam(
              'ingressoREF',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['ingressos'],
            ),
          ),
        ),
        FFRoute(
          name: IngressoespecificoAlcanceWidget.routeName,
          path: IngressoespecificoAlcanceWidget.routePath,
          builder: (context, params) => IngressoespecificoAlcanceWidget(
            ingressoREF: params.getParam(
              'ingressoREF',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['ingressos'],
            ),
          ),
        ),
        FFRoute(
          name: Seloverificadoetapa2Widget.routeName,
          path: Seloverificadoetapa2Widget.routePath,
          builder: (context, params) => Seloverificadoetapa2Widget(),
        ),
        FFRoute(
          name: InformacoesdeVENDAVENDEDORWidget.routeName,
          path: InformacoesdeVENDAVENDEDORWidget.routePath,
          builder: (context, params) => InformacoesdeVENDAVENDEDORWidget(
            notVendaComprador: params.getParam(
              'notVendaComprador',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['notification-Compra_Ingresso-Vendedor'],
            ),
          ),
        ),
        FFRoute(
          name: AdicionardadosbancariosWidget.routeName,
          path: AdicionardadosbancariosWidget.routePath,
          builder: (context, params) => AdicionardadosbancariosWidget(),
        ),
        FFRoute(
          name: PagamentoverificadoWidget.routeName,
          path: PagamentoverificadoWidget.routePath,
          builder: (context, params) => PagamentoverificadoWidget(),
        ),
        FFRoute(
          name: SuporteaoclienteWidget.routeName,
          path: SuporteaoclienteWidget.routePath,
          builder: (context, params) => SuporteaoclienteWidget(),
        ),
        FFRoute(
          name: AvaliacoesWidget.routeName,
          path: AvaliacoesWidget.routePath,
          asyncParams: {
            'userDocument': getDoc(['users'], UsersRecord.fromSnapshot),
            'usersAVALIACAOREF': getDoc(['Notification-Envio_do_Ingresso'],
                NotificationEnvioDoIngressoRecord.fromSnapshot),
          },
          builder: (context, params) => AvaliacoesWidget(
            vendedorREF: params.getParam(
              'vendedorREF',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'AVALIACAO_de_USUARIO'],
            ),
            users: params.getParam(
              'users',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
            userDocument: params.getParam(
              'userDocument',
              ParamType.Document,
            ),
            usersAVALIACAOREF: params.getParam(
              'usersAVALIACAOREF',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: EventosdomesWidget.routeName,
          path: EventosdomesWidget.routePath,
          builder: (context, params) => EventosdomesWidget(),
        ),
        FFRoute(
          name: Lanceenviado2Widget.routeName,
          path: Lanceenviado2Widget.routePath,
          builder: (context, params) => Lanceenviado2Widget(),
        ),
        FFRoute(
          name: IngressoEspecfico1CopyWidget.routeName,
          path: IngressoEspecfico1CopyWidget.routePath,
          builder: (context, params) => IngressoEspecfico1CopyWidget(
            ingressoREF: params.getParam(
              'ingressoREF',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['ingressos'],
            ),
          ),
        ),
        FFRoute(
          name: CategoriafestaWidget.routeName,
          path: CategoriafestaWidget.routePath,
          builder: (context, params) => CategoriafestaWidget(),
        ),
        FFRoute(
          name: CategoriaesporteWidget.routeName,
          path: CategoriaesporteWidget.routePath,
          builder: (context, params) => CategoriaesporteWidget(),
        ),
        FFRoute(
          name: CategoriateatroWidget.routeName,
          path: CategoriateatroWidget.routePath,
          builder: (context, params) => CategoriateatroWidget(),
        ),
        FFRoute(
          name: PoliticadedevolucaoWidget.routeName,
          path: PoliticadedevolucaoWidget.routePath,
          builder: (context, params) => PoliticadedevolucaoWidget(),
        ),
        FFRoute(
          name: PoliticadecompravendaWidget.routeName,
          path: PoliticadecompravendaWidget.routePath,
          builder: (context, params) => PoliticadecompravendaWidget(),
        ),
        FFRoute(
          name: PoliticadeprivacidadeWidget.routeName,
          path: PoliticadeprivacidadeWidget.routePath,
          builder: (context, params) => PoliticadeprivacidadeWidget(),
        ),
        FFRoute(
          name: PolitTERMOSDEUSOWidget.routeName,
          path: PolitTERMOSDEUSOWidget.routePath,
          builder: (context, params) => PolitTERMOSDEUSOWidget(),
        ),
        FFRoute(
          name: PolitTAXADESERVICOWidget.routeName,
          path: PolitTAXADESERVICOWidget.routePath,
          builder: (context, params) => PolitTAXADESERVICOWidget(),
        ),
        FFRoute(
          name: PolitPROCESSOVERIFICADOWidget.routeName,
          path: PolitPROCESSOVERIFICADOWidget.routePath,
          builder: (context, params) => PolitPROCESSOVERIFICADOWidget(),
        ),
        FFRoute(
          name: CriarLOGINWidget.routeName,
          path: CriarLOGINWidget.routePath,
          builder: (context, params) => CriarLOGINWidget(),
        ),
        FFRoute(
          name: PoliticasCopyWidget.routeName,
          path: PoliticasCopyWidget.routePath,
          builder: (context, params) => PoliticasCopyWidget(),
        ),
        FFRoute(
          name: Criarconta1Widget.routeName,
          path: Criarconta1Widget.routePath,
          builder: (context, params) => Criarconta1Widget(),
        ),
        FFRoute(
          name: Criarconta3Widget.routeName,
          path: Criarconta3Widget.routePath,
          builder: (context, params) => Criarconta3Widget(),
        ),
        FFRoute(
          name: WalletWidget.routeName,
          path: WalletWidget.routePath,
          builder: (context, params) => WalletWidget(),
        ),
        FFRoute(
          name: InformacoesdeVENDACOMPRADORWidget.routeName,
          path: InformacoesdeVENDACOMPRADORWidget.routePath,
          builder: (context, params) => InformacoesdeVENDACOMPRADORWidget(
            notcompraREF: params.getParam(
              'notcompraREF',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['notification-Compra_Ingresso-Comprador'],
            ),
          ),
        ),
        FFRoute(
          name: Aumentaralcance1Widget.routeName,
          path: Aumentaralcance1Widget.routePath,
          builder: (context, params) => Aumentaralcance1Widget(),
        ),
        FFRoute(
          name: ChatSuporteWidget.routeName,
          path: ChatSuporteWidget.routePath,
          builder: (context, params) => ChatSuporteWidget(),
        ),
        FFRoute(
          name: EditardadosbancariosWidget.routeName,
          path: EditardadosbancariosWidget.routePath,
          builder: (context, params) => EditardadosbancariosWidget(),
        ),
        FFRoute(
          name: InformacoesdeENVIOCOMPROVANTEWidget.routeName,
          path: InformacoesdeENVIOCOMPROVANTEWidget.routePath,
          builder: (context, params) => InformacoesdeENVIOCOMPROVANTEWidget(
            enviodoingressoREF: params.getParam(
              'enviodoingressoREF',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Notification-Envio_do_Ingresso'],
            ),
            users: params.getParam(
              'users',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: EscreverDenunciaWidget.routeName,
          path: EscreverDenunciaWidget.routePath,
          builder: (context, params) => EscreverDenunciaWidget(
            users: params.getParam(
              'users',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/propagandainical';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/open_app.gif',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
