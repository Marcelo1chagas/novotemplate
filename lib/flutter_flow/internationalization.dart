import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['pt', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? ptText = '',
    String? enText = '',
  }) =>
      [ptText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // home
  {
    'uc2iewug': {
      'pt': 'Localização',
      'en': 'Location',
    },
    'j1k9nogt': {
      'pt': 'Belo Horizonte',
      'en': 'Belo Horizonte',
    },
    'ycy0ftzi': {
      'pt': 'Descubra shows ao vivo...',
      'en': 'Discover live shows...',
    },
    'a4ec9i9z': {
      'pt': 'Este mês',
      'en': 'This month',
    },
    'mek4v64c': {
      'pt': '28 events',
      'en': '28 events',
    },
    '6cbali5j': {
      'pt': 'Destaque',
      'en': 'Emphasis',
    },
    'kz5b4h9f': {
      'pt': '8 events',
      'en': '8 events',
    },
    '26zslter': {
      'pt': 'Esta noite',
      'en': 'Tonight',
    },
    'k80i2lxn': {
      'pt': '15 events',
      'en': '15 events',
    },
    '4ipkfxha': {
      'pt': 'Popular',
      'en': 'Popular',
    },
    'dpe6wlnn': {
      'pt': '36 events',
      'en': '36 events',
    },
    'oavi0dn3': {
      'pt': 'Categorias',
      'en': 'Categories',
    },
    'y4pauzoa': {
      'pt': 'Ver tudo',
      'en': 'See all',
    },
    'bqrr4rvy': {
      'pt': 'Festas',
      'en': 'Parties',
    },
    '06hg16dh': {
      'pt': 'Shows',
      'en': 'Shows',
    },
    'b7ykputm': {
      'pt': 'Esportes',
      'en': 'Sports',
    },
    'cpnpwfhm': {
      'pt': 'Teatros',
      'en': 'Theaters',
    },
    '5io4j3sk': {
      'pt': 'Melhores Ofertas',
      'en': 'Best Offers',
    },
    '9hpo6opk': {
      'pt': 'Ver tudo',
      'en': 'See all',
    },
    'joz50rtk': {
      'pt': 'Proximos Eventos',
      'en': 'Upcoming Events',
    },
    'w10pqesr': {
      'pt': 'Eventos em ordem cronológica',
      'en': 'Events in chronological order',
    },
    'knonvuat': {
      'pt': 'Popular na sua cidade',
      'en': 'Popular in your city',
    },
    '2oawhw52': {
      'pt': 'Ver tudo',
      'en': 'See all',
    },
    'swrohc8f': {
      'pt': 'Eventos que combinam com você',
      'en': 'Events that suit you',
    },
    '8szg8plr': {
      'pt':
          'Deslize por um mundo de eventos empolgantes feitos especialmente para você!',
      'en': 'Glide through a world of exciting events made just for you!',
    },
    'gqdrma8q': {
      'pt': 'Explorar eventos',
      'en': 'Explore events',
    },
    'yfrhnj0u': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // IngressosCompradosAnunciados
  {
    'qa49tj9p': {
      'pt': 'Anunciados',
      'en': 'Announced',
    },
    'xf8nnuvp': {
      'pt': 'Comprados',
      'en': 'Purchased',
    },
    'qqpf272p': {
      'pt': 'Disponível',
      'en': 'Available',
    },
    'w507yq2r': {
      'pt': 'Vendido',
      'en': 'Sold',
    },
    'k6706r83': {
      'pt': 'Disponível',
      'en': 'Available',
    },
    'wtuwi36b': {
      'pt': 'Vendido',
      'en': 'Sold',
    },
    'yavljbcu': {
      'pt': 'Disponível',
      'en': 'Available',
    },
    'f0h8i3xt': {
      'pt': 'Vendido',
      'en': 'Sold',
    },
    '2a418r4f': {
      'pt': 'Meus ingressos',
      'en': 'My tickets',
    },
    'sq9rvm5o': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // meusingressos
  {
    '3lyyfpx3': {
      'pt': 'Favoritos',
      'en': 'Favorites',
    },
    'z9hk2o2d': {
      'pt': 'Ativos',
      'en': 'Assets',
    },
    'c0ep3y87': {
      'pt': 'Lance enviado',
      'en': 'Bid sent',
    },
    '70j0ssvn': {
      'pt': '4.9',
      'en': '4.9',
    },
    'xli7zdq6': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // userspage
  {
    '4ped4vsv': {
      'pt': 'Likes',
      'en': 'Likes',
    },
    'zjfd69m9': {
      'pt': 'Vendidos',
      'en': 'Sold',
    },
    'fj4ifwm5': {
      'pt': 'Comprados',
      'en': 'Purchased',
    },
    'r06e2twd': {
      'pt': 'CONTA',
      'en': 'ACCOUNT',
    },
    '9i5q1vw1': {
      'pt': 'Conta',
      'en': 'Account',
    },
    'cnx2q59f': {
      'pt': 'Editar perfil',
      'en': 'Edit profile',
    },
    's3h60kit': {
      'pt': 'Meus Ingressos',
      'en': 'My Tickets',
    },
    '66kkti8v': {
      'pt': 'Ingressos comprados e vendidos',
      'en': 'Tickets bought and sold',
    },
    '8zgtxq5n': {
      'pt': 'Wallet',
      'en': 'Wallet',
    },
    '7vifw9hl': {
      'pt': 'Veja o valor disponíveis para saque ',
      'en': 'See the amount available for withdrawal',
    },
    'fsy4c1v7': {
      'pt': 'Leilão',
      'en': 'Auction',
    },
    'vhizqeee': {
      'pt': 'Lances Recebidos',
      'en': 'Bids Received',
    },
    'p1eueqpi': {
      'pt': 'Verificado',
      'en': 'Verified',
    },
    '3cu00m33': {
      'pt': 'Perfil Verificado',
      'en': 'Verified Profile',
    },
    'op500v2p': {
      'pt': 'INFORMAÇÕES',
      'en': 'INFORMATION',
    },
    '27ypddgj': {
      'pt': 'Aumentar Alcance',
      'en': 'Increase Reach',
    },
    'ogzj2mtz': {
      'pt': 'Mais visibilidade, mais oportunidades',
      'en': 'More visibility, more opportunities',
    },
    'gja5t4o5': {
      'pt': 'Suporte',
      'en': 'Support',
    },
    'z5xuphzt': {
      'pt': 'Perguntas Frequentes / Suporte',
      'en': 'FAQ / Support',
    },
    'niel3z2j': {
      'pt': 'Notificações',
      'en': 'Notifications',
    },
    '0ez1c7vs': {
      'pt': 'Notificações Push e por Email',
      'en': 'Push and Email Notifications',
    },
    '9acnuyyk': {
      'pt': 'Políticas',
      'en': 'Policies',
    },
    'np6adm74': {
      'pt': 'Políticas',
      'en': 'Policies',
    },
    'uajjzhb9': {
      'pt': 'PREFERÊNCIAS',
      'en': 'PREFERENCES',
    },
    'a0vyec7r': {
      'pt': 'Configurações adicionais',
      'en': 'Additional settings',
    },
    'xz2sgky9': {
      'pt': 'Idioma / Alterar Tema',
      'en': 'Language / Change Theme',
    },
    'mbvqg2od': {
      'pt': 'Segurança',
      'en': 'Security',
    },
    'ufljps9p': {
      'pt': 'Privacidade e Segurança',
      'en': 'Privacy and Security',
    },
    'z65uwd25': {
      'pt': 'Avalie nosso app',
      'en': 'Rate our app',
    },
    'd13botlv': {
      'pt': 'Sua opinião é importante para nós',
      'en': 'Your opinion is important to us',
    },
    '2boqpmlj': {
      'pt': 'Convide amigos',
      'en': 'Invite friends',
    },
    '873cnw83': {
      'pt': 'Ganhe recompensas ao indicar',
      'en': 'Earn rewards by referring',
    },
    '13nn3vto': {
      'pt': 'App version 2.01.0',
      'en': 'App version 2.01.0',
    },
    'tjy3w253': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // Propagandainical
  {
    '6dgooudo': {
      'pt': 'DESCUBRA EVENTOS PERTO DE VOCÊ',
      'en': 'DISCOVER EVENTS NEAR YOU',
    },
    'zemwgzxw': {
      'pt':
          'Explore uma seleção exclusiva dos melhores shows, festas, esportes e teatros na sua cidade. ',
      'en':
          'Explore an exclusive selection of the best shows, parties, sports and theater in your city.',
    },
    'oexldf3r': {
      'pt': 'REVENDA SEUS INGRESSOS',
      'en': 'RESELL YOUR TICKETS',
    },
    'ij9ze5tf': {
      'pt':
          'Revenda seus ingressos sem complicação, gerencie suas vendas e aproveite uma experiência completa do começo ao fim.',
      'en':
          'Resell your tickets hassle-free, manage your sales and enjoy a complete experience from start to finish.',
    },
    '5zwiuj58': {
      'pt': 'NUNCA PERCA UMA OPORTUNIDADE',
      'en': 'NEVER MISS AN OPPORTUNITY',
    },
    'ercxt7ii': {
      'pt':
          'Receba alertas em tempo real sobre ingressos, descontos e eventos\n que você ama.',
      'en': 'Get real-time alerts on tickets, discounts and events\nyou love.',
    },
    'soy9tvmh': {
      'pt': 'SEU CALENDÁRIO DE DIVERSÃO',
      'en': 'YOUR FUN CALENDAR',
    },
    '97zf4pls': {
      'pt':
          'Salve seus eventos favoritos e receba lembretes para garantir sua presença nos melhores momentos.',
      'en':
          'Save your favorite events and receive reminders to ensure you\'re there for the best moments.',
    },
    '7duzw3n2': {
      'pt': 'PRÓXIMO',
      'en': 'NEXT',
    },
    'v6h0cy8v': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // TermoseCondiesdeUso
  {
    'zkir0zlo': {
      'pt': 'Termos e Condições de Uso',
      'en': 'Terms and Conditions of Use',
    },
    '4moi88gq': {
      'pt':
          '1. Aceitação dos Termos\nAo acessar e utilizar a plataforma Ticket Exchange, você concorda em cumprir estes Termos e Condições, além de todas as leis aplicáveis. Se não concordar, por favor, não utilize nossos serviços.\n\n2. Serviços\nA Ticket Exchange oferece uma plataforma segura para compra e revenda de ingressos para eventos diversos, incluindo shows, teatros, festas e eventos esportivos. Somos intermediários e não somos responsáveis pela organização dos eventos.\n\n3. Cadastro e Conta\nPara utilizar nossos serviços, é necessário criar uma conta com informações verdadeiras e atualizadas. Você é responsável pela segurança da sua conta e por todas as atividades realizadas nela.\n\n4. Compra e Venda de Ingressos\nOs usuários podem comprar e vender ingressos entre si. A Ticket Exchange facilita essa transação, aplicando uma taxa de serviço. Todas as vendas são finais, salvo casos previstos em lei.\n\n5. Taxas e Pagamentos\nAs taxas aplicadas e os métodos de pagamento disponíveis estão detalhados na plataforma. O não pagamento ou tentativa de fraude pode resultar em bloqueio da conta.\n\n6. Política de Cancelamento e Reembolso\nCancelamentos e reembolsos seguem as políticas específicas de cada evento e vendedor, além da legislação vigente. A Ticket Exchange atua como facilitadora, sem intermediar reembolsos diretamente.\n\n7. Responsabilidades\nA Ticket Exchange não se responsabiliza por problemas relacionados a eventos, como cancelamentos, alterações de data ou qualidade do serviço prestado pelos organizadores.\n\n8. Privacidade\nSeus dados pessoais são tratados conforme nossa Política de Privacidade, disponível na plataforma.\n\n9. Propriedade Intelectual\nTodo conteúdo, marcas e direitos autorais presentes na plataforma são propriedade da Ticket Exchange ou de terceiros licenciantes.\n\n10. Modificações nos Termos\nPodemos alterar estes Termos a qualquer momento, notificando os usuários pelas ferramentas da plataforma. O uso continuado implica aceitação das alterações.',
      'en':
          '1. Acceptance of Terms\nBy accessing and using the Ticket Exchange platform, you agree to comply with these Terms and Conditions, in addition to all applicable laws. If you do not agree, please do not use our services.\n\n2. Services\nTicket Exchange offers a secure platform for purchasing and reselling tickets for various events, including concerts, theaters, parties and sporting events. We are intermediaries and are not responsible for organizing the events.\n\n3. Registration and Account\nTo use our services, you must create an account with true and updated information. You are responsible for the security of your account and for all activities carried out on it.\n\n4. Buying and Selling Tickets\nUsers can buy and sell tickets among themselves. Ticket Exchange facilitates this transaction, applying a service fee. All sales are final, except in cases provided for by law.\n\n5. Fees and Payments\nThe fees applied and the payment methods available are detailed on the platform. Non-payment or attempted fraud may result in account blocking.\n\n6. Cancellation and Refund Policy\nCancellations and refunds follow the specific policies of each event and seller, in addition to current legislation. Ticket Exchange acts as a facilitator, without directly mediating refunds.\n\n7. Responsibilities\nTicket Exchange is not responsible for problems related to events, such as cancellations, date changes or quality of service provided by organizers.\n\n8. Privacy\nYour personal data is treated in accordance with our Privacy Policy, available on the platform.\n\n9. Intellectual Property\nAll content, brands and copyrights present on the platform are the property of Ticket Exchange or third-party licensors.\n\n10. Modifications to the Terms\nWe may change these Terms at any time, notifying users through the platform tools. Continued use implies acceptance of the changes.',
    },
    'x5i8qgod': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // ativarnot2
  {
    'uosunc6v': {
      'pt': 'Notificações',
      'en': 'Notifications',
    },
    'n6s57fgp': {
      'pt': 'Por onde deseja receber notificações?',
      'en': 'Where do you want to receive notifications?',
    },
    '4kaudvtc': {
      'pt': 'E-mail',
      'en': 'E-mail',
    },
    '5w96e4ga': {
      'pt': 'Celular',
      'en': 'Cell phone',
    },
    'r0imo0we': {
      'pt': 'Aplicativo',
      'en': 'Application',
    },
    'f0y90xzg': {
      'pt': 'Tipos de Notificação:',
      'en': 'Notification Types:',
    },
    'efwlmxw3': {
      'pt': 'Todas',
      'en': 'All',
    },
    '1gfswgq5': {
      'pt': 'Pagamentos',
      'en': 'Payments',
    },
    'ljk24cvy': {
      'pt': 'Atualizações do App',
      'en': 'App Updates',
    },
    'adx32dz2': {
      'pt': 'Lances recebidos',
      'en': 'Bids received',
    },
    '3vt7cq9s': {
      'pt': 'Ingresso vendidos',
      'en': 'Tickets sold',
    },
    '4or5bc07': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // Selecionaridioma
  {
    'lwswmys5': {
      'pt': 'Selecione o idioma',
      'en': 'Select language',
    },
    'n05xe784': {
      'pt': 'Português',
      'en': 'Portuguese',
    },
    'ds0wh7z4': {
      'pt': 'Inglês',
      'en': 'English',
    },
    '0ie0x0vc': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // Payment
  {
    'aserlj6t': {
      'pt': 'Payment',
      'en': 'Payment',
    },
    'virq6dv1': {
      'pt': 'PayPal',
      'en': 'PayPal',
    },
    'jkzgwry9': {
      'pt': 'Connected',
      'en': 'Connected',
    },
    'bde0prf6': {
      'pt': 'Google Play',
      'en': 'Google Play',
    },
    '6aghtw75': {
      'pt': 'Connected',
      'en': 'Connected',
    },
    '9nwtr7ha': {
      'pt': '**** 3456',
      'en': '**** 3456',
    },
    'bh1hq0sc': {
      'pt': 'Connected',
      'en': 'Connected',
    },
    'bf7aqkh3': {
      'pt': '**** 6388',
      'en': '**** 6388',
    },
    'qwlnspwb': {
      'pt': 'Connected',
      'en': 'Connected',
    },
    'bpil4utp': {
      'pt': 'Add New Card',
      'en': 'Add New Card',
    },
    '5gbor5hv': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // Security
  {
    'r136fxq7': {
      'pt': 'Segurança',
      'en': 'Security',
    },
    'ox8vmy9f': {
      'pt': 'Lembrar-me',
      'en': 'Remember me',
    },
    'ex3hhcho': {
      'pt': 'Face ID',
      'en': 'Face ID',
    },
    'lli8qr9p': {
      'pt': 'Senha ID',
      'en': 'Password ID',
    },
    'vxh5gbat': {
      'pt': 'Alterar Senha',
      'en': 'Change Password',
    },
    '729naykh': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // Sobrenos
  {
    'tm5l6ygk': {
      'pt': 'Sobre a Ticket Exchange',
      'en': 'About Ticket Exchange',
    },
    'h07503do': {
      'pt':
          'A Ticket Exchange é a plataforma líder e mais segura para compra e revenda de ingressos no Brasil. Inspirados pelo conceito do “Mercado Livre dos ingressos”, oferecemos um ambiente confiável, transparente e ágil para que você possa comprar, vender e negociar ingressos para shows, teatros, festas e eventos esportivos com total segurança.\n\nNosso compromisso é conectar fãs a eventos incríveis, garantindo a melhor experiência na revenda de ingressos, com taxas justas, atendimento personalizado e tecnologia de ponta para proteger cada transação.\n\nSeja você um comprador em busca do ingresso ideal ou um vendedor querendo alcançar o maior número de pessoas, a Ticket Exchange é o seu parceiro de confiança para transformar seu acesso aos melhores eventos.\n\nVenha fazer parte dessa comunidade e viva a emoção dos melhores momentos!',
      'en':
          'Ticket Exchange is the leading and safest platform for buying and reselling tickets in Brazil. Inspired by the concept of the “Free Market of Tickets”, we offer a reliable, transparent and agile environment so that you can buy, sell and negotiate tickets for concerts, theaters, parties and sporting events with total security.\n\nOur commitment is to connect fans to incredible events, ensuring the best experience in ticket resale, with fair rates, personalized service and cutting-edge technology to protect each transaction.\n\nWhether you are a buyer looking for the ideal ticket or a seller wanting to reach the largest number of people, Ticket Exchange is your trusted partner to transform your access to the best events.\n\nCome be part of this community and experience the excitement of the best moments!',
    },
    'xs04bbmb': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // InviteFriends
  {
    '8ilaufgm': {
      'pt': 'Invite Friends',
      'en': 'Invite Friends',
    },
    'cl08bw3z': {
      'pt': 'Emily Johnson',
      'en': 'Emily Johnson',
    },
    '4n7ubgaj': {
      'pt': '+1-3002890231',
      'en': '+1-3002890231',
    },
    'q6f7qv4d': {
      'pt': 'Invite',
      'en': 'Invite',
    },
    'ekbb5evj': {
      'pt': 'Michael Smith',
      'en': 'Michael Smith',
    },
    'fio8ycm1': {
      'pt': '+1-323634532',
      'en': '+1-323634532',
    },
    'fr8eu37h': {
      'pt': 'Invited',
      'en': 'Invited',
    },
    'd4sgd6z1': {
      'pt': 'Sarah Williams',
      'en': 'Sarah Williams',
    },
    'y4bnppdw': {
      'pt': '+1-636452432',
      'en': '+1-636452432',
    },
    '57xk4zdq': {
      'pt': 'Invite',
      'en': 'Invite',
    },
    'k71jm9o8': {
      'pt': 'Jessica Brown',
      'en': 'Jessica Brown',
    },
    '35b8e7tp': {
      'pt': '+1-879352423',
      'en': '+1-879352423',
    },
    'n5fg1v1v': {
      'pt': 'Invited',
      'en': 'Invited',
    },
    'cx1y7cro': {
      'pt': 'James Anderson',
      'en': 'James Anderson',
    },
    'uhmdhgiy': {
      'pt': '+1-146345534',
      'en': '+1-146345534',
    },
    'wi46l3wy': {
      'pt': 'Invite',
      'en': 'Invite',
    },
    'i94s04vx': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // Editarperfil
  {
    '3ikpoisw': {
      'pt': 'Editar Perfil',
      'en': 'Edit Profile',
    },
    'dpc4xrjv': {
      'pt': 'Nome Completo:',
      'en': 'Full Name:',
    },
    'pqdqqsz3': {
      'pt': 'nome',
      'en': 'name',
    },
    'vzrxx4gn': {
      'pt': 'Data de Nascimento:',
      'en': 'Date of birth:',
    },
    '983zrdd9': {
      'pt': 'data de nascimento',
      'en': 'date of birth',
    },
    'we7mzj2w': {
      'pt': 'CPF:',
      'en': 'CPF:',
    },
    '9shfibs4': {
      'pt': 'cpf',
      'en': 'cpf',
    },
    'j80onbt1': {
      'pt': 'Telefone:',
      'en': 'Telephone:',
    },
    '7zvwkzu2': {
      'pt': 'celular',
      'en': 'cell phone',
    },
    'a0nbejtc': {
      'pt': 'Email:',
      'en': 'E-mail:',
    },
    'zmgcl1m7': {
      'pt': 'email',
      'en': 'e-mail',
    },
    'leom29hz': {
      'pt': 'Gênero:',
      'en': 'Gender:',
    },
    'c1x6apie': {
      'pt': 'Selecionar Gênero',
      'en': 'Select Genre',
    },
    'bb5nrrni': {
      'pt': 'Search...',
      'en': 'Search...',
    },
    '4urelrdk': {
      'pt': 'Masculino',
      'en': 'Masculine',
    },
    'fk2vw0se': {
      'pt': 'Feminino',
      'en': 'Feminine',
    },
    '4poalxle': {
      'pt': 'Outro',
      'en': 'Other',
    },
    'myjhekrl': {
      'pt':
          'Nosso aplicativo é permitido para maiores de 13 anos.\nApós adicionar número de telefone, CPF ou data de nascimento não é possível alterar! Confira se estão corretos.',
      'en':
          'Our app is suitable for people over 13 years of age.\nAfter adding your phone number, CPF or date of birth, you cannot change them! Make sure they are correct.',
    },
    'rjfk032i': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    '66688e00': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '6xj18q40': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    '7k3bfout': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'mqoi0mmz': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'c9045ng6': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'ftkgo9f4': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'oz8qf6lg': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'sgyklhft': {
      'pt': 'Salvar',
      'en': 'Save',
    },
    'p8hhk2t6': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // Criarconta2
  {
    'ln4w9ild': {
      'pt': 'Digite o código',
      'en': 'Enter the code',
    },
    'j093rxnt': {
      'pt':
          'Enviamos um código de verificação para o seu e-mail example@domain.com.',
      'en':
          'We have sent a verification code to your email example@domain.com.',
    },
    'vfnuu4pi': {
      'pt': 'Digite o código',
      'en': 'Enter the code',
    },
    'jaxgr681': {
      'pt': 'Emter your password',
      'en': 'Enter your password',
    },
    'dv246755': {
      'pt': '123456',
      'en': '123456',
    },
    'o143h7m4': {
      'pt': 'Próximo',
      'en': 'Next',
    },
    'rwn0jv98': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // EsqueciSenha
  {
    'qj5zzh48': {
      'pt': 'Esqueci a senha',
      'en': 'Forgot password',
    },
    'dp7n7efn': {
      'pt':
          'Digite seu e-mail no campo abaixo. Enviaremos uma nova senha por e-mail.',
      'en':
          'Enter your email address in the field below. We will send you a new password via email.',
    },
    '3n2n0rj9': {
      'pt': 'Email',
      'en': 'E-mail:',
    },
    'jvo6jhqr': {
      'pt': 'Emter your email',
      'en': 'Send your email',
    },
    'y00c3uas': {
      'pt': 'example@domain.com',
      'en': 'example@domain.com',
    },
    'aep4mr0a': {
      'pt': 'Redefinir senha',
      'en': 'Reset password',
    },
    'x557we6g': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // EsqueciSenha2
  {
    'weudcboa': {
      'pt': 'Digite o código de verificação',
      'en': 'Enter verification code',
    },
    'lyo0u7ji': {
      'pt':
          'Para continuar, por favor digite o código enviado para o seu e-mail.',
      'en': 'To continue, please enter the code sent to your email.',
    },
    '4410sajv': {
      'pt': '-',
      'en': '-',
    },
    'b8o9f0m5': {
      'pt': '5',
      'en': '5',
    },
    'smlyfe48': {
      'pt': '-',
      'en': '-',
    },
    'spz3mw4b': {
      'pt': '8',
      'en': '8',
    },
    '7s1u3gij': {
      'pt': '-',
      'en': '-',
    },
    '40n34qsm': {
      'pt': '2',
      'en': '2',
    },
    '41z3rof9': {
      'pt': '-',
      'en': '-',
    },
    '5034acu8': {
      'pt': '9',
      'en': '9',
    },
    'brnbirdt': {
      'pt': 'Você poderá reenviar o código em 54 segundos.',
      'en': 'You will be able to resend the code in 54 seconds.',
    },
    'pn402jb5': {
      'pt': 'Reenviar código',
      'en': 'Resend code',
    },
    'uhddce1i': {
      'pt': 'Continuar',
      'en': 'Continue',
    },
    'a0lvjl1s': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // EsqueciSenha3
  {
    'yvkxt94v': {
      'pt': 'Criar nova senha',
      'en': 'Create new password',
    },
    'pa4tdww6': {
      'pt': 'Para recuperar, você precisa criar uma nova senha',
      'en': 'To recover, you need to create a new password.',
    },
    'o1nafas1': {
      'pt': 'Nova senha',
      'en': 'New Password',
    },
    '3ole7vpn': {
      'pt': 'Emter your password',
      'en': 'Enter your password',
    },
    'a1u7axcv': {
      'pt': '11111111',
      'en': '11111111',
    },
    '21y976sc': {
      'pt': 'Confirmar senha',
      'en': 'Confirm password',
    },
    'iv6gcwt6': {
      'pt': 'Emter your password',
      'en': 'Enter your password',
    },
    '5m55tpp2': {
      'pt': '11111111',
      'en': '11111111',
    },
    'v4edefnv': {
      'pt': 'Criar nova senha',
      'en': 'Create new password',
    },
    'lkad5s3k': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // Perguntaslogin
  {
    'phk2zd8a': {
      'pt': 'Onde você está localizado?',
      'en': 'Where are you located?',
    },
    '7jyerda3': {
      'pt':
          'Defina sua localização para encontrar eventos locais e conhecer pessoas próximas.',
      'en': 'Set your location to find local events and meet people nearby.',
    },
    'rp65nq8t': {
      'pt': 'Search by city',
      'en': 'Search by city',
    },
    'ymeq0xng': {
      'pt': 'Belo Horizonte',
      'en': 'Belo Horizonte',
    },
    'qzngqnfj': {
      'pt': 'Usar minha localização atual',
      'en': 'Use my current location',
    },
    'im8jnwmb': {
      'pt': 'Selecione seus interesses',
      'en': 'Select your interests',
    },
    'xcwni7qo': {
      'pt': 'Explore e descubra as categorias de eventos que você mais gosta!',
      'en': 'Explore and discover the event categories you like the most!',
    },
    'hklusu2l': {
      'pt': 'What are you looking for?',
      'en': 'What are you looking for?',
    },
    're3svd82': {
      'pt': 'Select the option(s) that reflect what you\'re looking for.',
      'en': 'Select the option(s) that reflect what you\'re looking for.',
    },
    'ypjelu6x': {
      'pt': 'Siga os organizadores de eventos',
      'en': 'Follow event organizers',
    },
    'zuqbpz8o': {
      'pt':
          'Siga os maiores eventos que estão para acontecer e fique por dentro de tudo em primeira mão!',
      'en': 'Follow the biggest upcoming events and be the first to know!',
    },
    'qqgscnjz': {
      'pt': 'Continue',
      'en': 'Continue',
    },
    'lys6ozpw': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // Notificatios
  {
    'n5mtyk5k': {
      'pt': 'Notificações',
      'en': 'Notifications',
    },
    'jp33zq85': {
      'pt': 'Todos',
      'en': 'All',
    },
    '9lwkety9': {
      'pt': 'Compra',
      'en': 'Buy',
    },
    'dqplwdt4': {
      'pt': 'Vendas',
      'en': 'Sales',
    },
    '4h0vey6q': {
      'pt': 'Leilão',
      'en': 'Auction',
    },
    'suz0gjv2': {
      'pt': 'Aumento de Alcance ',
      'en': 'Increased Reach',
    },
    '2cwd3cwp': {
      'pt': 'Favoritados',
      'en': 'Favorites',
    },
    'wa1z7not': {
      'pt': 'Ingresso Recebido',
      'en': 'Ticket Received',
    },
    '4qhlq09x': {
      'pt': 'Ingresso Adicionado',
      'en': 'Ticket Added',
    },
    'env4gcsm': {
      'pt': 'Todos',
      'en': 'All',
    },
    'vje8wryi': {
      'pt': 'Venda Concluída!',
      'en': 'Sale Completed!',
    },
    '94udyz99': {
      'pt': 'Compra Concluída!',
      'en': 'Purchase Complete!',
    },
    '1uvzaj88': {
      'pt': 'Ingresso Adicionado!',
      'en': 'Ticket Added!',
    },
    'm0dpb1h6': {
      'pt': 'Seu lance foi aceito!',
      'en': 'Your bid has been accepted!',
    },
    'hhnutrb5': {
      'pt': 'Aumentar Alcance!',
      'en': 'Increase Reach!',
    },
    'i438kkh8': {
      'pt': 'Seu ingresso teve o alcance de 1 dia habilitado.',
      'en': 'Your ticket has been granted 1-day validity.',
    },
    'od33p9um': {
      'pt': 'Aumentar Alcance!',
      'en': 'Increase Reach!',
    },
    'ydna2nk7': {
      'pt': 'Seu ingresso teve o alcance de 1 dia habilitado.',
      'en': 'Your ticket has been granted 1-day validity.',
    },
    'hqik9r06': {
      'pt': 'Aumentar Alcance!',
      'en': 'Increase Reach!',
    },
    '9znmri9b': {
      'pt': 'Seu ingresso teve o alcance de 1 dia habilitado.',
      'en': 'Your ticket has been granted 1-day validity.',
    },
    'zdd2yx6n': {
      'pt': 'Favoritado!',
      'en': 'Favorited!',
    },
    'uriarbfe': {
      'pt': 'Ingresso Recebido!',
      'en': 'Ticket Received!',
    },
    'eigzxe0j': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // IngressoEspecificoComprado
  {
    'n27mxwr7': {
      'pt': 'Meu ingresso',
      'en': 'My ticket',
    },
    'xfimom9j': {
      'pt': 'Evento da categoria: Show',
      'en': 'Category event: Show',
    },
    'sszs8itc': {
      'pt': 'Data',
      'en': 'Date',
    },
    'bti5z8i9': {
      'pt': '25/06',
      'en': '25/06',
    },
    '0jvk39o5': {
      'pt': 'Localização',
      'en': 'Location',
    },
    '6sf4jhx4': {
      'pt': 'Belo Horizonte',
      'en': 'Belo Horizonte',
    },
    'wulf7nrd': {
      'pt': 'São Paulo',
      'en': 'São Paulo',
    },
    '4cpy7sh0': {
      'pt': 'Rio de Janeiro RJ',
      'en': 'Rio de Janeiro RJ',
    },
    '76j9me74': {
      'pt': 'Vitória ES',
      'en': 'Victory ES',
    },
    'e95c1kyh': {
      'pt': 'Curitiba PR',
      'en': 'Curitiba PR',
    },
    've2qo9zm': {
      'pt': 'Fortaleza CE',
      'en': 'Fortaleza CE',
    },
    '9vs187hm': {
      'pt': 'Outros...',
      'en': 'Others...',
    },
    '54yu0iae': {
      'pt': 'Balneário Camboriú SC',
      'en': 'Balneario Camboriu SC',
    },
    '3a4hhm4l': {
      'pt': 'Brasília DF',
      'en': 'Brasilia DF',
    },
    '0mq6frms': {
      'pt': 'Recife PE',
      'en': 'Recife PE',
    },
    'gwggdyj8': {
      'pt': 'Florianopólis SC',
      'en': 'Florianopolis SC',
    },
    'i5hao2tu': {
      'pt': 'Informações do Ingresso',
      'en': 'Ticket Information',
    },
    'fafhkaht': {
      'pt': 'Local do Evento',
      'en': 'Event Location',
    },
    's98xu7wf': {
      'pt': 'Plataforma do Ingresso',
      'en': 'Ticket Platform',
    },
    'puo89rg6': {
      'pt': 'Descrição',
      'en': 'Description',
    },
    '8nrr3pqb': {
      'pt': 'Informações pessoais',
      'en': 'Personal information',
    },
    'rii9q49f': {
      'pt': 'Nome do Comprador',
      'en': 'Buyer\'s Name',
    },
    'k5cij7rk': {
      'pt': 'Alex',
      'en': 'Alex',
    },
    'vjna13af': {
      'pt': 'Email',
      'en': 'E-mail',
    },
    'fio9i2lo': {
      'pt': 'magionih@gmail.com',
      'en': 'magionih@gmail.com',
    },
    'shnd400v': {
      'pt': 'Data da Compra',
      'en': 'Purchase Date',
    },
    'zfwaxmkq': {
      'pt': '268934793464',
      'en': '268934793464',
    },
    'xcq1bd55': {
      'pt': 'Status do Ingresso',
      'en': 'Ticket Status',
    },
    'bs2fxuej': {
      'pt': 'Seu ingresso está em análise',
      'en': 'Your ticket is under review',
    },
    'sok4hjde': {
      'pt': 'Aviso',
      'en': 'Notice',
    },
    '0m4cr64y': {
      'pt': 'Valor',
      'en': 'Value',
    },
    'pq1447u6': {
      'pt': 'Vendedor',
      'en': 'Seller',
    },
    'n3j10jmn': {
      'pt': 'Ultra music Festival',
      'en': 'Ultra Music Festival',
    },
    'f913jsqw': {
      'pt': '220K Followers',
      'en': '220K Followers',
    },
    'f2mfmrpl': {
      'pt': 'Seguir',
      'en': 'Follow',
    },
    'l6c7l3as': {
      'pt': 'TICKET',
      'en': 'TICKET',
    },
    'sto8y7y7': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // EscreverAvaliacao
  {
    '6bli73gj': {
      'pt': 'Avaliar Usuário',
      'en': 'Rate User',
    },
    'f3a5108y': {
      'pt': 'Detalhes da avaliação',
      'en': 'Review details',
    },
    'lxrvyine': {
      'pt': 'Nome do usuário',
      'en': 'Username',
    },
    'wb2ah6o7': {
      'pt': 'Nome da festa',
      'en': 'Party name',
    },
    'uuz9u4gw': {
      'pt':
          'Por favor, compartilhe sua experiência de compra avaliando o vendedor. Sua opinião é valiosa para nós! \nDeixe uma mensagem abaixo, seja para elogiar, criticar ou alertar. \nPedimos que mantenha sempre um tom respeitoso. ',
      'en':
          'Please share your shopping experience by rating the seller. Your opinion is valuable to us! \nLeave a message below, whether to praise, criticize or warn. \nPlease always maintain a respectful tone.',
    },
    '9bhfxnu1': {
      'pt': 'Avalie de 1 a 5:',
      'en': 'Rate from 1 to 5:',
    },
    'd2cx4ady': {
      'pt': 'Escreva sua avaliação:',
      'en': 'Write your review:',
    },
    '2mcikybi': {
      'pt': 'Digite sua avaliação aqui...',
      'en': 'Enter your review here...',
    },
    '0nkjv4jj': {
      'pt': 'Enviar',
      'en': 'To send',
    },
    'd2o23rko': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // procurarIngresso
  {
    '83d3o47w': {
      'pt': 'Descubra shows ao vivo, festivais ...',
      'en': 'Discover live shows, festivals...',
    },
    '4tamdeyb': {
      'pt': 'Buscas populares',
      'en': 'Popular searches',
    },
    'am92k791': {
      'pt': 'So track boa ',
      'en': 'So good track',
    },
    '32cw6plk': {
      'pt': 'Rock in RIO ',
      'en': 'Rock in RIO',
    },
    'zxfxchir': {
      'pt': 'Desmantello ',
      'en': 'Dismantling',
    },
    '7iuy4b26': {
      'pt': 'Categorias',
      'en': 'Categories',
    },
    'wa42zx78': {
      'pt': 'Festas',
      'en': 'Parties',
    },
    'dim6b5vk': {
      'pt': 'Shows',
      'en': 'Shows',
    },
    'qcbe87t7': {
      'pt': 'Esportes',
      'en': 'Sports',
    },
    'xsmwhs03': {
      'pt': 'Teatros',
      'en': 'Theaters',
    },
    '5kt0yusx': {
      'pt': 'Eventos ',
      'en': 'Events',
    },
    'q1gynkm3': {
      'pt': 'Resultados da pesquisa:',
      'en': 'Search results:',
    },
    'lk2w6wpj': {
      'pt': 'Explore eventos',
      'en': 'Explore events',
    },
    'jwaggwpo': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // todososingressos
  {
    'fuhb46bw': {
      'pt': 'Descubra shows, teatros...',
      'en': 'Discover shows, theaters...',
    },
    'rpets48w': {
      'pt': 'Melhores Ofertas',
      'en': 'Best Offers',
    },
    'ts9ldg8h': {
      'pt': 'Todos os ingressos',
      'en': 'All tickets',
    },
    'o3gc8cxq': {
      'pt': 'Todos os Ingressos',
      'en': 'All Tickets',
    },
    'jlf4lw4o': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // Adcionarcartao
  {
    'u3tehssh': {
      'pt': 'Add New Card',
      'en': 'Add New Card',
    },
    'nq2066ms': {
      'pt': 'Add',
      'en': 'Add',
    },
    'm4k8rtdz': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // Configuracoesadcionais
  {
    'ltghpkdf': {
      'pt': 'Configurações adicionais',
      'en': 'Additional settings',
    },
    '6scqa2je': {
      'pt': 'Modo escuro',
      'en': 'Dark mode',
    },
    'bw102dtx': {
      'pt': 'Idiomas',
      'en': 'Languages',
    },
    'jlqg44ot': {
      'pt': 'Português',
      'en': 'Portuguese',
    },
    'uv67q62d': {
      'pt': 'Inglês',
      'en': 'English',
    },
    'p4b40ow9': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // Escolhercidade
  {
    'smfgkf56': {
      'pt': ' Localização',
      'en': 'Location',
    },
    'vjsfkyai': {
      'pt': 'Buscar por cidade',
      'en': 'Search by city',
    },
    'kvhkg2ha': {
      'pt': 'Usar minha localização atual',
      'en': 'Use my current location',
    },
    'ufbkv78x': {
      'pt': 'Cidades sugeridas',
      'en': 'Suggested cities',
    },
    'ugwfk283': {
      'pt': 'Belo Horizonte, ',
      'en': 'Belo Horizonte,',
    },
    'ddsn6wke': {
      'pt': 'Brasil',
      'en': 'Brazil',
    },
    'upk870zg': {
      'pt': 'São Paulo,',
      'en': 'São Paulo,',
    },
    '2alrrzgu': {
      'pt': 'Brasil',
      'en': 'Brazil',
    },
    'nkhk6c2v': {
      'pt': 'Rio de Janeiro, ',
      'en': 'Rio de Janeiro,',
    },
    'scyhehet': {
      'pt': 'Brasil',
      'en': 'Brazil',
    },
    'klp5jono': {
      'pt': 'Vitória, ',
      'en': 'Victory,',
    },
    'wya8p2dh': {
      'pt': 'Brasil',
      'en': 'Brazil',
    },
    'ufct1m08': {
      'pt': 'Salvador,',
      'en': 'Savior,',
    },
    'pq1cd6rc': {
      'pt': ' Brasil',
      'en': 'Brazil',
    },
    '34igtsyv': {
      'pt': 'Nova Lima,',
      'en': 'New Lima,',
    },
    'g5fb778o': {
      'pt': ' Brasil',
      'en': 'Brazil',
    },
    'towvz6bw': {
      'pt': 'Balneário Camburiú,',
      'en': 'Camburiú Beach Resort,',
    },
    'sjs92a40': {
      'pt': ' Brasil',
      'en': 'Brazil',
    },
    'u1o4sp55': {
      'pt': 'Curitiba, ',
      'en': 'Curitiba,',
    },
    'z7nysc8d': {
      'pt': 'Brasil',
      'en': 'Brazil',
    },
    'kr4mvo6w': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // ReportEvent
  {
    'a4sku1j7': {
      'pt': 'Report Event',
      'en': 'Report Event',
    },
    'aaznblhq': {
      'pt': 'Reason',
      'en': 'Reason',
    },
    'i1izb5b7': {
      'pt': 'Let us know what\'s wrong',
      'en': 'Let us know what\'s wrong',
    },
    'h5u2aill': {
      'pt': 'Send',
      'en': 'Send',
    },
    't2za2mz2': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // Checkout
  {
    'fzyhjv0g': {
      'pt': 'Finalizar compra',
      'en': 'Checkout',
    },
    'k47b3ywz': {
      'pt': 'Data',
      'en': 'Date',
    },
    'mbz0q322': {
      'pt': 'Cidade',
      'en': 'City',
    },
    'dhbcg4h0': {
      'pt': 'Belo Horizonte MG',
      'en': 'Belo Horizonte MG',
    },
    'p40erfeq': {
      'pt': 'São Paulo SP',
      'en': 'Sao Paulo SP',
    },
    'r74y52zr': {
      'pt': 'Rio de Janeiro RJ',
      'en': 'Rio de Janeiro RJ',
    },
    'w6am2z1y': {
      'pt': 'Vitória ES',
      'en': 'Victory ES',
    },
    'ejwl7a55': {
      'pt': 'Curitiba PR',
      'en': 'Curitiba PR',
    },
    'im0a5kn1': {
      'pt': 'Fortaleza CE',
      'en': 'Fortaleza CE',
    },
    '1cyhxyfl': {
      'pt': 'Outros...',
      'en': 'Others...',
    },
    'nnvhdu2z': {
      'pt': 'Balneário Camboriú SC',
      'en': 'Balneario Camboriu SC',
    },
    '0ieg27x9': {
      'pt': 'Brasília DF',
      'en': 'Brasilia DF',
    },
    '0h7bzhng': {
      'pt': 'Recife PE',
      'en': 'Recife PE',
    },
    'ey7pbipc': {
      'pt': 'Florianopólis SC',
      'en': 'Florianopolis SC',
    },
    'orofqaw0': {
      'pt': 'Detalhes do ingresso',
      'en': 'Ticket Details',
    },
    'dipgv4bw': {
      'pt': 'Preço do Ingresso ',
      'en': 'Ticket Price',
    },
    'ikdtkyc9': {
      'pt': 'Plataforma Oficial',
      'en': 'Official Platform',
    },
    'wf2rabne': {
      'pt': 'Informações do Vendedor',
      'en': 'Seller Information',
    },
    'bvyvdzhc': {
      'pt': 'Nome do Vendedor',
      'en': 'Seller Name',
    },
    'aco534yt': {
      'pt': 'Enter your full name',
      'en': 'Enter your full name',
    },
    'sruul8gs': {
      'pt': 'Método de pagamento',
      'en': 'Payment method',
    },
    '7fwsvpv6': {
      'pt': 'Cartão de Crédito',
      'en': '**** 3456',
    },
    '207e3m1z': {
      'pt': 'Aprovado em 2 horas',
      'en': 'Approved in 2 hours',
    },
    'egc1fnju': {
      'pt': 'PIX',
      'en': 'PIX',
    },
    'xml65lod': {
      'pt': 'Pagamento instantâneo',
      'en': 'Instant payment',
    },
    '6tqu26x1': {
      'pt': 'Valor Total',
      'en': 'Total Value',
    },
    '5jeyyib9': {
      'pt': 'Total',
      'en': 'Total',
    },
    'h0xub76m': {
      'pt':
          'Uma taxa de serviço de 9% é aplicada para proteger tanto os compradores quanto os vendedores.',
      'en': 'A 9% service fee is applied to protect both buyers and sellers.',
    },
    'imfi1zx5': {
      'pt':
          'Receba avisos sobre novos eventos e atualizações deste organizador.',
      'en': 'Get notified about new events and updates from this organizer.',
    },
    'ig1q52gk': {
      'pt': 'I accept the ',
      'en': 'I accept the',
    },
    'rdwvx3qo': {
      'pt': 'Termos e Condições ',
      'en': 'Terms and Conditions',
    },
    'wwduns10': {
      'pt': 'e ',
      'en': 'and',
    },
    '00pczkxw': {
      'pt': 'Política de Privacidade',
      'en': 'Privacy Policy',
    },
    'gz94o2s5': {
      'pt': ' (Obrigatório)',
      'en': '(Mandatory)',
    },
    '2806gr1n': {
      'pt': 'Comprar agora',
      'en': 'Buy now',
    },
    '1ps522p1': {
      'pt': 'Confirmar Compra',
      'en': 'Confirm Purchase',
    },
    'gsm8afb5': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // cartaodecredito
  {
    'byjagkrc': {
      'pt': 'Cartão de Crédito',
      'en': 'Credit card',
    },
    '6h37oqwe': {
      'pt': 'Informações do cartão *',
      'en': 'Card information *',
    },
    'qhmdxo0h': {
      'pt': ' Nome completo do cartão',
      'en': 'Full name of card',
    },
    'rvhbqe7s': {
      'pt': 'Número do cartão',
      'en': 'Card number',
    },
    'suucywed': {
      'pt': 'CVV',
      'en': 'CVV',
    },
    '3y6jpzuh': {
      'pt': 'MM',
      'en': 'MM',
    },
    'goc6590w': {
      'pt': 'YY',
      'en': 'YY',
    },
    's6e9qlwj': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'u7406fwd': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '6wsdh8uk': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    's0kbvdrm': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '8jwzr8is': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'kh7wdsop': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'utjxhhmq': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'zm8ldvy1': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '9dgcy6ue': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    '1p4fjm8e': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'qmokisht': {
      'pt': 'Informações Pessoais *',
      'en': 'Personal Information *',
    },
    'wh9aajhc': {
      'pt': ' Nome completo ',
      'en': 'Full name',
    },
    '8sv7cine': {
      'pt': 'CPF',
      'en': 'CPF',
    },
    'ny1x82cz': {
      'pt': 'E-mail',
      'en': 'E-mail',
    },
    'en5x4ary': {
      'pt': 'Número de telefone',
      'en': 'Phone number',
    },
    'zky9ljp5': {
      'pt': 'Endereço',
      'en': 'Address',
    },
    'pg24l9mk': {
      'pt': 'Cidade',
      'en': 'City',
    },
    'impsxfsv': {
      'pt': 'CEP',
      'en': 'CEP',
    },
    'k643kjbi': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'ydx26dqe': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'kyv7pnbo': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'w6i37lcu': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '73g95ocd': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'iwijvura': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'mw9d2quw': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'leqp0qhx': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '37whv1ez': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'b466f4ux': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'cny8jfqn': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'rorwxy7e': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    's16mx7vw': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    '79yi9jp6': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'dtqf8d8i': {
      'pt': 'Valor Total',
      'en': 'Total Value',
    },
    'pv2ld9cw': {
      'pt': 'Total',
      'en': 'Total',
    },
    'dufs0mxb': {
      'pt': 'Suas informações de pagamento são criptografadas de forma segura',
      'en': 'Your payment information is securely encrypted',
    },
    'vjo6udae': {
      'pt': 'Confirmar Compra',
      'en': 'Confirm Purchase',
    },
    'm9e6t7gd': {
      'pt': 'Pagamento Seguro Protegido',
      'en': 'Secure Protected Payment',
    },
    'd9cp6uus': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // SucessPayment
  {
    '22etsnew': {
      'pt': 'Pagamento concluído',
      'en': 'Payment completed',
    },
    '0jtolo0q': {
      'pt': 'Pagamento de R\$ 114,90 realizado com sucesso.',
      'en': 'Payment of R\$114.90 made successfully.',
    },
    'j607pn75': {
      'pt': 'Concluir',
      'en': 'Conclude',
    },
    'zdpz0pi1': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // PerfilVendedor
  {
    'm2yzywvy': {
      'pt': 'Perfil do vendedor',
      'en': 'Seller profile',
    },
    '794wrn7m': {
      'pt': 'Belo Horizonte, Brasil',
      'en': 'Belo Horizonte, Brazil',
    },
    'rz1uzbcc': {
      'pt': 'Editar Perfil',
      'en': 'Edit Profile',
    },
    '0eb4hywm': {
      'pt': 'Compras',
      'en': 'Sold',
    },
    'uix0jtjt': {
      'pt': 'Vendas',
      'en': 'Sales',
    },
    'czfgkmaz': {
      'pt': 'Curtir',
      'en': 'Enjoy',
    },
    '2aqhg66v': {
      'pt': 'Avaliação escrita',
      'en': 'Written assessment',
    },
    'a01mmiji': {
      'pt': 'Ingressos',
      'en': 'Tickets',
    },
    'vfcizb14': {
      'pt': 'Ver Todos',
      'en': 'See All',
    },
    'xfond0m4': {
      'pt': 'Galeria de Fotos',
      'en': 'Photo Gallery',
    },
    'iblc2mum': {
      'pt': 'Avaliações',
      'en': 'Reviews',
    },
    'omm5dtqh': {
      'pt': 'Ver Mais',
      'en': 'See More',
    },
    '6c24hws9': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // ProcurarIngresssoCOmprado
  {
    't9mlkc5j': {
      'pt': 'Buscar ingressos',
      'en': 'Search for tickets',
    },
    '043ybp1w': {
      'pt': 'Miami, FL',
      'en': '',
    },
    'b2kadpq3': {
      'pt': 'Pendente',
      'en': 'Pending',
    },
    'ietua7ud': {
      'pt': 'Sunrise Trek and Cultural Tour',
      'en': '',
    },
    '125f51b5': {
      'pt': 'Nov 25, 2025, 02:00 PM',
      'en': '',
    },
    '0tqbpvcz': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // Criarconta4
  {
    'p3zk7bfn': {
      'pt': 'Adicione seu telefone',
      'en': 'Add your phone',
    },
    'l319cba0': {
      'pt':
          'Digite seu número de telefone para se verificar ao Ticket Exchange.',
      'en': 'Enter your phone number to verify yourself to Ticket Exchange.',
    },
    'cmece24i': {
      'pt': 'Número de telefone',
      'en': 'Phone number',
    },
    'pxur3i6u': {
      'pt': 'Emter your password',
      'en': 'Enter your password',
    },
    'emcvic9s': {
      'pt': '(00) 00000-0000',
      'en': '(00) 00000-0000',
    },
    '7p0jjj1y': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    '0vxflz7g': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'ynahqqnp': {
      'pt': 'Próximo',
      'en': 'Next',
    },
    'o3qel8it': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // AtivarNOT
  {
    'gu0uhayl': {
      'pt': 'RECEBA NOTIFICAÇÕES',
      'en': 'RECEIVE NOTIFICATIONS',
    },
    'ad30pbo8': {
      'pt':
          'Receba notificações instantâneas sobre vendas, compras, lances e atualizações dos seus ingressos.',
      'en':
          'Get instant notifications about sales, purchases, bids and updates on your tickets.',
    },
    'z5hd0gnp': {
      'pt': 'Ativar notificações',
      'en': 'Enable notifications',
    },
    'g9l620bl': {
      'pt': 'Agora não',
      'en': 'Not now',
    },
    'bm27jxfn': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // IngressoEspecifico2
  {
    'gg5ma2to': {
      'pt': 'Mar 15, 2025, 10:00 AM  ·  ',
      'en': 'Mar 15, 2025, 10:00 AM ·',
    },
    'e10bd5m9': {
      'pt': 'Berlin',
      'en': 'Berlin',
    },
    '50skep7p': {
      'pt': 'Ultra music Festival',
      'en': 'Ultra Music Festival',
    },
    '1hper2v8': {
      'pt': '220K Followers',
      'en': '220K Followers',
    },
    'dmpc7p5r': {
      'pt': 'Seguir',
      'en': 'Follow',
    },
    'd2g0dn1u': {
      'pt': 'Informações do Ingresso',
      'en': 'Ticket Information',
    },
    '4mb584rh': {
      'pt':
          '📅 Data: 29/07/25\n🕒 Horário: 20h00\n⏳ Duração: 3,5 horas\n📍 Ponto de encontro: Cidade do Rock – Parque Olímpico\n👤 Idade mínima: 18+ com documento de identificação válido',
      'en':
          '📅 Date: 07/29/25\n🕒 Time: 8:00 p.m.\n⏳ Duration: 3.5 hours\n📍 Meeting point: Cidade do Rock – Parque Olímpico\n👤 Minimum age: 18+ with valid ID',
    },
    'ex7vm0rw': {
      'pt': '4.9',
      'en': '4.9',
    },
    'z2s3zl6r': {
      'pt': 'Feedbacks deste evento',
      'en': 'Feedback from this event',
    },
    'zhrdlgco': {
      'pt': 'Imagens',
      'en': 'Images',
    },
    'n9clotpn': {
      'pt': 'Localização',
      'en': 'Location',
    },
    '8jf8pgci': {
      'pt': 'Bayfront Park, Miami, FL',
      'en': 'Bayfront Park, Miami, FL',
    },
    'i3i7mjy9': {
      'pt': 'Comprar',
      'en': 'Buy',
    },
    '3ibice7v': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // FindNewEvents
  {
    '8mu0flbw': {
      'pt': 'Encontre eventos incríveis',
      'en': 'Find amazing events',
    },
    '5pp0zqzx': {
      'pt':
          'Deslize por um mundo de eventos empolgantes feitos especialmente para você!',
      'en': 'Glide through a world of exciting events made just for you!',
    },
    'pmb0xtcc': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // PerfilEvento
  {
    '6mkxnyro': {
      'pt': 'Organizador',
      'en': 'Organizer',
    },
    '0xjrep0l': {
      'pt': 'Avaliação',
      'en': 'Purchased',
    },
    'c1100485': {
      'pt': 'Data',
      'en': 'Date',
    },
    '0poam3y9': {
      'pt': 'Ingressos',
      'en': 'Tickets',
    },
    'elgh7gn4': {
      'pt': 'Seguir',
      'en': 'Follow',
    },
    'f0ivwpfz': {
      'pt': 'Verificado',
      'en': 'Verified',
    },
    'ft96rhga': {
      'pt': 'Sobre',
      'en': 'On',
    },
    'p35j3ga8': {
      'pt': 'Ingressos disponíveis',
      'en': 'Tickets available',
    },
    'exn88sex': {
      'pt': '4.9',
      'en': '4.9',
    },
    'w8t9cbjd': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // adicionarIngresso
  {
    '00uxwspa': {
      'pt': 'Adicionar Ingresso',
      'en': 'Add Ticket',
    },
    'afxttkms': {
      'pt': 'Informações do Evento',
      'en': 'Event Information',
    },
    'fgfzot43': {
      'pt': 'Nome do Evento',
      'en': 'Event Name',
    },
    'dabbwvg0': {
      'pt': 'Valor do ingresso',
      'en': 'Ticket price',
    },
    'onglgljl': {
      'pt': '',
      'en': '',
    },
    'ty665zfq': {
      'pt': 'Local',
      'en': 'Location',
    },
    'nfz5w2nz': {
      'pt': 'Plataforma Oficial - Ex: Sympla, Ingresse...',
      'en': 'Official Platform - Ex: Sympla, Ingresse...',
    },
    '92nrl73w': {
      'pt': 'Data do Evento ',
      'en': 'Event Date',
    },
    'mfgm3bfv': {
      'pt': 'Selecione a categoria',
      'en': 'Select category',
    },
    '2ky0o8f5': {
      'pt': 'Buscar categoria...',
      'en': 'Search category...',
    },
    'inl3d72v': {
      'pt': 'Categoria do Evento',
      'en': 'Event Category',
    },
    '7n1r5yfd': {
      'pt': 'Shows',
      'en': 'Shows',
    },
    '7puzrs7d': {
      'pt': 'Teatros',
      'en': 'Theaters',
    },
    'qc2xcar5': {
      'pt': 'Festas',
      'en': 'Parties',
    },
    'nhmo4kic': {
      'pt': 'Esportes',
      'en': 'Sports',
    },
    '439a1h9c': {
      'pt': 'Selecione a cidade',
      'en': 'Select city',
    },
    'dsqxk9jn': {
      'pt': 'Buscar cidade...',
      'en': 'Search city...',
    },
    'g4h1spj7': {
      'pt': 'Cidade',
      'en': 'City',
    },
    'ee4ay3qi': {
      'pt': 'Belo Horizonte MG',
      'en': 'Belo Horizonte MG',
    },
    '59tovgzq': {
      'pt': 'Balneário Camboriú SC',
      'en': 'Balneario Camboriu SC',
    },
    '30xkmcjr': {
      'pt': 'Curitiba PR',
      'en': 'Belo Horizonte',
    },
    '0xw96hq1': {
      'pt': 'Rio de Janeiro RJ',
      'en': 'Rio de Janeiro RJ',
    },
    'f3xu0782': {
      'pt': 'São Paulo SP',
      'en': 'Sao Paulo SP',
    },
    'gup4jtzw': {
      'pt': 'Vitória ES',
      'en': 'Victory ES',
    },
    'hzx0rr9e': {
      'pt': 'Recife PE',
      'en': 'Recife PE',
    },
    'ywt6xdws': {
      'pt': 'Fortaleza CE',
      'en': 'Fortaleza CE',
    },
    'dd0yl7rf': {
      'pt': 'Brasília DF',
      'en': 'Brasilia DF',
    },
    'odfk1fr8': {
      'pt': 'Florianopólis SC',
      'en': 'Florianopolis SC',
    },
    'jwvhg5ef': {
      'pt': 'Outros...',
      'en': 'Others...',
    },
    'ibfludi6': {
      'pt': 'Descrição do Ingresso',
      'en': 'Ticket Description',
    },
    'r3e3crko': {
      'pt': 'Detalhes importantes sobre o ingresso...',
      'en': 'Important details about the ticket...',
    },
    '8op5t13l': {
      'pt': 'Adicionar imagem',
      'en': 'Add image',
    },
    'd0jc76n2': {
      'pt': 'Aguarde a foto carregar antes de adicionar o ingresso.',
      'en': 'Please wait for the photo to load before adding the ticket.',
    },
    '92lkcm0r': {
      'pt': 'Clique para adicionar uma foto',
      'en': 'Click to add a photo',
    },
    'aiq0ke8n': {
      'pt': 'Informações Pessoais',
      'en': 'Personal Information',
    },
    'hfhpk2si': {
      'pt': 'Nome completo',
      'en': 'Full name',
    },
    'jh24c23i': {
      'pt': 'Seu nome completo',
      'en': 'Your full name',
    },
    'v5xnu3gq': {
      'pt': 'E-mail',
      'en': 'E-mail',
    },
    'vt2zumok': {
      'pt': 'seu@email.com',
      'en': 'your@email.com',
    },
    '7sv9c2kk': {
      'pt': 'Telefone',
      'en': 'Telephone',
    },
    'g5gl3p4i': {
      'pt': '(11) 99999-9999',
      'en': '(11) 99999-9999',
    },
    'nrxhdhxp': {
      'pt': 'Adicionar Ingresso',
      'en': 'Add Ticket',
    },
    '5xn8wf7p': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'u026a963': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '4sjotcps': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    '1wnr6ads': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'x8lizdsw': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'djtfti4o': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'dmjkh7rh': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'f8w5kjoq': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'u28z28qf': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'xfksephw': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'wjoo4jj0': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'cmmo80np': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '7win2hlo': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'tw26rajc': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'i4u03zuq': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'wkhunno9': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
  },
  // leilao
  {
    'haoib6i5': {
      'pt': ' Leilão Ingressos',
      'en': 'Ticket Auction',
    },
    '2ilrrlzr': {
      'pt': 'Aqui você acompanha os lances nos seus ingressos.',
      'en': 'Here you can track the bids on your tickets.',
    },
    '552bhiex': {
      'pt':
          'No Leilão, você visualiza os lances recebidos nos seus ingressos anunciados. Escolha o melhor valor e feche negócio com segurança!',
      'en':
          'At the Auction, you can view the bids received on your advertised tickets. Choose the best price and close the deal safely!',
    },
    'x5ukub6e': {
      'pt': 'Todos',
      'en': 'All',
    },
    'mq9bidrj': {
      'pt': 'Status',
      'en': 'Status',
    },
    'lmo2qy1j': {
      'pt': 'Todos',
      'en': 'All',
    },
    'dgxzwki3': {
      'pt': 'Aberto',
      'en': 'Open',
    },
    'p98b7vsg': {
      'pt': 'Encerrado',
      'en': 'Closed',
    },
    '3mi1ltjo': {
      'pt': 'Buscar evento ou cidade',
      'en': 'Search event or city',
    },
    'z8p3q0b7': {
      'pt': '•',
      'en': '•',
    },
    'hah39wkr': {
      'pt': 'Rio de Janeiro',
      'en': 'Rio de Janeiro',
    },
    'p1iykw03': {
      'pt': 'Ver Lances',
      'en': 'View Bids',
    },
  },
  // lanceespecifico
  {
    'hb7lvrhx': {
      'pt': 'Lances Recebidos ',
      'en': 'Bids Received',
    },
    '0vasus2c': {
      'pt': 'Rock in Rio 2025',
      'en': 'Rock in Rio 2025',
    },
    'quzcm3vo': {
      'pt': 'Show • Rio de Janeiro',
      'en': 'Show • Rio de Janeiro',
    },
    '5f9xqfcd': {
      'pt': '05/09/2025',
      'en': '05/09/2025',
    },
    '9ley4cws': {
      'pt': 'Preço base: R\$ 400',
      'en': 'Base price: R\$ 400',
    },
    'c1xa0r87': {
      'pt': 'Lances Recebidos',
      'en': 'Bids Received',
    },
    '3ppm16mt': {
      'pt': '3 lances',
      'en': '3 bids',
    },
    'zx9h68jw': {
      'pt': 'Usuário123',
      'en': 'User123',
    },
    'mo2yaji3': {
      'pt': '12/06/2025 14:30',
      'en': '12/06/2025 14:30',
    },
    'rmvah2dl': {
      'pt': 'R\$ 450',
      'en': 'R\$ 450',
    },
    '8dez3n50': {
      'pt': 'Aceitar',
      'en': 'To accept',
    },
    'vs41xke7': {
      'pt': 'Negar',
      'en': 'To deny',
    },
    '6aippp1d': {
      'pt': 'CompradorX',
      'en': 'BuyerX',
    },
    'lo22irbn': {
      'pt': '11/06/2025 18:15',
      'en': '11/06/2025 18:15',
    },
    'pvesihdz': {
      'pt': 'R\$ 420',
      'en': 'R\$ 420',
    },
    'brvcgb8q': {
      'pt': 'Aceitar',
      'en': 'To accept',
    },
    '9r8yugw5': {
      'pt': 'Negar',
      'en': 'To deny',
    },
  },
  // todososEVENTOS
  {
    '0pn92ler': {
      'pt':
          'Veja os eventos que você curte e fique por dentro dos novos ingressos disponíveis',
      'en':
          'See the events you love and stay up to date with new tickets available',
    },
    'beang37r': {
      'pt': 'Buscar eventos...',
      'en': 'Search events...',
    },
    'htfkccq3': {
      'pt': 'Organizadores em alta',
      'en': 'Organizers on the rise',
    },
    'a83yuy89': {
      'pt': 'Todos os organizadores',
      'en': 'All organizers',
    },
    'rrqaux40': {
      'pt': 'Curtir',
      'en': 'Enjoy',
    },
    '0917bo3q': {
      'pt': 'Veja o perfil desse evento',
      'en': 'See the profile of this event',
    },
    'x6fqfva6': {
      'pt':
          'Quanto mais organizadores você segue, mais sugestões de eventos você recebe!',
      'en':
          'The more organizers you follow, the more event suggestions you get!',
    },
    'vqdtoomr': {
      'pt': 'Todos os eventos',
      'en': 'All events',
    },
  },
  // categoriashow
  {
    'jk3bba9x': {
      'pt': 'SHOWS',
      'en': 'SHOWS',
    },
    'gs6adu3d': {
      'pt': 'Encontre os melhores eventos musicais',
      'en': 'Find the best music events',
    },
    'zneycs5v': {
      'pt': 'Descubra shows, teatros...',
      'en': 'Discover shows, theaters...',
    },
    '2t70v2uc': {
      'pt': 'Ordenar',
      'en': 'Sort',
    },
    'f2s8qlce': {
      'pt': 'Tipo',
      'en': 'Type',
    },
    's62tgqvm': {
      'pt': 'Ordenar',
      'en': 'Sort',
    },
    'fgqpiuf4': {
      'pt': 'Melhores Ofertas em Shows',
      'en': 'Best Deals on Shows',
    },
    '2o57fnuo': {
      'pt': 'R\$ 49,90',
      'en': 'R\$ 49.90',
    },
    'wpf9x1ri': {
      'pt': 'Festival BH Music',
      'en': 'BH Music Festival',
    },
    'u3yxl7fk': {
      'pt': '28 Jun • Mineirão',
      'en': '28 Jun • Mineirão',
    },
    'ttk4r8hr': {
      'pt': 'R\$ 49,90',
      'en': 'R\$ 49.90',
    },
    'pewj79o0': {
      'pt': 'Festival BH Music',
      'en': 'BH Music Festival',
    },
    'sqtgkck9': {
      'pt': '28 Jun • Mineirão',
      'en': '28 Jun • Mineirão',
    },
    'pt6e7qea': {
      'pt': 'R\$ 49,90',
      'en': 'R\$ 49.90',
    },
    'xr3yuuq3': {
      'pt': 'Todos os Ingressos de Shows',
      'en': 'All Show Tickets',
    },
    '0m92w54o': {
      'pt': 'Shows',
      'en': 'Shows',
    },
    'pvbvbo77': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // statuspix
  {
    'w5t88voi': {
      'pt': 'Status Pagamento ',
      'en': 'Payment Status',
    },
    'qqh6fuii': {
      'pt': 'Realize o pagamento e atualize antes de sair da página.',
      'en': 'Make the payment and update before leaving the page.',
    },
    'qosb4q7k': {
      'pt': 'Dados para Pagamento',
      'en': 'Payment Details',
    },
    'n0stvfb3': {
      'pt': 'QR Code Pix',
      'en': 'QR Code Pix',
    },
    'lqvxfp6z': {
      'pt': 'Valor:',
      'en': 'Value:',
    },
    'nny0hdrf': {
      'pt': 'Chave Pix:',
      'en': 'Pix Key:',
    },
    '4rk9l3r1': {
      'pt': 'suportehdmentretenimento@gmail.com',
      'en': 'suportehdmentretenimento@gmail.com',
    },
    'o7sxnnbm': {
      'pt': 'Vencimento:',
      'en': 'Maturity:',
    },
    'muyz170b': {
      'pt': '20/06/2025 - 23:59',
      'en': '06/20/2025 - 23:59',
    },
    '83hira3i': {
      'pt': 'Copiar Chave Pix',
      'en': 'Copy Pix Key',
    },
    'dc63lbxu': {
      'pt': 'Detalhes da compra',
      'en': 'Purchase Details',
    },
    'w8uc462x': {
      'pt': 'Evento:',
      'en': 'Event:',
    },
    '0467sj4v': {
      'pt': 'Plataforma Oficial:',
      'en': 'Official Platform:',
    },
    'j8srcbbx': {
      'pt': 'Data do Evento:',
      'en': 'Event Date:',
    },
    'a7wcyaw8': {
      'pt': 'Nome do vendedor:',
      'en': 'Seller Name:',
    },
    'dtten14x': {
      'pt': 'Valor da compra:',
      'en': 'Purchase value:',
    },
    'nlficjbf': {
      'pt': 'Status do Pagamento',
      'en': 'Payment Status',
    },
    '5df9oq2z': {
      'pt':
          'Estamos aguardando a confirmação do seu Pix. O pagamento pode levar até alguns minutos para ser processado.',
      'en':
          'We are waiting for confirmation of your Pix. The payment may take up to a few minutes to be processed.',
    },
    'svgmi1ms': {
      'pt': 'Última verificação:',
      'en': 'Last checked:',
    },
    '0k8yxdfy': {
      'pt': '18/06/2025 - 14:23',
      'en': '06/18/2025 - 14:23',
    },
    'wpd7jk1i': {
      'pt': 'Atualizar Status',
      'en': 'Update Status',
    },
    '1h9lkm3c': {
      'pt': 'Voltar para a home',
      'en': 'Back to home',
    },
    've7oderv': {
      'pt': 'Instruções',
      'en': 'Instructions',
    },
    'm6pa2aja': {
      'pt':
          '• Escanei o QR code ou Copie a chave Pix e cole no seu app bancário\n• Confirme o pagamento no valor exato\n• Atualize o status da página',
      'en':
          '• Scan the QR code or copy the Pix key and paste it into your banking app\n• Confirm the payment for the exact amount\n• Update the page status',
    },
    'iezhgfk3': {
      'pt': 'Confirme o pagamento para continuar',
      'en': 'Confirm payment to continue',
    },
    'lsyijcuq': {
      'pt': 'Pagamento Seguro Protegido',
      'en': 'Secure Protected Payment',
    },
    '93279np7': {
      'pt': 'Importante!',
      'en': 'Important!',
    },
    'idkwdxfn': {
      'pt':
          'Confira que sua compra foi confirmada! É de extrema importância conferir sua compra, qualquer problema, entre em contato com o suporte!',
      'en':
          'Check that your purchase has been confirmed! It is extremely important to check your purchase. If you have any problems, contact support!',
    },
    'xqqvqvoy': {
      'pt': 'Ver Ingresso',
      'en': 'View Ticket',
    },
  },
  // ingressoespecifico_alcance
  {
    '458n1lnd': {
      'pt': 'Aumentar Alcance',
      'en': 'Increase Reach',
    },
    'qx47qjrb': {
      'pt': 'Escolha o alcance para o ingresso:',
      'en': 'Choose the range for the ticket:',
    },
    'vzqcvong': {
      'pt': ' Desconto especial para usuários Verificados!',
      'en': 'Special discount for Verified users!',
    },
    '5cymysk1': {
      'pt': 'Os valores abaixo já estão com desconto aplicado.',
      'en': 'The values below already have the discount applied.',
    },
    '8z4jtts0': {
      'pt': '1 Dia',
      'en': '1 Day',
    },
    'nqlhu5x4': {
      'pt': 'Alcance básico',
      'en': 'Basic range',
    },
    'z89kmhzj': {
      'pt': 'R\$ 15,00',
      'en': 'R\$ 15.00',
    },
    'fnw0wvhz': {
      'pt': 'R\$ 12,00',
      'en': 'R\$ 12.00',
    },
    'sqvmi3fm': {
      'pt': 'Mais visibilidade por 24 horas',
      'en': 'More visibility for 24 hours',
    },
    'au0s0w55': {
      'pt': '5 Dias',
      'en': '5 Days',
    },
    'djjsb9it': {
      'pt': 'Alcance recomendado',
      'en': 'Recommended range',
    },
    'yoe1b6vp': {
      'pt': 'R\$ 25,00',
      'en': 'R\$ 25.00',
    },
    'u7nlzy96': {
      'pt': 'R\$ 20,00',
      'en': 'R\$ 20.00',
    },
    'huz2jjye': {
      'pt': 'Destaque por 5 dias + prioridade',
      'en': 'Featured for 5 days + priority',
    },
    'kv9utavx': {
      'pt': '15 Dias',
      'en': '15 Days',
    },
    '0m8g1zhn': {
      'pt': 'Alcance máximo',
      'en': 'Maximum range',
    },
    '3hhyfc8o': {
      'pt': 'R\$ 60,00',
      'en': 'R\$ 60.00',
    },
    'v74maz2a': {
      'pt': 'R\$ 48,00',
      'en': 'R\$ 48.00',
    },
    '50xysiec': {
      'pt': 'Máxima exposição + destaque premium',
      'en': 'Maximum exposure + premium prominence',
    },
    '565eho3d': {
      'pt': 'Confirmar e Pagar - R\$ 12,00',
      'en': 'Confirm and Pay - R\$ 12.00',
    },
    'qsuoeqnf': {
      'pt': 'Confirmar e Pagar - R\$ 20,00',
      'en': 'Confirm and Pay - R\$ 20.00',
    },
    'xj4ym8m8': {
      'pt': 'Confirmar e Pagar - R\$ 48,00',
      'en': 'Confirm and Pay - R\$ 48.00',
    },
    'f17ttc57': {
      'pt': 'Voltar aos Meus Ingressos',
      'en': 'Back to My Tickets',
    },
  },
  // seloverificadoetapa2
  {
    'qmehxycr': {
      'pt': 'Valide sua Identidade',
      'en': 'Validate your Identity',
    },
    'za2at46o': {
      'pt':
          'Para manter a segurança de nossa comunidade, realizamos a validação de identidade de todos os vendedores que solicitam o selo de verificação.',
      'en':
          'To keep our community safe, we perform identity validation on all sellers who request the verification badge.',
    },
    'lnij4boc': {
      'pt':
          'Por favor, preencha os campos abaixo e envie os documentos solicitados.',
      'en': 'Please fill in the fields below and send the requested documents.',
    },
    'pfpz1zqh': {
      'pt': 'Nome Completo *',
      'en': 'Full Name *',
    },
    'ddfgerq7': {
      'pt': 'Digite seu nome completo',
      'en': 'Enter your full name',
    },
    'tketu3jg': {
      'pt': 'Foto do Documento Oficial (Frente) *',
      'en': 'Photo of Official Document (Front) *',
    },
    'gmq7jbcd': {
      'pt': 'Toque para enviar documento',
      'en': 'Tap to send document',
    },
    'nlheypeb': {
      'pt': 'RG, CNH ou Passaporte',
      'en': 'ID, Driver\'s License or Passport',
    },
    'ewv15s8f': {
      'pt': 'Foto Segurando o Documento *',
      'en': 'Photo Holding Document *',
    },
    'c0vsag0u': {
      'pt': 'Toque para tirar selfie',
      'en': 'Tap to take selfie',
    },
    'spyrmpwq': {
      'pt': 'Com documento ao lado do rosto',
      'en': 'With document next to the face',
    },
    'v0q7p8ch': {
      'pt': 'Privacidade Garantida',
      'en': 'Privacy Guaranteed',
    },
    '6xz1mg0v': {
      'pt':
          'Todos os dados enviados são tratados de forma confidencial e usados exclusivamente para fins de validação de identidade.',
      'en':
          'All data sent is treated confidentially and used exclusively for identity validation purposes.',
    },
    '6nibqr4q': {
      'pt': 'Enviar Documentos para Análise',
      'en': 'Submit Documents for Analysis',
    },
    'gq3mftq2': {
      'pt': 'Verificação de Identidade',
      'en': 'Identity Verification',
    },
  },
  // informacoesdeVENDA_VENDEDOR
  {
    'sk1jeh70': {
      'pt': 'Parabéns pela venda!',
      'en': 'Congratulations on the sale!',
    },
    'hl69hop9': {
      'pt':
          'Por favor, envie o ingresso para a nossa plataforma dentro do prazo de 5 horas.',
      'en': 'Please submit the ticket to our platform within 5 hours.',
    },
    'rwhq56b5': {
      'pt': 'Detalhes da Sua Venda',
      'en': 'Your Sale Details',
    },
    'tf4ydv2n': {
      'pt': 'Evento:',
      'en': 'Event:',
    },
    'vhal36i7': {
      'pt': 'Valor da Venda:',
      'en': 'Sale Value:',
    },
    'tv3lymje': {
      'pt': 'Valor a receber:',
      'en': 'Amount to receive:',
    },
    'uuoc45ek': {
      'pt': 'Data da Venda:',
      'en': 'Date of Sale:',
    },
    '6lwza4kc': {
      'pt': 'Detalhes do cliente',
      'en': 'Customer Details',
    },
    'sqa823bs': {
      'pt': 'Nome do Cliente',
      'en': 'Client Name',
    },
    'gu308eqy': {
      'pt': 'Email do Cliente',
      'en': 'Customer Email',
    },
    'ccqglhq6': {
      'pt': 'Para onde enviar o ingresso:',
      'en': 'Where to send the ticket:',
    },
    '8b3ttwwk': {
      'pt': 'hdmentretenimento@gmail.com',
      'en': 'hdmentretenimento@gmail.com',
    },
    'ha08bs9t': {
      'pt': 'Copiar',
      'en': 'Copy',
    },
    'rplce0eq': {
      'pt': 'Dados Bancários:',
      'en': 'Bank Details:',
    },
    'simja8fb': {
      'pt':
          'Revise seus dados bancários. Caso haja alguma incongruência ou você não tenha os dados cadastrado, clique em um dos botões abaixo.',
      'en':
          'Review your bank details. If there is any inconsistency or you do not have the details registered, click on one of the buttons below.',
    },
    'm417ndgj': {
      'pt':
          'É necessário ter cadastrado os dados bancários antes de confirmar o envio, pois caso contrário não é possível confirmá-lo',
      'en':
          'It is necessary to have registered your bank details before confirming the shipment, otherwise it will not be possible to confirm it.',
    },
    'dal8uwgt': {
      'pt': 'Clique aqui e adicione seus dados bancários',
      'en': 'Click here and add your bank details',
    },
    '62ik9a1l': {
      'pt': 'Clique aqui e edite seus dados bancários',
      'en': 'Click here and edit your bank details',
    },
    'uo1io5jb': {
      'pt': 'Nome do Titular da Conta',
      'en': 'Account Holder Name',
    },
    'eajstidm': {
      'pt': 'Nome e Número do Banco ',
      'en': 'Bank Name and Number',
    },
    'dvmqptxg': {
      'pt': 'Número da Conta',
      'en': 'Account Number',
    },
    '81k8k8mc': {
      'pt': 'Número da Agência',
      'en': 'Agency Number',
    },
    '9b1zkey0': {
      'pt': 'Chave PIX',
      'en': 'PIX key',
    },
    'qa2ze195': {
      'pt': 'Valor a receber',
      'en': 'Amount to receive',
    },
    'p4m1ca6b': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    '33s7uyt5': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'lwin2wmn': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    '57diy3ez': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'g74hr4yv': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'nq8ytlxe': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '8ijjyuaj': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    '6rp43qwy': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'ox6whlln': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'spkwzrme': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'ockqyajd': {
      'pt': 'Valor a receber is required',
      'en': 'Amount receivable is required',
    },
    '70577yyu': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '0okt2ra0': {
      'pt': 'Adicionar imagem',
      'en': 'Add image',
    },
    'm6fkymx2': {
      'pt': 'Aguarde a foto carregar antes de adicionar o ingresso.',
      'en': 'Please wait for the photo to load before adding the ticket.',
    },
    'v4xtgl36': {
      'pt': 'Clique para adicionar uma foto',
      'en': 'Click to add a photo',
    },
    'bou0dluq': {
      'pt': 'Enviei o ingresso',
      'en': 'I sent the ticket',
    },
    '6m8hb3wv': {
      'pt': 'Precisa de Ajuda?',
      'en': 'Need Help?',
    },
    'iq5m2r9d': {
      'pt': 'Contate Suporte',
      'en': 'Contact Support',
    },
    'pcn8pb72': {
      'pt': 'Confirmar que enviei o ingresso',
      'en': 'Confirm that I have submitted the ticket',
    },
    'nzarbuyj': {
      'pt': 'Você já confirmou o envio.',
      'en': 'You have already confirmed the shipment.',
    },
    'xz26q75a': {
      'pt': 'Atenção',
      'en': 'Attention',
    },
    'or0gsqm3': {
      'pt':
          '• Caso o ingresso não seja enviado dentro do prazo, a venda será automaticamente cancelada',
      'en':
          '• If the ticket is not sent within the deadline, the sale will be automatically cancelled.',
    },
    'ykqefxcj': {
      'pt':
          '• Envio de ingressos falsos resultará em bloqueio permanente da conta',
      'en': '• Submitting fake tickets will result in permanent account ban',
    },
    'azswczo2': {
      'pt': 'Regras Importantes',
      'en': 'Important Rules',
    },
    'yeuqoyo3': {
      'pt':
          'Envie o ingresso no formato original (PDF, QR Code ou o que for solicitado)',
      'en':
          'Send the ticket in its original format (PDF, QR Code or whatever is requested)',
    },
    'zshlt5p3': {
      'pt': 'Não altere dados do ingresso',
      'en': 'Do not change ticket data',
    },
    '0r0f4u2g': {
      'pt': 'A confirmação do pagamento só acontece após validação pela equipe',
      'en': 'Payment confirmation only occurs after validation by the team',
    },
    'iyz2fkfd': {
      'pt': 'Prazo para envio: até 5 hora após a venda',
      'en': 'Shipping deadline: up to 5 hours after sale',
    },
    'xcli5smh': {
      'pt': 'Garantia Ticket Exchange',
      'en': 'Ticket Exchange Guarantee',
    },
    'skzih6js': {
      'pt':
          'Assim que o ingresso for validado, o pagamento da sua venda será processado de forma segura pela nossa plataforma.',
      'en':
          'Once the ticket is validated, payment for your sale will be processed securely by our platform.',
    },
    'w9cauzav': {
      'pt': 'Informações da Venda',
      'en': 'Sales Information',
    },
  },
  // Adicionardadosbancarios
  {
    '2r6a833r': {
      'pt': 'Dados Bancários',
      'en': 'Bank Details',
    },
    'z40brgso': {
      'pt': 'Adicione seus dados bancários',
      'en': 'Add your bank details',
    },
    'wcc98l2t': {
      'pt':
          'Mantenha suas informações de pagamento sempre atualizadas para garantir o recebimento das suas vendas de forma rápida e segura.',
      'en':
          'Always keep your payment information up to date to ensure that you receive your sales quickly and securely.',
    },
    'p1t12r19': {
      'pt':
          'Todos os pagamentos da Ticket Exchange são feitos diretamente para a conta bancária que você cadastrar abaixo.',
      'en':
          'All Ticket Exchange payments are made directly to the bank account you register below.',
    },
    'o2rcenoj': {
      'pt': 'Nome do Titular da Conta *',
      'en': 'Account Holder Name *',
    },
    '88g5fpu3': {
      'pt': 'Digite o nome completo do titular',
      'en': 'Enter the full name of the holder',
    },
    '1eh73r7d': {
      'pt': 'CPF do Titular *',
      'en': 'Holder\'s CPF *',
    },
    'dckgr97v': {
      'pt': '000.000.000-00',
      'en': '000.000.000-00',
    },
    'c6e0vkf6': {
      'pt': 'Tipo de Chave PIX',
      'en': 'PIX Key Type',
    },
    'y8hcerv4': {
      'pt': 'Email',
      'en': 'E-mail',
    },
    'bkw72jq9': {
      'pt': 'Celular',
      'en': 'Cell phone',
    },
    'pghl8kye': {
      'pt': 'CPF',
      'en': 'CPF',
    },
    '569a7hdl': {
      'pt': 'Aleatória',
      'en': 'Random',
    },
    '8xtzg7s7': {
      'pt': 'Chave Pix (Opcional)',
      'en': 'Pix Key (Optional)',
    },
    '48k5t0wk': {
      'pt': 'CPF, e-mail, telefone ou chave aleatória',
      'en': 'CPF, email, phone number or random key',
    },
    'hii8yfbt': {
      'pt': 'CPF, e-mail, telefone ou chave aleatória',
      'en': 'CPF, email, phone number or random key',
    },
    'ix4td1w6': {
      'pt': 'CPF, e-mail, telefone ou chave aleatória',
      'en': 'CPF, email, phone number or random key',
    },
    'yp74iz7z': {
      'pt': 'CPF, e-mail, telefone ou chave aleatória',
      'en': 'CPF, email, phone number or random key',
    },
    '8kefh04y': {
      'pt': 'Banco *',
      'en': 'Bank *',
    },
    '0rnw5fqo': {
      'pt': 'Selecione seu banco',
      'en': 'Select your bank',
    },
    '7onqgs0i': {
      'pt': 'Itaú',
      'en': 'Itau',
    },
    '3782h35b': {
      'pt': 'Bradesco',
      'en': 'Bradesco',
    },
    'njuufvdn': {
      'pt': 'Banco do Brasil',
      'en': 'Bank of Brazil',
    },
    '4c560w4t': {
      'pt': 'Caixa Econômica',
      'en': 'Savings Bank',
    },
    'tdxbc0a8': {
      'pt': 'Nubank',
      'en': 'Nubank',
    },
    '8bavvj57': {
      'pt': 'Inter',
      'en': 'Inter',
    },
    'r2b8h1ko': {
      'pt': 'Santander',
      'en': 'Santander',
    },
    '1mcgzmz7': {
      'pt': 'Outros',
      'en': 'Others',
    },
    '4ywt3gwr': {
      'pt': 'Agência *',
      'en': 'Agency *',
    },
    '1z4h9tab': {
      'pt': '0000',
      'en': '0000',
    },
    '1ryiuu7m': {
      'pt': 'Número da Conta *',
      'en': 'Account Number *',
    },
    'wn55r4dw': {
      'pt': '00000-0',
      'en': '00000-0',
    },
    '88qjcv9g': {
      'pt': 'Tipo de Conta *',
      'en': 'Account Type *',
    },
    'iwmh3cgk': {
      'pt': 'Selecione o tipo de conta',
      'en': 'Select account type',
    },
    'tr96o9da': {
      'pt': 'Conta Corrente',
      'en': 'Current Account',
    },
    'xzgvqqh6': {
      'pt': 'Conta Poupança',
      'en': 'Savings Account',
    },
    'ubq6jex6': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'gur6eg7k': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'mb8yjl9j': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'z4xgi0bk': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '3jd4mqan': {
      'pt': 'CPF, e-mail, telefone ou chave aleatória is required',
      'en': 'CPF, email, phone or random key is required',
    },
    'hfzgab35': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'qpo02x8n': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'tyf18uxp': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'aasxb4af': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'gbwwh6lv': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '08gt8yfb': {
      'pt': 'Aviso de Segurança',
      'en': 'Security Notice',
    },
    'ko5jbguo': {
      'pt':
          'As informações bancárias são utilizadas exclusivamente para o repasse de pagamentos. Dados incorretos podem causar atrasos ou falha no recebimento. A taxa de serviço da plataforma é 9% ',
      'en':
          'Bank details are used exclusively for payment transfers. Incorrect details may cause delays or failure to receive payment. The platform service fee is 9%.',
    },
    'g5glne92': {
      'pt': 'Adicionar Dados bancários',
      'en': 'Add Bank Details',
    },
    'p5urglb0': {
      'pt': 'Precisa de ajuda? Fale com o Suporte',
      'en': 'Need help? Contact Support',
    },
  },
  // pagamentoverificado
  {
    '2l7upmu6': {
      'pt': 'Finalize o Pagamento do Seu Selo de Verificado',
      'en': 'Complete Payment for Your Verified Badge',
    },
    '9ruo2uv2': {
      'pt':
          'Para concluir o processo e liberar o início da sua verificação, efetue o pagamento da sua assinatura.',
      'en':
          'To complete the process and start your verification, make the payment for your subscription.',
    },
    'l507ptfl': {
      'pt':
          'O selo de verificado garante destaque nos anúncios, confiança para os compradores e acesso a benefícios exclusivos.',
      'en':
          'The verified seal guarantees prominence in ads, trust for buyers and access to exclusive benefits.',
    },
    'ufomt69d': {
      'pt': 'Detalhes da Assinatura',
      'en': 'Subscription Details',
    },
    '9b35eblo': {
      'pt': 'Valor:',
      'en': 'Value:',
    },
    '8u4lmtwa': {
      'pt': 'R\$ 29,90',
      'en': 'R\$ 29.90',
    },
    'zo3bv130': {
      'pt': 'Tipo:',
      'en': 'Type:',
    },
    '6clwamcr': {
      'pt': 'Assinatura Mensal Recorrente',
      'en': 'Monthly Recurring Subscription',
    },
    '0xdqwej6': {
      'pt': 'Cancelamento:',
      'en': 'Cancellation:',
    },
    'nqas8r6y': {
      'pt': 'Direto pelo aplicativo',
      'en': 'Directly through the app',
    },
    'pv4idmw5': {
      'pt': 'Benefícios ativos após a aprovação da verificação',
      'en': 'Benefits active after verification approval',
    },
    '5vfc6sqr': {
      'pt': 'Escolha a Forma de Pagamento',
      'en': 'Choose Payment Method',
    },
    '746i3vu5': {
      'pt': 'Método de pagamento',
      'en': 'Payment method',
    },
    '9vkfzb3d': {
      'pt': '**** 3456',
      'en': '**** 3456',
    },
    'a6c5eyld': {
      'pt': 'Alterar',
      'en': 'To alter',
    },
    'qay8wuhh': {
      'pt': 'PIX',
      'en': 'PIX',
    },
    'fkbn9m0s': {
      'pt': 'Alterar',
      'en': 'To alter',
    },
    'p7hsanuk': {
      'pt': 'Concluir Pagamento',
      'en': 'Complete Payment',
    },
    'ztxanhlo': {
      'pt':
          'Todo o processo de pagamento é criptografado e seguro. Sua compra está protegida conforme as políticas da Ticket Exchange.',
      'en':
          'The entire payment process is encrypted and secure. Your purchase is protected according to Ticket Exchange policies.',
    },
    '5ky3cnta': {
      'pt': 'Pagamento',
      'en': 'Payment',
    },
  },
  // suporteaocliente
  {
    'cbyt4180': {
      'pt': 'Como podemos ajudar você?',
      'en': 'How can we help you?',
    },
    'jksvntmj': {
      'pt': 'Canais de Atendimento',
      'en': 'Service Channels',
    },
    'uo99z5ac': {
      'pt': 'Suporte via Chat',
      'en': 'Chat Support',
    },
    '0q9svw51': {
      'pt': 'Tempo médio de resposta: menos de 3 minutos',
      'en': 'Average response time: less than 3 minutes',
    },
    'te3bd2du': {
      'pt': 'Iniciar conversa com um atendente',
      'en': 'Start a conversation with an attendant',
    },
    'edh52zk5': {
      'pt': 'E-mail de Suporte',
      'en': 'Support Email',
    },
    '5hdasei3': {
      'pt': 'suporte.ticketexchange@gmail.com',
      'en': 'support.ticketexchange@gmail.com',
    },
    '5ahiog7o': {
      'pt': 'Tempo médio de resposta: até 24h úteis',
      'en': 'Average response time: up to 24 business hours',
    },
    'ronz8214': {
      'pt': 'Central de Ajuda',
      'en': 'Help Center',
    },
    'ka9psz2v': {
      'pt': 'Acesse nossas políticas',
      'en': 'Access our policies',
    },
    '5u8zbste': {
      'pt': 'Políticas',
      'en': 'Policies',
    },
    'twj8b5s1': {
      'pt': 'Horário de Atendimento',
      'en': 'Opening Hours',
    },
    'vaa1bukn': {
      'pt': 'Segunda a Sexta: 8h às 22h',
      'en': 'Monday to Friday: 8am to 10pm',
    },
    '1o2cf0wq': {
      'pt': 'Sábados e Feriados: 24h',
      'en': 'Saturdays and Holidays: 24h',
    },
    'subevjtt': {
      'pt': 'Suporte',
      'en': 'Support',
    },
    'jqq5159y': {
      'pt': 'Falar com o Suporte Agora',
      'en': 'Talk to Support Now',
    },
  },
  // avaliacoes
  {
    'qs3hfjae': {
      'pt': 'Avaliações do Usuário',
      'en': 'User Reviews',
    },
    'fmsk09zg': {
      'pt': 'Detalhes do cliente',
      'en': 'Customer Details',
    },
    '5i5gapai': {
      'pt': 'Veja as avaliações abaixo compartilhadas por outros usuários.',
      'en': 'See the reviews below shared by other users.',
    },
  },
  // eventosdomes
  {
    '2ojq15b5': {
      'pt': 'Eventos do Mês',
      'en': 'Events of the Month',
    },
    '21v604ly': {
      'pt': 'Pesquisar eventos...',
      'en': 'Search events...',
    },
    '5pwxotg1': {
      'pt': 'Todas',
      'en': 'All',
    },
    '62evhego': {
      'pt': 'Categoria',
      'en': 'Category',
    },
    'guh1izj6': {
      'pt': 'Todas',
      'en': 'All',
    },
    'kqr8jtx0': {
      'pt': 'Show',
      'en': 'Shows',
    },
    'qew08ctk': {
      'pt': 'Festa',
      'en': 'Parties',
    },
    'kru25ixh': {
      'pt': 'Teatro',
      'en': 'Theaters',
    },
    'wue1jwvr': {
      'pt': 'Esporte',
      'en': 'Sports',
    },
    'oouhhipl': {
      'pt': 'Mais recentes',
      'en': 'Most recent',
    },
    'bzxv4k0z': {
      'pt': 'Ordenar por',
      'en': 'Sort by',
    },
    'm2jz94eu': {
      'pt': 'Mais recentes',
      'en': 'Most recent',
    },
    'bcwa2oit': {
      'pt': 'Mais baratos',
      'en': 'Cheaper',
    },
    'af9i4r1v': {
      'pt': 'Mais próximos',
      'en': 'Closest',
    },
    '3k8rpm1s': {
      'pt': 'Eventos em Junho de 2025',
      'en': 'Events in June 2025',
    },
    'ylz5r862': {
      'pt': 'Chale',
      'en': '',
    },
    '7ek73gck': {
      'pt': 'Desmantelo',
      'en': '',
    },
    'gc2uhw3h': {
      'pt': 'Jan 10, 2025, 05:00 AM',
      'en': '',
    },
    'xge7k7pl': {
      'pt': 'R\$500',
      'en': '',
    },
    'xu9ds9su': {
      'pt': '4.9',
      'en': '4.9',
    },
  },
  // lanceenviado2
  {
    '3hprt49e': {
      'pt': 'Lances Enviados',
      'en': 'Bids Sent',
    },
    'tjxvbp5n': {
      'pt': 'Festival BH Music',
      'en': '',
    },
    '1wrjmxae': {
      'pt': 'Data: 05 Jul 2025',
      'en': '',
    },
    'nrlu0jgd': {
      'pt': 'Local: Mineirão - BH',
      'en': '',
    },
    'iwadfrc9': {
      'pt': 'Lance enviado: R\$ 89,90',
      'en': '',
    },
    'sztav3mj': {
      'pt': 'Rock in Rio 2025',
      'en': 'Rock in Rio 2025',
    },
    'ygr8neba': {
      'pt': 'Data: 15 Set 2025',
      'en': 'Date: 15 Sep 2025',
    },
    'gvpyut0m': {
      'pt': 'Local: Cidade do Rock - RJ',
      'en': 'Location: Rock City - RJ',
    },
    'ygfh87dz': {
      'pt': ' Lance enviado: R\$ 150,00',
      'en': 'Bid sent: R\$ 150.00',
    },
    'ckirg32c': {
      'pt': 'Lollapalooza Brasil',
      'en': 'Lollapalooza Brazil',
    },
    '4yjhk6fd': {
      'pt': 'Data: 28 Mar 2025',
      'en': 'Date: 28 Mar 2025',
    },
    'lt0b9zez': {
      'pt': 'Local: Autódromo - SP',
      'en': 'Location: Racetrack - SP',
    },
    '7ly8pbt0': {
      'pt': 'Lance enviado: R\$ 200,00',
      'en': 'Bid sent: R\$ 200.00',
    },
    'rs9e76rc': {
      'pt': 'Show da Anitta',
      'en': 'Anitta\'s Show',
    },
    '275yl5lk': {
      'pt': 'Data: 12 Dez 2024',
      'en': 'Date: 12 Dec 2024',
    },
    'gy5a2bez': {
      'pt': 'Local: Arena BRB - DF',
      'en': 'Location: Arena BRB - DF',
    },
    'ubqrue0g': {
      'pt': 'Lance enviado: R\$ 75,50',
      'en': 'Bid sent: R\$ 75.50',
    },
    'xedf0xr9': {
      'pt': 'Peça: O Rei Leão',
      'en': 'Play: The Lion King',
    },
    '32vskg8i': {
      'pt': 'Data: 20 Jan 2025',
      'en': 'Date: 20 Jan 2025',
    },
    '297bz6bf': {
      'pt': 'Local: Teatro Renault - SP',
      'en': 'Location: Renault Theater - SP',
    },
    '65tfdrhs': {
      'pt': ' Lance enviado: R\$ 120,00',
      'en': 'Bid sent: R\$ 120.00',
    },
  },
  // IngressoEspecfico1Copy
  {
    'i3bc4v18': {
      'pt': 'Informações do Ingresso',
      'en': 'Ticket Information',
    },
    '5hrzebdh': {
      'pt': '📅 Data:',
      'en': '📅 Date:',
    },
    't80p71sa': {
      'pt': '📍Local: ',
      'en': '📍Location:',
    },
    '7z8m4yyn': {
      'pt': 'Plataforma Oficial:',
      'en': 'Official Platform:',
    },
    '8cnsufpx': {
      'pt': 'Cidade:',
      'en': 'City:',
    },
    'eeq358t9': {
      'pt': 'Belo Horizonte MG',
      'en': 'Belo Horizonte MG',
    },
    'ybjheahr': {
      'pt': 'São Paulo SP',
      'en': 'Sao Paulo SP',
    },
    'gkfba6xp': {
      'pt': 'Rio de Janeiro RJ',
      'en': 'Rio de Janeiro RJ',
    },
    '4ymy336d': {
      'pt': 'Vitória ES',
      'en': 'Victory ES',
    },
    'p2zribmc': {
      'pt': 'Curitiba PR',
      'en': 'Curitiba PR',
    },
    'j9l0lfco': {
      'pt': 'Fortaleza CE',
      'en': 'Fortaleza CE',
    },
    'e59ldbod': {
      'pt': 'Outros...',
      'en': 'Others...',
    },
    '8jeh2d2l': {
      'pt': 'Balneário Camboriú SC',
      'en': 'Balneario Camboriu SC',
    },
    'whyd7gu4': {
      'pt': 'Brasília DF',
      'en': 'Brasilia DF',
    },
    'eofw0esi': {
      'pt': 'Recife PE',
      'en': 'Recife PE',
    },
    '33vbmf9o': {
      'pt': 'Florianopólis SC',
      'en': 'Florianopolis SC',
    },
    'lzkfmr4e': {
      'pt': 'Descrição:',
      'en': 'Description:',
    },
    'mtd12w8l': {
      'pt': 'OPEN BAR ',
      'en': 'OPEN BAR',
    },
    '3xejqaqb': {
      'pt': 'Comprar',
      'en': 'Buy',
    },
    'he1tzk0l': {
      'pt': 'Dê seu Lance',
      'en': 'Place your bid',
    },
    'qemo2d0h': {
      'pt':
          'Faça uma oferta personalizada para este ingresso. O vendedor poderá aceitar ou recusar o seu lance.',
      'en':
          'Make a custom offer on this ticket. The seller can accept or decline your bid.',
    },
    'slcrml11': {
      'pt': 'Valor do Lance',
      'en': 'Bid Value',
    },
    'ws6hu22u': {
      'pt': 'Exemplo: R\$ 400,00',
      'en': 'Example: R\$ 400.00',
    },
    '2fy9s7w8': {
      'pt': 'Enviar Lance',
      'en': 'Submit Bid',
    },
    'vqxefb02': {
      'pt': 'Vendedor',
      'en': 'Seller',
    },
    '7btbyivp': {
      'pt': '4.8',
      'en': '4.8',
    },
    'a0vbgqbq': {
      'pt': 'Ver Perfil',
      'en': 'View Profile',
    },
    'sy56c253': {
      'pt': 'Dados',
      'en': 'Data',
    },
    '9wt5i8pz': {
      'pt': 'Ingressos\nVendidos',
      'en': 'Tickets\nSold',
    },
    'xi0tomnl': {
      'pt': 'Likes',
      'en': 'Likes',
    },
    'rgyodvht': {
      'pt': 'Ingressos\nComprados',
      'en': 'Tickets\nPurchased',
    },
    'l4icf0u6': {
      'pt': 'Imagens do Evento',
      'en': 'Event Images',
    },
    's0lpv6p7': {
      'pt': 'Comprar',
      'en': 'Buy',
    },
    'kami9hw4': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // categoriafesta
  {
    '4ukhb84a': {
      'pt': 'FESTAS',
      'en': 'PARTIES',
    },
    '5w5nd1k5': {
      'pt': 'Encontre os melhores eventos musicais',
      'en': 'Find the best music events',
    },
    'ze021lpi': {
      'pt': 'Descubra shows, teatros...',
      'en': 'Discover shows, theaters...',
    },
    'svzp23du': {
      'pt': 'Ordenar',
      'en': 'Sort',
    },
    'sil2lxnu': {
      'pt': 'Tipo',
      'en': 'Type',
    },
    'f882k9ad': {
      'pt': 'Ordenar',
      'en': 'Sort',
    },
    'x1k1qon9': {
      'pt': 'Melhores Ofertas em Festas',
      'en': 'Best Party Deals',
    },
    'cdhb04vm': {
      'pt': 'Festival BH Music',
      'en': 'BH Music Festival',
    },
    '0qblfoqs': {
      'pt': '28 Jun • Mineirão',
      'en': '28 Jun • Mineirão',
    },
    '31t72m83': {
      'pt': 'R\$ 49,90',
      'en': 'R\$ 49.90',
    },
    '0pis9o2g': {
      'pt': 'Festival BH Music',
      'en': 'BH Music Festival',
    },
    'jfjwl6lc': {
      'pt': '28 Jun • Mineirão',
      'en': '28 Jun • Mineirão',
    },
    'oghh1t3q': {
      'pt': 'R\$ 49,90',
      'en': 'R\$ 49.90',
    },
    'jlzyx75k': {
      'pt': 'Todos os Ingressos de Festas',
      'en': 'All Party Tickets',
    },
    '4kx3ac26': {
      'pt': 'Festas',
      'en': 'Parties',
    },
    '27o71ixr': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // categoriaesporte
  {
    'pojmoi1z': {
      'pt': 'ESPORTE',
      'en': 'SPORT',
    },
    'bbuigpq8': {
      'pt': 'Encontre os melhores eventos esportivos',
      'en': 'Find the best sporting events',
    },
    '1lwqjloe': {
      'pt': 'Descubra shows, teatros...',
      'en': 'Discover shows, theaters...',
    },
    'wv04ztca': {
      'pt': 'Ordenar',
      'en': 'Sort',
    },
    '2engjf37': {
      'pt': 'Tipo',
      'en': 'Type',
    },
    'cd47sc0k': {
      'pt': 'Ordenar',
      'en': 'Sort',
    },
    'u48n2w7i': {
      'pt': 'Melhores Ofertas em Esportes',
      'en': 'Best Sports Deals',
    },
    'rs2dsoeg': {
      'pt': 'Festival BH Music',
      'en': 'BH Music Festival',
    },
    '9wa4b60u': {
      'pt': '28 Jun • Mineirão',
      'en': '28 Jun • Mineirão',
    },
    'kc0zhncf': {
      'pt': 'R\$ 49,90',
      'en': 'R\$ 49.90',
    },
    'avwht57v': {
      'pt': 'Festival BH Music',
      'en': 'BH Music Festival',
    },
    'wnp7i8sv': {
      'pt': '28 Jun • Mineirão',
      'en': '28 Jun • Mineirão',
    },
    'plqc9moj': {
      'pt': 'R\$ 49,90',
      'en': 'R\$ 49.90',
    },
    '5o4222kf': {
      'pt': 'Todos os Ingressos de Esportes',
      'en': 'All Sports Tickets',
    },
    '0xhspz5k': {
      'pt': 'Esportes',
      'en': 'Sports',
    },
    'dma1an7k': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // categoriateatro
  {
    'lyvk4rk0': {
      'pt': 'TEATROS',
      'en': 'THEATERS',
    },
    'i9rf40gd': {
      'pt': 'Encontre os melhores eventos musicais',
      'en': 'Find the best music events',
    },
    'jchunp2k': {
      'pt': 'Descubra shows, teatros...',
      'en': 'Discover shows, theaters...',
    },
    '143c18we': {
      'pt': 'Ordenar',
      'en': 'Sort',
    },
    'y652pot5': {
      'pt': 'Tipo',
      'en': 'Type',
    },
    'nir8iqzx': {
      'pt': 'Ordenar',
      'en': 'Sort',
    },
    'fkq8h1lc': {
      'pt': 'Melhores Ofertas em Teatros',
      'en': 'Best Deals on Theaters',
    },
    'kdtk0b2h': {
      'pt': 'Festival BH Music',
      'en': 'BH Music Festival',
    },
    'pdfa0iz5': {
      'pt': '28 Jun • Mineirão',
      'en': '28 Jun • Mineirão',
    },
    'xhrg8qku': {
      'pt': 'R\$ 49,90',
      'en': 'R\$ 49.90',
    },
    'yrnqwzdh': {
      'pt': 'Festival BH Music',
      'en': 'BH Music Festival',
    },
    '94kgho33': {
      'pt': '28 Jun • Mineirão',
      'en': '28 Jun • Mineirão',
    },
    '3on767pi': {
      'pt': 'R\$ 49,90',
      'en': 'R\$ 49.90',
    },
    'dxkrk2lw': {
      'pt': 'Todos os Ingressos de Teatros',
      'en': 'All Theater Tickets',
    },
    'igvuarri': {
      'pt': 'R\$500',
      'en': '',
    },
    'uozpsx7m': {
      'pt': 'Shows',
      'en': 'Shows',
    },
    '715ugsxu': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // politicadedevolucao
  {
    'otiz90r8': {
      'pt': 'Política de Devolução',
      'en': 'Return policy',
    },
    'n4lf2k0b': {
      'pt': 'Política de Devolução',
      'en': 'Return policy',
    },
    'h19sd92h': {
      'pt':
          'Na Ticket Exchange, valorizamos a confiança que você deposita em nosso serviço. Nossa política de devolução de ingressos foi elaborada para garantir que sua experiência de compra seja transparente e livre de preocupações. Por favor, revise atentamente os seguintes termos:',
      'en':
          'At Ticket Exchange, we value the trust you place in our service. Our ticket return policy is designed to ensure your ticket purchasing experience is transparent and worry-free. Please review the following terms carefully:',
    },
    '0ahqsshl': {
      'pt': '1- Devolução Integral em caso de não envio:',
      'en': '1- Full Refund in case of non-shipment:',
    },
    'm4bd43ao': {
      'pt':
          ' . Se, por algum motivo,o  ingresso adquirido através de nosso site, não for enviado, garantimos a devolução integral do valor pago.',
      'en':
          '. If, for any reason, the ticket purchased through our website is not sent, we guarantee a full refund of the amount paid.',
    },
    'l32idrkq': {
      'pt':
          '. O reembolso será processado usando o método de pagamento original, e você será notificado por e-mail sobre a devolução.',
      'en':
          '. The refund will be processed using the original payment method, and you will be notified by email of the refund.',
    },
    '7sveqxbx': {
      'pt': '2- Envio do Ingresso após confirmação do pagamento:',
      'en': '2- Ticket shipping after payment confirmation:',
    },
    'xcnhh0gz': {
      'pt':
          '. Os ingressos serão enviados somente após a confirmação do pagamento.',
      'en': '. Tickets will only be sent after payment confirmation.',
    },
    '2al3c2h3': {
      'pt':
          '. Recomendamos que leve em consideração o tempo necessário para a confirmação do pagamento ao fazer sua compra.',
      'en':
          '. We recommend that you take into account the time required for payment confirmation when making your purchase.',
    },
    '9mc3uu02': {
      'pt': '3- Notificação de confirmação de envio:',
      'en': '3- Shipping confirmation notification:',
    },
    '8wvksuso': {
      'pt':
          '. Assim que os ingressos forem enviados, você receberá uma notificação por e-mail e pelo aplicativo contendo informações relevantes.',
      'en':
          '. Once tickets are shipped, you will receive an email and app notification containing relevant information.',
    },
    'yd0w98m3': {
      'pt': '4-Prazos de Envio:',
      'en': '4-Shipping Deadlines:',
    },
    'ewiy1gtt': {
      'pt':
          'Os prazos de envio é de 12 horas após a confirmação do pagamento. Em caso de qualquer atraso imprevisto, você será prontamente informado, juntamente com uma estimativa revisada do prazo de envio.',
      'en':
          'Shipping times are 12 hours after payment confirmation. In case of any unforeseen delay, you will be promptly informed, along with a revised shipping time estimate.',
    },
    '8wqeacti': {
      'pt': '5- Alterações e Cancelamentos:',
      'en': '5- Changes and Cancellations:',
    },
    'qa5byto0': {
      'pt':
          'Qualquer solicitação de alteração ou cancelamento da compra  deve ser feita antes da confirmação do pagamento e do envio do ingresso, dento prazo máximo de 30 minutos para qualuqer solitição, uma vez o ingresso tendo sido enviado, so haverá reembolso após a devolução do ingresso para o vendedor.',
      'en':
          'Any request to change or cancel the purchase must be made before confirmation of payment and sending of the ticket, within a maximum period of 30 minutes for any request. Once the ticket has been sent, a refund will only be made after the ticket has been returned to the seller.',
    },
    'xjpas7wx': {
      'pt': '6- Canais de Atendimento ao cliente:',
      'en': '6- Customer Service Channels:',
    },
    'si7mcdpy': {
      'pt':
          '. Estamos aqui para ajudar. Se você tiver dúvidas, problemas ou solicitações especiais, entre em contato com nosso serviço de atendimento ao cliente pelo e-mail: suporte.ticketexchange@gmail.com ou pelo telefone +55 (31) 98964-3723.',
      'en':
          '. We are here to help. If you have any questions, issues or special requests, please contact our customer service team by email: suporte.ticketexchange@gmail.com or by phone +55 (31) 98964-3723.',
    },
    'd4j0l9j9': {
      'pt':
          '- Ao optar por adquirir ingressos através da Ticket Exchange, você concorda automaticamente com os termos e condições desta política de devolução. Esteja ciente de que esta política está sujeita a alterações, e qualquer modificação será comunicada a você de maneira oportuna.',
      'en':
          '- By choosing to purchase tickets through Ticket Exchange, you automatically agree to the terms and conditions of this return policy. Please be aware that this policy is subject to change, and any modifications will be communicated to you in a timely manner.',
    },
    'hzt18wd3': {
      'pt':
          'Agradecemos por escolher a Ticket Exchange. Estamos comprometidos em proporcionar uma experiência de compra de ingressos sem complicações e satisfatória.',
      'en':
          'Thank you for choosing Ticket Exchange. We are committed to providing a hassle-free and satisfying ticket purchasing experience.',
    },
    'ha47lq59': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // politicadecompravenda
  {
    '7bgoo4q4': {
      'pt': 'Processo de Compra',
      'en': 'Purchasing Process',
    },
    'f2lnzio7': {
      'pt': 'Processo de Compra',
      'en': 'Purchasing Process',
    },
    '24vtdese': {
      'pt':
          'Na Ticket Exchange, nossa prioridade é garantir uma experiência de compra de ingressos transparente e eficiente. Para assegurar a entrega oportuna de ingressos, implementamos a seguinte política:',
      'en':
          'At Ticket Exchange, our priority is to ensure a transparent and efficient ticket purchasing experience. To ensure timely ticket delivery, we have implemented the following policy:',
    },
    'xsjubklz': {
      'pt': '1 - Confirmação do Pagamento:',
      'en': '1 - Payment Confirmation:',
    },
    'cwa450n6': {
      'pt':
          'Após a confirmação do pagamento, o vendedor do ingresso tem a responsabilidade de enviar o ingresso ao comprador dentro do prazo especificado.',
      'en':
          'After payment confirmation, the ticket seller is responsible for sending the ticket to the buyer within the specified time frame.',
    },
    'huzf2cit': {
      'pt': '2 - Prazo de Envio:',
      'en': '2 - Shipping Deadline:',
    },
    's7i9p2vy': {
      'pt':
          'O vendedor tem até 12 hora após a confirmação do pagamento para enviar o ingresso ao comprador. O envio deve ser feito pela plataforma oficial do ingresso, conforme as informações fornecidas durante a compra.',
      'en':
          'The seller has up to 12 hours after payment confirmation to send the ticket to the buyer. Shipping must be done through the official ticket platform, according to the information provided during purchase.',
    },
    '2ecc39qn': {
      'pt': '3 - Investigação em Caso de Atraso:',
      'en': '3 - Investigation in Case of Delay:',
    },
    'h9af4kbi': {
      'pt':
          'Se o ingresso não for enviado dentro do prazo de 12 hora, nossa equipe iniciará uma investigação para determinar a razão do atraso.',
      'en':
          'If the ticket is not submitted within the 12 hour timeframe, our team will initiate an investigation to determine the reason for the delay.',
    },
    '89b8f23z': {
      'pt': '4 - Devolução do Dinheiro em caso de não envio:',
      'en': '4 - Money back in case of non-shipment:',
    },
    'ys7ywhh6': {
      'pt':
          '. Caso o ingresso não seja enviado dentro de 4 horas após o prazo inicial de 12 hora, e a investigação não justificar o atraso, o dinheiro será automaticamente devolvido ao comprador.',
      'en':
          '. If the ticket is not sent within 4 hours after the initial 12 hour deadline, and the investigation does not justify the delay, the money will be automatically returned to the buyer.',
    },
    'z8x1065f': {
      'pt':
          '. O reembolso será processado da mesma forma que o pagamento original e o comprador será notificado por e-mail sobre a devolução.',
      'en':
          '. The refund will be processed in the same way as the original payment and the buyer will be notified by email of the return.',
    },
    '4ts4ycgy': {
      'pt': '5 - Comunicação Transparente:',
      'en': '5 - Transparent Communication:',
    },
    'u6tspnx2': {
      'pt':
          'Recomendamos a comunicação entre o vendedor e o comprador para garantir transparência e facilitar a resolução de problemas, ela deve ser clara e objetiva.',
      'en':
          'We recommend communication between the seller and the buyer to ensure transparency and facilitate problem resolution, it must be clear and objective.',
    },
    'q1mji0rt': {
      'pt': '6 - Informações de Contato Atualizadas:',
      'en': '6 - Updated Contact Information:',
    },
    '9mtdv294': {
      'pt':
          'É responsabilidade do comprador e do vendedor manterem suas informações de contato atualizadas na plataforma para garantir uma comunicação eficaz.',
      'en':
          'It is the responsibility of both the buyer and seller to keep their contact information up to date on the platform to ensure effective communication.',
    },
    'bgmyibig': {
      'pt': '7 - Revisão Periódica da Política:',
      'en': '7 - Periodic Review of the Policy:',
    },
    'fgmj7232': {
      'pt':
          'Esta política será revisada periodicamente para garantir que continue a atender às necessidades e expectativas dos nossos usuários.',
      'en':
          'This policy will be reviewed periodically to ensure that it continues to meet the needs and expectations of our users.',
    },
    '1tcfeikt': {
      'pt':
          'Ao comprar ingressos através da Ticket Exchange, os clientes e vendedores concordam automaticamente com os termos e condições desta política de compra e envio. Estamos comprometidos em fornecer um ambiente confiável para transações de ingressos e em assegurar que ambas as partes tenham uma experiência positiva.',
      'en':
          'By purchasing tickets through Ticket Exchange, both customers and sellers automatically agree to the terms and conditions of this purchasing and shipping policy. We are committed to providing a trusted environment for ticket transactions and ensuring that both parties have a positive experience.',
    },
    '56c4z3ia': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // politicadeprivacidade
  {
    'hn194j5p': {
      'pt': 'Políticas de Privacidade',
      'en': 'Privacy Policies',
    },
    'vzl2ik6i': {
      'pt': 'Políticas de Privacidade',
      'en': 'Privacy Policies',
    },
    '0ldekrmz': {
      'pt': 'Atualizada em 2 de Janeiro de 2024',
      'en': 'Updated January 2, 2024',
    },
    'umln5bnb': {
      'pt':
          'A sua privacidade é importante para nós. É política do Ticket Exchange respeitar a sua privacidade em relação a qualquer informação sua que possamos coletar no site Ticket Exchange, e outros sites que possuímos e operamos.',
      'en':
          'Your privacy is important to us. It is Ticket Exchange\'s policy to respect your privacy regarding any information we may collect from you across the Ticket Exchange website, and other sites we own and operate.',
    },
    'k6wfzj0f': {
      'pt':
          'Solicitamos informações pessoais apenas quando realmente precisamos delas para lhe fornecer um serviço. Fazemo-lo por meios justos e legais, com o seu conhecimento e consentimento. Também informamos por que estamos coletando e como será usado.',
      'en':
          'We only ask for personal information when we truly need it to provide a service to you. We collect it by fair and lawful means, with your knowledge and consent. We also let you know why we’re collecting it and how it will be used.',
    },
    'glrgyrqr': {
      'pt':
          'Apenas retemos as informações coletadas pelo tempo necessário para fornecer o serviço solicitado. Quando armazenamos dados, protegemos dentro de meios comercialmente aceitáveis ​​para evitar perdas e roubos, bem como acesso, divulgação, cópia, uso ou modificação não autorizados.',
      'en':
          'We only retain collected information for as long as necessary to provide you with your requested service. What data we store, we’ll protect within commercially acceptable means to prevent loss and theft, as well as unauthorized access, disclosure, copying, use or modification.',
    },
    'javtn7ow': {
      'pt':
          'Não compartilhamos informações de identificação pessoal publicamente ou com terceiros, exceto quando exigido por lei.',
      'en':
          'We don’t share any personally identifying information publicly or with third-parties, except when required to by law.',
    },
    'j03h17jj': {
      'pt':
          'O nosso site pode ter links para sites externos que não são operados por nós. Esteja ciente de que não temos controle sobre o conteúdo e práticas desses sites e não podemos aceitar responsabilidade por suas respectivas políticas de privacidade.',
      'en':
          'Our website may link to external sites that are not operated by us. Please be aware that we have no control over the content and practices of these sites, and cannot accept responsibility or liability for their respective privacy policies.',
    },
    '2yaaeg8l': {
      'pt':
          'Você é livre para recusar a nossa solicitação de informações pessoais, entendendo que talvez não possamos fornecer alguns dos serviços desejados.',
      'en':
          'You are free to refuse our request for your personal information, with the understanding that we may be unable to provide you with some of your desired services.',
    },
    '7ev8vsd5': {
      'pt':
          'O uso continuado de nosso site será considerado como aceitação de nossas práticas em torno de privacidade e informações pessoais. Se você tiver alguma dúvida sobre como lidamos com dados do usuário e informações pessoais, entre em contacto conosco.',
      'en':
          'Your continued use of our website will be regarded as acceptance of our practices around privacy and personal information. If you have any questions about how we handle user data and personal information, feel free to contact us.',
    },
    '55q2cco2': {
      'pt':
          '1. O serviço Google AdSense que usamos para veicular publicidade usa um cookie DoubleClick para veicular anúncios mais relevantes em toda a Web e limitar o número de vezes que um determinado anúncio é exibido para você.',
      'en':
          '1. The Google AdSense service we use to serve advertising uses a DoubleClick cookie to serve more relevant ads across the web and limit the number of times that a given ad is shown to you.',
    },
    '984xd1yf': {
      'pt':
          '2. Para mais informações sobre o Google AdSense, consulte as FAQs oficiais sobre privacidade do Google AdSense.',
      'en':
          '2. For more information about Google AdSense, see the official Google AdSense Privacy FAQs.',
    },
    'avcjsr3j': {
      'pt':
          '3. Utilizamos anúncios para compensar os custos de funcionamento deste site e fornecer financiamento para futuros desenvolvimentos. Os cookies de publicidade comportamental usados ​​por este site foram projetados para garantir que você forneça os anúncios mais relevantes sempre que possível, rastreando anonimamente seus interesses e apresentando coisas semelhantes que possam ser do seu interesse.',
      'en':
          '3. We use adverts to offset the costs of running this site and provide funding for further development. The behavioural advertising cookies used by this site are designed to ensure that we provide you with the most relevant adverts where possible by anonymously tracking your interests and presenting similar things that may be of interest.',
    },
    'z3f4ktvh': {
      'pt':
          '4. Vários parceiros anunciam em nosso nome e os cookies de rastreamento de afiliados simplesmente nos permitem ver se nossos clientes acessaram o site através de um dos sites de nossos parceiros, para que possamos creditá-los adequadamente e, quando aplicável, permitir que nossos parceiros afiliados ofereçam qualquer promoção que pode fornecê-lo para fazer uma compra.',
      'en':
          '4. Several partners advertise on our behalf and affiliate tracking cookies simply allow us to see if our customers have come to the site through one of our partner sites so that we can credit them appropriately and, where applicable, allow our affiliate partners to provide any bonus they may provide you for making a purchase.',
    },
    '79kluoco': {
      'pt': '- Compromisso do Usuário:',
      'en': '- User Commitment:',
    },
    'kr2fuxoh': {
      'pt':
          'O usuário se compromete a fazer uso adequado dos conteúdos e da informação que o Ticket Exchange oferece no site e com caráter enunciativo, mas não limitativo:',
      'en':
          'The user undertakes to make appropriate use of the content and information that Ticket Exchange offers on the website and, by way of example but not limited to:',
    },
    'y8q31bvt': {
      'pt':
          ' A) Não se envolver em atividades que sejam ilegais ou contrárias à boa fé a à ordem pública;\n\n B) Não difundir propaganda ou conteúdo de natureza racista, xenofóbica, 166bet ou azar, qualquer tipo de pornografia ilegal, de apologia ao terrorismo ou contra os direitos humanos;\n\n C) Não causar danos aos sistemas físicos (hardwares) e lógicos (softwares) do Ticket Exchange, de seus fornecedores ou terceiros, para introduzir ou disseminar vírus informáticos ou quaisquer outros sistemas de hardware ou software que sejam capazes de causar danos anteriormente mencionados.',
      'en':
          'A) Not to engage in activities that are illegal or contrary to good faith and public order;\n\nB) Not to disseminate propaganda or content of a racist, xenophobic, 166bet or gambling nature, any type of illegal pornography, in support of terrorism or against human rights;\n\nC) Not to cause damage to the physical (hardware) and logical (software) systems of Ticket Exchange, its suppliers or third parties, to introduce or disseminate computer viruses or any other hardware or software systems that are capable of causing the aforementioned damage.',
    },
    'f9oj4o24': {
      'pt': '- Mais informações:',
      'en': '- More information:',
    },
    'u0pa3ur3': {
      'pt':
          'Esperemos que esteja esclarecido e, como mencionado anteriormente, se houver algo que você não tem certeza se precisa ou não, geralmente é mais seguro deixar os cookies ativados, caso interaja com um dos recursos que você usa em nosso app.',
      'en':
          'Hopefully that has clarified things for you and as was previously mentioned if there is something that you aren\'t sure whether you need or not it\'s usually safer to leave cookies enabled in case it does interact with one of the features you use on our app.',
    },
    'v5a735he': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // politTERMOSDEUSO
  {
    'bf1xmyo9': {
      'pt': 'Termos de Uso',
      'en': 'Terms of Use',
    },
    'h6k7qlvy': {
      'pt': 'Termos de Uso',
      'en': 'Terms of Use',
    },
    'htp3hlef': {
      'pt': '1. Termos',
      'en': '1. Terms',
    },
    'opey18te': {
      'pt':
          'Ao acessar o app Ticket Exchange, concorda em cumprir estes termos de serviço, todas as leis e regulamentos aplicáveis e concorda que é responsável pelo cumprimento de todas as leis locais aplicáveis. Se você não concordar com algum desses termos, está proibido de usar ou acessar este site. Os materiais contidos neste site são protegidos pelas leis de direitos autorais e marcas comerciais aplicáveis.',
      'en':
          'By accessing the Ticket Exchange app, you agree to comply with these terms of service, all applicable laws and regulations, and agree that you are responsible for compliance with all applicable local laws. If you do not agree with any of these terms, you are prohibited from using or accessing this site. The materials contained in this site are protected by applicable copyright and trademark law.',
    },
    '7gfhdwiq': {
      'pt': '2. Uso de Licença',
      'en': '2. Use License',
    },
    'ej272ozf': {
      'pt':
          'É concedida permissão para baixar temporariamente uma cópia dos materiais (informações ou software) no app Ticket Exchange, apenas para visualização transitória pessoal e não comercial. Esta é a concessão de uma licença, não uma transferência de título e, sob esta licença, você não pode:',
      'en':
          'Permission is granted to temporarily download one copy of the materials (information or software) on Ticket Exchange app for personal, non-commercial transitory viewing only. This is the grant of a license, not a transfer of title, and under this license you may not:',
    },
    '081km6dx': {
      'pt': '1- Modificar ou copiar os materiais;',
      'en': '1- Modify or copy the materials;',
    },
    'w7x2ok98': {
      'pt':
          '2- Usar os materiais para qualquer finalidade comercial ou para exibição pública;',
      'en':
          '2- Use the materials for any commercial purpose or for public display;',
    },
    'a2x202ap': {
      'pt':
          '3- Tentar descompilar ou fazer engenharia reversa de qualquer software;',
      'en': '3- Attempt to decompile or reverse engineer any software;',
    },
    's523r0rn': {
      'pt':
          '4- Remover quaisquer direitos autorais ou outras notações de propriedade;',
      'en': '4- Remove any copyright or other proprietary notations;',
    },
    '7oq9t0iq': {
      'pt':
          '5- Transferir os materiais para outra pessoa ou \'espelhe\' os materiais.',
      'en':
          '5- Transfer the materials to another person or \'mirror\' the materials.',
    },
    'me3qmc5r': {
      'pt': '3. Isenção de responsabilidade',
      'en': '3. Disclaimer',
    },
    'e293hoky': {
      'pt':
          '1- Os materiais no site da Ticket Exchange são fornecidos \'como estão\'. Ticket Exchange não oferece garantias, expressas ou implícitas, e isenta-se de todas as garantias.',
      'en':
          '1- The materials on Ticket Exchange\'s website are provided \'as is\'. Ticket Exchange makes no warranties, expressed or implied, and disclaims all warranties.',
    },
    'biju3pdu': {
      'pt':
          '2- O Ticket Exchange não garante a precisão, resultados prováveis ou confiabilidade do uso dos materiais.',
      'en':
          '2- Ticket Exchange does not guarantee the accuracy, likely results or reliability of the use of the materials.',
    },
    'etgoef8w': {
      'pt': '4. Limitações',
      'en': '4. Limitations',
    },
    'izp8ph15': {
      'pt':
          'Em nenhum caso a Ticket Exchange será responsável ​​por quaisquer danos (incluindo, sem limitação, danos por perda de dados ou lucro ou devido a interrupção dos negócios) decorrentes do uso ou da incapacidade de usar os materiais em Ticket Exchange, mesmo que Ticket Exchange ou um representante autorizado da Ticket Exchange tenha sido notificado oralmente ou por escrito da possibilidade de tais danos. Como algumas jurisdições não permitem limitações em garantias implícitas, ou limitações de responsabilidade por danos conseqüentes ou incidentais, essas limitações podem não se aplicar a você.',
      'en':
          'In no event shall Ticket Exchange be liable for any damages (including, without limitation, damages for loss of data or profit, or due to business interruption) arising out of the use or inability to use the materials on Ticket Exchange\'s Internet site, even if Ticket Exchange or a Ticket Exchange authorized representative has been notified orally or in writing of the possibility of such damage. Because some jurisdictions do not allow limitations on implied warranties, or limitations of liability for consequential or incidental damages, these limitations may not apply to you.',
    },
    'g6kuc722': {
      'pt': '5. Precisão dos materiais',
      'en': '5. Accuracy of materials',
    },
    'mouo6lef': {
      'pt':
          'Os materiais exibidos no site da Ticket Exchange podem incluir erros técnicos, tipográficos ou fotográficos. Ticket Exchange não garante que qualquer material em seu site seja preciso, completo ou atual. Ticket Exchange pode fazer alterações nos materiais contidos em seu site a qualquer momento, sem aviso prévio. No entanto, Ticket Exchange não se compromete a atualizar os materiais.',
      'en':
          'The materials displayed on the Ticket Exchange website may include technical, typographical, or photographic errors. Ticket Exchange does not warrant that any material on its website is accurate, complete, or current. Ticket Exchange may make changes to the materials contained on its website at any time without notice. However, Ticket Exchange does not make any commitment to update the materials.',
    },
    'xdichqus': {
      'pt': '6. Links',
      'en': '6. Links',
    },
    'z07v0sb4': {
      'pt':
          'O Ticket Exchange não analisou todos os sites vinculados ao seu site e não é responsável pelo conteúdo de nenhum site vinculado. A inclusão de qualquer link não implica endosso por Ticket Exchange do site. O uso de qualquer site vinculado é por conta e risco do usuário.',
      'en':
          'Ticket Exchange has not reviewed all of the sites linked to its website and is not responsible for the contents of any such linked site. The inclusion of any link does not imply endorsement by Ticket Exchange of the site. Use of any such linked website is at the user\'s own risk.',
    },
    'krdr8nz6': {
      'pt': 'Modificações',
      'en': 'Modifications',
    },
    '23f4b8lv': {
      'pt':
          'O Ticket Exchange pode revisar estes termos de serviço do site a qualquer momento, sem aviso prévio. Ao usar este site, você concorda em ficar vinculado à versão atual desses termos de serviço.',
      'en':
          'Ticket Exchange may revise these terms of service for its website at any time without notice. By using this website you are agreeing to be bound by the then current version of these terms of service.',
    },
    'ph6m74hw': {
      'pt': 'Lei aplicável',
      'en': 'Applicable law',
    },
    '78w6ahnr': {
      'pt':
          'Estes termos e condições são regidos e interpretados de acordo com as leis do Ticket Exchange e você se submete à jurisdição exclusiva dos tribunais naquele estado ou localidade.',
      'en':
          'These terms and conditions are governed by and construed in accordance with the laws of Ticket Exchange and you submit to the exclusive jurisdiction of the courts in that State or location.',
    },
    'z7kq6620': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // politTAXADESERVICO
  {
    'q3puqv75': {
      'pt': 'Taxa de serviço',
      'en': 'Service fee',
    },
    '3ygwahl6': {
      'pt': 'Taxa de serviço',
      'en': 'Service fee',
    },
    'h1wmbodf': {
      'pt':
          'No Ticket Exchange, visamos fornecer uma plataforma transparente e eficiente para a compra e venda de ingressos. Para garantir a continuidade e aprimoramento dos nossos serviços, aplicamos as seguintes taxas:',
      'en':
          'At Ticket Exchange, we aim to provide a transparent and efficient platform for buying and selling tickets. To ensure the continuity and improvement of our services, we apply the following fees:',
    },
    '2hy5kg5h': {
      'pt': '1 - Taxa Padrão de Serviço (9%):',
      'en': '1 - Standard Service Fee (9%):',
    },
    'qt245qde': {
      'pt':
          '. Em cada transação de venda de ingressos realizada através do nosso aplicativo, uma taxa de serviço padrão de 9% será aplicada.',
      'en':
          '. For every ticket sales transaction made through our app, a standard 9% service fee will be applied.',
    },
    'qonzexlv': {
      'pt':
          '.Esta taxa será automaticamente deduzida do valor total da transação no momento da transferência do dinheiro para o vendedor.',
      'en':
          '.This fee will be automatically deducted from the total transaction amount at the time of transferring the money to the seller.',
    },
    'li26gtxc': {
      'pt': '2 - Taxa de Aumento de Alcance:',
      'en': '2 - Range Increase Rate:',
    },
    'cjdegnbs': {
      'pt':
          '. Entendemos que o alcance é crucial para o sucesso na venda de ingressos. Portanto, uma taxa adicional será aplicada com base no aumento de alcance selecionado pelo vendedor.',
      'en':
          '. We understand that reach is crucial to ticket sales success. Therefore, an additional fee will be applied based on the reach increase selected by the seller.',
    },
    '3pi2rsb4': {
      'pt':
          '. O aumento de alcance pode ser escolhido em diferentes níveis, com taxas correspondentes. Quanto maior o alcance desejado e o número de dias selecionado, maior será a taxa adicional.\nEstas taxas adicionais serão claramente apresentadas durante o processo de venda de ingressos.',
      'en':
          '. The range increase can be chosen at different levels, with corresponding fees. The higher the desired range and the number of days selected, the higher the additional fee will be.\nThese additional fees will be clearly displayed during the ticket sales process.',
    },
    'gpc75brp': {
      'pt': '- Exemplo:',
      'en': '- Example:',
    },
    'gd6fokc6': {
      'pt': 'Taxa padrão de serviço (9%): R\$10,00',
      'en': 'Standard service fee (9%): R\$10.00',
    },
    'ev3ue3f3': {
      'pt': 'Taxa de aumento de alcance: R\$5,00 (exemplo)',
      'en': 'Range increase fee: R\$5.00 (example)',
    },
    '2dt5gs9k': {
      'pt':
          'Total de Taxas: R\$15,00 (9% da transação + taxa de aumento de alcance - caso esteja ativada)',
      'en':
          'Total Fees: R\$15.00 (9% of the transaction + range increase fee - if enabled)',
    },
    'iqpr73ri': {
      'pt': '3 -  Transparência e Notificação:',
      'en': '3 - Transparency and Notification:',
    },
    'rtdncvy8': {
      'pt':
          '. Todas as taxas serão claramente exibidas durante o processo de venda, proporcionando total transparência aos vendedores.',
      'en':
          '. All fees will be clearly displayed during the sales process, providing complete transparency to sellers.',
    },
    'jj97gopk': {
      'pt':
          '. Os vendedores serão notificados de maneira proativa sobre as taxas aplicáveis antes de confirmar a transação.',
      'en':
          '. Sellers will be proactively notified of applicable fees before confirming the transaction.',
    },
    '59yl1ait': {
      'pt': '4 - Pagamento de Taxas:',
      'en': '4 - Payment of Fees:',
    },
    'pfue8sog': {
      'pt':
          '. As taxas serão deduzidas automaticamente do valor total da venda antes da transferência dos fundos para o vendedor.',
      'en':
          '. Fees will be automatically deducted from the total sale amount before funds are transferred to the seller.',
    },
    '75tc7vh4': {
      'pt':
          '. O pagamento das taxas é uma parte integral do processo de venda de ingressos através do nosso aplicativo.',
      'en':
          '. Payment of fees is an integral part of the ticketing process through our app.',
    },
    'ivtyqd0u': {
      'pt': '5 - Revisão Periódica:',
      'en': '5 - Periodic Review:',
    },
    'gxjyuvj6': {
      'pt':
          'As taxas de serviço e de aumento de alcance podem ser revisadas periodicamente para garantir que estejam alinhadas com a qualidade e eficácia contínuas dos nossos serviços.',
      'en':
          'Service and reach enhancement fees may be reviewed periodically to ensure they are aligned with the ongoing quality and effectiveness of our services.',
    },
    'f5rpc5pb': {
      'pt':
          'Ao utilizar o App Ticket Exchange para vender ingressos, os vendedores concordam automaticamente com os termos e condições desta política de taxas de serviço. Agradecemos por escolher nossa plataforma e estamos ',
      'en':
          'By using the Ticket Exchange App to sell tickets, sellers automatically agree to the terms and conditions of this service fee policy. Thank you for choosing our platform and we look forward to',
    },
    '4wmjv8ax': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // politPROCESSOVERIFICADO
  {
    'xhwqkxdo': {
      'pt': 'Verificado',
      'en': 'Verified',
    },
    '80ybap1y': {
      'pt': 'Selo Verificado',
      'en': 'Verified Seal',
    },
    'loj4sopd': {
      'pt': 'Anual',
      'en': 'Annual',
    },
    '3ezzexoy': {
      'pt': 'Comprar',
      'en': 'Buy',
    },
    'j8oyj2oq': {
      'pt': 'Processo de verificação de perfil do Ticket Exchange',
      'en': 'Ticket Exchange Profile Verification Process',
    },
    'i7rkx2wg': {
      'pt': '#vantagens',
      'en': '#advantages',
    },
    'iypm4ahi': {
      'pt': '#segurança',
      'en': '#security',
    },
    'fmlydwcr': {
      'pt':
          'Com o status de perfil verificado, você ganha mais credibilidade ao comprar e vender ingressos em nossa plataforma, além de aumentar sua visibilidade para outros usuários, facilitando assim as transações. \n\nO processo para a verificação de perfil e a obtenção do selo é bem simples, feito em 5 etapas:',
      'en':
          'With verified profile status, you gain more credibility when buying and selling tickets on our platform, in addition to increasing your visibility to other users, thus facilitating transactions.\n\nThe process for verifying your profile and obtaining the seal is very simple, done in 5 steps:',
    },
    '9ykcs3xi': {
      'pt': '1  - Entrada no Processo:',
      'en': '1 - Entry into the Process:',
    },
    'vbd3du6s': {
      'pt':
          'Comece com a entrada no processo de verificação, onde você confirma sua identidade e realiza o pagamento do selo.',
      'en':
          'Start by entering the verification process, where you confirm your identity and pay for the stamp.',
    },
    '7s8nctlp': {
      'pt': '2 -  Verificação de Identidade:',
      'en': '2 - Identity Verification:',
    },
    'xigf1i22': {
      'pt':
          'Em seguida, nossa equipe realiza a verificação da sua identidade para garantir conformidade com a lei. O processo de verificação pode levar até 7 dias úteis.',
      'en':
          'Our team then verifies your identity to ensure compliance with the law. The verification process can take up to 7 business days.',
    },
    '6tbkgk1d': {
      'pt': '3 - Obtenção do Selo:',
      'en': '3 - Obtaining the Seal:',
    },
    '4d6emvfa': {
      'pt':
          'Após o sucesso das duas etapas anteriores, você receberá seu selo, que será exibido ao lado do seu nome de usuário.',
      'en':
          'After the previous two steps are successful, you will receive your badge, which will be displayed next to your username.',
    },
    'wdllupsw': {
      'pt': '4 - Diretrizes da Ticket',
      'en': '4 - Ticket Guidelines',
    },
    'e0cvxg4c': {
      'pt':
          'Se denunciado por violar nossas diretrizes, o usuário pode perder o selo. É crucial manter conduta ética e seguir as regras da plataforma.',
      'en':
          'If reported for violating our guidelines, the user may lose their badge. It is crucial to maintain ethical conduct and follow the platform rules.',
    },
    '7s8v3j5u': {
      'pt': '5- Etapa Final - Pagamento:',
      'en': '5- Final Step - Payment:',
    },
    'h6efg5cy': {
      'pt':
          'No primeiro ano, o valor do Selo de Verificação do Ticket Exchange será de R\$ 12,90/ano em caráter promocional. \nObs: A partir do segundo ano será cobrado uma mensalidade no valor de R\$ 4,90/mês.',
      'en':
          'In the first year, the Ticket Exchange Verification Seal will cost R\$12.90/year on a promotional basis.\nNote: From the second year onwards, a monthly fee of R\$4.90/month will be charged.',
    },
    'hap7zk80': {
      'pt': 'Iniciar Processo de Verificação',
      'en': 'Start Verification Process',
    },
    '3r01oiic': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // CriarLOGIN
  {
    'ftt5v02g': {
      'pt': 'Login',
      'en': 'Login',
    },
    'inxtqiuf': {
      'pt':
          'Na Ticket Exchange, você compra, vende e gerencia seus ingressos com segurança!',
      'en':
          'At Ticket Exchange, you can buy, sell and manage your tickets safely!',
    },
    'mi4zase1': {
      'pt': 'Continue com Apple',
      'en': 'Continue with Apple',
    },
    'd5zn57ps': {
      'pt': 'OU',
      'en': 'OR',
    },
    '43sh8go0': {
      'pt': 'Email',
      'en': 'E-mail',
    },
    'h06jhc6x': {
      'pt': 'Senha',
      'en': 'Password',
    },
    'iuh7wehu': {
      'pt': 'Continue',
      'en': 'Continue',
    },
    '19x10286': {
      'pt': 'Já tem uma conta? ',
      'en': 'Already have an account?',
    },
    'wtqaghha': {
      'pt': 'Crie Agora',
      'en': 'Create Now',
    },
    'aeace976': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // politicasCopy
  {
    'ps8to3b0': {
      'pt': 'Políticas ',
      'en': 'Policies',
    },
    's4gb9aiq': {
      'pt': 'Sobre Nós',
      'en': 'About Us',
    },
    'q073854n': {
      'pt': 'Termos de Uso',
      'en': 'Terms of Use',
    },
    'ni27ghfx': {
      'pt': 'Taxa de Serviço',
      'en': 'Service Fee',
    },
    '0n9yjznp': {
      'pt': 'Política de Privacidade',
      'en': 'Privacy Policy',
    },
    'n21jq5qy': {
      'pt': 'Política de Devolução',
      'en': 'Return policy',
    },
    '723z0ay8': {
      'pt': 'Processo de Compra/Envio',
      'en': 'Purchasing/Shipping Process',
    },
    'ah0t4qir': {
      'pt': 'Processo de Verificação',
      'en': 'Verification Process',
    },
    'guyej9q6': {
      'pt': 'FAQ',
      'en': 'FAQ',
    },
    '5bgmm991': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // Criarconta1
  {
    'b9h1hlc4': {
      'pt': 'Criar conta',
      'en': 'Create account',
    },
    '3os0ahr9': {
      'pt': 'Adcione seu email e senha para se verificar ao Ticket Exchange.',
      'en':
          'Add your email and password to verify yourself on Ticket Exchange.',
    },
    'ge0cb85m': {
      'pt': 'Digite seu Email',
      'en': 'Enter your Email',
    },
    'iflndywd': {
      'pt': 'exemplo@gmail.com',
      'en': 'example@gmail.com',
    },
    'v7ep2lnn': {
      'pt': 'Senha',
      'en': 'Password',
    },
    'cgybxhss': {
      'pt': 'Coloque uma senha',
      'en': 'Set a password',
    },
    'jkaq372h': {
      'pt': 'Confirmar senha',
      'en': 'Confirm password',
    },
    'ggjz1gqo': {
      'pt': 'Confirme sua senha',
      'en': 'Confirm your password',
    },
    '2ofh47rk': {
      'pt': 'Próximo',
      'en': 'Next',
    },
    'l71u3dtj': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'sxu5y6cu': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '0vknci1v': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    '390rtz3x': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'xp5tj5fd': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'bkw6hlpm': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'u8iwd7bf': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // Criarconta3
  {
    'fq2g7cvg': {
      'pt': 'Dados Pessoais',
      'en': 'Personal Data',
    },
    '7bxdfag7': {
      'pt': 'Adcione suas infomacoes para se verificar ao Ticket Exchange.',
      'en': 'Add your information to verify yourself on Ticket Exchange.',
    },
    '7082lmqq': {
      'pt': 'Nome Completo',
      'en': 'Full Name',
    },
    '5sresmbk': {
      'pt': 'Nome Completo',
      'en': 'Full Name',
    },
    '2pipq2mu': {
      'pt': 'CPF',
      'en': 'CPF',
    },
    'xx4rbxrp': {
      'pt': '000000000-00',
      'en': '000000000-00',
    },
    'm3qg71xv': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'xkih9ng8': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '0z7oyfxi': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    '2cq4mixi': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'i18sp2ip': {
      'pt': 'Próximo',
      'en': 'Next',
    },
    'ym5hisbm': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // wallet
  {
    'kdr5do8t': {
      'pt': 'Saldo Atual',
      'en': 'Current Balance',
    },
    '9zla2g7g': {
      'pt': 'R\$ 2.847,50',
      'en': 'R\$ 2,847.50',
    },
    '8vi33x4a': {
      'pt': 'R\$',
      'en': 'R\$',
    },
    'prjxqcjq': {
      'pt': 'Ações Rápidas',
      'en': 'Quick Actions',
    },
    '71r3w5v5': {
      'pt': 'Adicionar\nSaldo',
      'en': 'Add\nBalance',
    },
    '5qxwc103': {
      'pt': 'Retirar\nSaldo',
      'en': 'Withdraw\nBalance',
    },
    'co17heey': {
      'pt': 'Ver\nExtrato',
      'en': 'View\nExtract',
    },
    '6h7yd141': {
      'pt': 'Métodos de Pagamento',
      'en': 'Payment Methods',
    },
    'mttersuz': {
      'pt': 'Pix',
      'en': 'Pix',
    },
    'vks5ihjc': {
      'pt': '**** 3456',
      'en': '**** 3456',
    },
    '3azt0upk': {
      'pt': 'Adcionar novo cartao',
      'en': 'Add new card',
    },
    'roaakupt': {
      'pt': 'Segurança Garantida',
      'en': 'Guaranteed Security',
    },
    'p06p6lin': {
      'pt':
          'Todas as transações são criptografadas e protegidas por camadas de segurança. Para mais informações, consulte nossa Política de Pagamentos.',
      'en':
          'All transactions are encrypted and protected by layers of security. For more information, please see our Payments Policy.',
    },
    'ndujuonu': {
      'pt': 'Carteira',
      'en': 'Portfolio',
    },
    'rq5go0u1': {
      'pt': 'Por favor verifique sua identidade para acessar a wallet.',
      'en': 'Please verify your identity to access the wallet.',
    },
  },
  // informacoesdeVENDA_COMPRADOR
  {
    'gti1008z': {
      'pt': 'Compra Confirmada com Sucesso!',
      'en': 'Purchase Confirmed Successfully!',
    },
    'vl7w9ku4': {
      'pt': 'Detalhes da compra',
      'en': 'Purchase Details',
    },
    'empy88fm': {
      'pt': 'Evento:',
      'en': 'Event:',
    },
    'p5a7tvid': {
      'pt': 'Plataforma Oficial:',
      'en': 'Official Platform:',
    },
    '8122g4v4': {
      'pt': 'Data do Evento:',
      'en': 'Event Date:',
    },
    'z7gr6hud': {
      'pt': 'Valor da compra:',
      'en': 'Purchase value:',
    },
    'yjat3ngj': {
      'pt': 'Data da compra:',
      'en': 'Purchase Date:',
    },
    'f4zvwdt5': {
      'pt': '⏳',
      'en': '⏳',
    },
    'cotf22y6': {
      'pt': 'Status de Entrega',
      'en': 'Delivery Status',
    },
    'yfyff9n9': {
      'pt': ' Seu ingresso está sendo processado.',
      'en': 'Your ticket is being processed.',
    },
    '4iucxl3g': {
      'pt':
          'O vendedor tem até 30 minutos para enviá-lo. Após a verificação, ele será liberado na sua conta.',
      'en':
          'The seller has up to 30 minutes to send it. After verification, it will be released into your account.',
    },
    '4f7y1sr6': {
      'pt':
          'Em breve, você receberá seu ingresso diretamente na plataforma oficial. \n\nFique atento às notificações do WhatsApp ficar por dentro de quando seu ingresso estiver disponível.',
      'en':
          'You will soon receive your ticket directly on the official platform.\n\nKeep an eye on WhatsApp notifications to find out when your ticket is available.',
    },
    'uqyjswf3': {
      'pt': 'Avisos Importantes:',
      'en': 'Important Notices:',
    },
    'au1r7zmn': {
      'pt':
          '1 - Seu ingresso será enviado em até 24 horas.\n2 - Caso não receba seu ingresso, 100% do valor pago é reembolsado.\n3 - Após o vendedor enviar o ingresso para nossa equipe, ele passará por uma verificação antes de ser enviado para você.\n4 - Quando o vendedor enviar o ingresso para nossa equipe, você receberá uma notificação de envio e comprovante, caso queira é possível deixar uma avaliação para o vendedor.\n5 - Certifique-se que você possui conta na plataforma oficial de venda e que esteja com o mesmo e-mail cadastrado no aplicativo.\nCaso tenha qualquer dúvida entre em contato com o suporte.\n',
      'en':
          '1 - Your ticket will be sent within 24 hours.\n2 - If you do not receive your ticket, 100% of the amount paid will be refunded.\n3 - After the seller sends the ticket to our team, it will undergo a verification before being sent to you.\n4 - When the seller sends the ticket to our team, you will receive a shipping notification and proof of receipt. If you wish, you can leave a review for the seller.\n5 - Make sure you have an account on the official sales platform and that you have the same email registered in the app.\nIf you have any questions, contact support.',
    },
    'xjqzkayn': {
      'pt': 'Voltar para home',
      'en': 'Back to home',
    },
    '2ip2o9vk': {
      'pt': ' Suporte',
      'en': 'Support',
    },
    'achv87lz': {
      'pt': 'Informações da Compra',
      'en': 'Purchase Information',
    },
  },
  // aumentaralcance1
  {
    'f5j83k9b': {
      'pt': 'Selecione um ingresso para aumentar o alcance',
      'en': 'Select a ticket to increase reach',
    },
    'o0govqhp': {
      'pt':
          'Escolha um dos seus ingressos disponíveis abaixo para aplicar a ferramenta de aumento de alcance. Ela garante mais visibilidade, mais visualizações e maiores chances de venda.',
      'en':
          'Choose one of your available tickets below to apply the reach boost tool. It guarantees more visibility, more views and a higher chance of selling.',
    },
    'zrmo1b9r': {
      'pt': 'Aumentar Alcance',
      'en': 'Increase Reach',
    },
  },
  // chatSuporte
  {
    'd9kf5bj6': {
      'pt': 'Ticket Exchange',
      'en': 'Ticket Exchange',
    },
    'odfvl98n': {
      'pt': 'Online',
      'en': 'Online',
    },
    'bv6mm206': {
      'pt': 'Today',
      'en': 'Today',
    },
    '43zhlwl5': {
      'pt':
          'Hi, I need help. I’m trying to book a ticket for a seminar, but I’m not sure if my payment went through.',
      'en':
          'Hi, I need help. I\'m trying to book a ticket for a seminar, but I\'m not sure if my payment went through.',
    },
    'ytyn6bsv': {
      'pt': '16:00',
      'en': '16:00',
    },
    '9j5ulrcn': {
      'pt':
          'Hello! Thank you for reaching out. Let me check that for you. Could you please share the seminar name and the email address you used for the booking?',
      'en':
          'Hello! Thank you for reaching out. Let me check that for you. Could you please share the seminar name and the email address you used for the booking?',
    },
    '2wpu2cjg': {
      'pt': '16:05',
      'en': '16:05',
    },
    '3ckybho6': {
      'pt':
          'Sure, the seminar is \"Digital Marketing 101,\" and my email is alexjohnson@gmail.com.',
      'en':
          'Sure, the seminar is \"Digital Marketing 101,\" and my email is alexjohnson@gmail.com.',
    },
    '2eiyrulc': {
      'pt': '16:06',
      'en': '16:06',
    },
    '48fb8i74': {
      'pt':
          'Thank you, Alex! I see that your payment is still pending. It might take a few minutes to process. Could you confirm if the payment amount has been deducted from your bank account?',
      'en':
          'Thank you, Alex! I see that your payment is still pending. It might take a few minutes to process. Could you confirm if the payment amount has been deducted from your bank account?',
    },
    'ynj0q5rb': {
      'pt': '16:06',
      'en': '16:06',
    },
    'j3cnvdj3': {
      'pt': 'Yes, it was deducted.',
      'en': 'Yes, it was deducted.',
    },
    'hbyzaqms': {
      'pt': '16:08',
      'en': '16:08',
    },
    'p564emu2': {
      'pt':
          'Got it. In this case, the payment might be stuck in processing. Don’t worry; I’ll escalate this to our payment team. You’ll receive a confirmation within the next 24 hours.',
      'en':
          'Got it. In this case, the payment might be stuck in processing. Don\'t worry; I’ll escalate this to our payment team. You’ll receive a confirmation within the next 24 hours.',
    },
    '7vtlk674': {
      'pt': '16:10',
      'en': '16:10',
    },
    'iiujag4u': {
      'pt': 'Okay, thanks! Do I need to do anything else?',
      'en': 'Okay, thanks! Do I need to do anything else?',
    },
    'giqaod3u': {
      'pt': '16:15',
      'en': '16:15',
    },
    'lkalbt4x': {
      'pt':
          'No, you’re all set for now. We’ll handle it and keep you updated. If you don’t hear from us within 24 hours, feel free to message us again.',
      'en':
          'No, you\'re all set for now. We’ll handle it and keep you updated. If you don\'t hear from us within 24 hours, feel free to message us again.',
    },
    '6ngevrh8': {
      'pt': '16:17',
      'en': '16:17',
    },
    '9grmneo0': {
      'pt': 'Thanks for the help!',
      'en': 'Thanks for the help!',
    },
    '14yrgrjr': {
      'pt': '16:20',
      'en': '16:20',
    },
    '8b652be6': {
      'pt': 'You’re welcome! Have a great day and enjoy the seminar!',
      'en': 'You\'re welcome! Have a great day and enjoy the seminar!',
    },
    'b51ionqv': {
      'pt': '16:22',
      'en': '16:22',
    },
    'in5ue1xb': {
      'pt': 'Type message ',
      'en': 'Type message',
    },
    'qr5byyub': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // editardadosbancarios
  {
    '7xecuj5w': {
      'pt': 'Dados Bancários',
      'en': 'Bank Details',
    },
    'w0d2sjt1': {
      'pt': 'Adicione seus dados bancários',
      'en': 'Add your bank details',
    },
    'iqrp0wbs': {
      'pt':
          'Mantenha suas informações de pagamento sempre atualizadas para garantir o recebimento das suas vendas de forma rápida e segura.',
      'en':
          'Always keep your payment information up to date to ensure that you receive your sales quickly and securely.',
    },
    'ctnz9xej': {
      'pt':
          'Todos os pagamentos da Ticket Exchange são feitos diretamente para a conta bancária que você cadastrar abaixo.',
      'en':
          'All Ticket Exchange payments are made directly to the bank account you register below.',
    },
    'cim7bvai': {
      'pt': 'Nome do Titular da Conta *',
      'en': 'Account Holder Name *',
    },
    'w6u8clfb': {
      'pt': 'Digite o nome completo do titular',
      'en': 'Enter the full name of the holder',
    },
    'qro7u7hs': {
      'pt': 'CPF do Titular *',
      'en': 'Holder\'s CPF *',
    },
    'bw5ofy2f': {
      'pt': '000.000.000-00',
      'en': '000.000.000-00',
    },
    'rwvvy7do': {
      'pt': 'Tipo de Chave PIX',
      'en': 'PIX Key Type',
    },
    'xe97lh2x': {
      'pt': 'Email',
      'en': 'E-mail',
    },
    'a2sguwea': {
      'pt': 'Celular',
      'en': 'Cell phone',
    },
    'wskzzsg5': {
      'pt': 'CPF',
      'en': 'CPF',
    },
    'uof8oiiy': {
      'pt': 'Aleatória',
      'en': 'Random',
    },
    'c6n387wk': {
      'pt': 'Chave Pix (Opcional)',
      'en': 'Pix Key (Optional)',
    },
    'gdz3i5f7': {
      'pt': 'CPF, e-mail, telefone ou chave aleatória',
      'en': 'CPF, email, phone number or random key',
    },
    'jjh724o1': {
      'pt': 'CPF, e-mail, telefone ou chave aleatória',
      'en': 'CPF, email, phone number or random key',
    },
    '85j3qizl': {
      'pt': 'CPF, e-mail, telefone ou chave aleatória',
      'en': 'CPF, email, phone number or random key',
    },
    'p2f8oquh': {
      'pt': 'CPF, e-mail, telefone ou chave aleatória',
      'en': 'CPF, email, phone number or random key',
    },
    'itpohex5': {
      'pt': 'Banco *',
      'en': 'Bank *',
    },
    '5vzfi6fa': {
      'pt': 'Selecione seu banco',
      'en': 'Select your bank',
    },
    'tqwn4wlq': {
      'pt': 'Itaú',
      'en': 'Itau',
    },
    '23tawcws': {
      'pt': 'Bradesco',
      'en': 'Bradesco',
    },
    'cit2bs8f': {
      'pt': 'Banco do Brasil',
      'en': 'Bank of Brazil',
    },
    'lntwdjbi': {
      'pt': 'Caixa Econômica',
      'en': 'Savings Bank',
    },
    'tl82w6ry': {
      'pt': 'Nubank',
      'en': 'Nubank',
    },
    'mq6eg9qs': {
      'pt': 'Inter',
      'en': 'Inter',
    },
    'cpt6hdxz': {
      'pt': 'Santander',
      'en': 'Santander',
    },
    'd8o62qp0': {
      'pt': 'Outros',
      'en': 'Others',
    },
    'o9pog30i': {
      'pt': 'Agência *',
      'en': 'Agency *',
    },
    '4zl721vp': {
      'pt': '0000',
      'en': '0000',
    },
    'dmxd1j8s': {
      'pt': 'Número da Conta *',
      'en': 'Account Number *',
    },
    '6o60wztl': {
      'pt': '00000-0',
      'en': '00000-0',
    },
    '52b13i32': {
      'pt': 'Tipo de Conta *',
      'en': 'Account Type *',
    },
    '0zwjkdbq': {
      'pt': 'Selecione o tipo de conta',
      'en': 'Select account type',
    },
    'l8990wyv': {
      'pt': 'Conta Corrente',
      'en': 'Current Account',
    },
    '8wxk3hdc': {
      'pt': 'Conta Poupança',
      'en': 'Savings Account',
    },
    'yipmclbu': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    '5rhvx5v9': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'oeu0uc9p': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'hyu4blmg': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '9zihivmj': {
      'pt': 'CPF, e-mail, telefone ou chave aleatória is required',
      'en': 'CPF, email, phone or random key is required',
    },
    'fwsx6s6j': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'yzp63zb4': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'uuoc7h7a': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '4bftbwfi': {
      'pt': 'Campo Obrigatório',
      'en': 'Mandatory Field',
    },
    'l353578o': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'kyjaby1h': {
      'pt': 'Aviso de Segurança',
      'en': 'Security Notice',
    },
    'a7gpfaz6': {
      'pt':
          'As informações bancárias são utilizadas exclusivamente para o repasse de pagamentos. Dados incorretos podem causar atrasos ou falha no recebimento. A taxa de serviço da plataforma é 9% ',
      'en':
          'Bank details are used exclusively for payment transfers. Incorrect details may cause delays or failure to receive payment. The platform service fee is 9%.',
    },
    '3m8qtla5': {
      'pt': 'Adicionar Dados bancários',
      'en': 'Add Bank Details',
    },
    'uatx2y7i': {
      'pt': 'Precisa de ajuda? Fale com o Suporte',
      'en': 'Need help? Contact Support',
    },
  },
  // informacoesdeENVIO_COMPROVANTE
  {
    '9ipbpcmp': {
      'pt': 'Ingresso enviado com Sucesso!',
      'en': 'Ticket sent successfully!',
    },
    '57dlnrrm': {
      'pt': 'Detalhes do envio ',
      'en': 'Shipping Details',
    },
    'sa4o15fl': {
      'pt': '✅',
      'en': '✅',
    },
    'rrymz36h': {
      'pt': 'Status de Entrega',
      'en': 'Delivery Status',
    },
    'txaqkivg': {
      'pt': ' Seu ingresso foi enviado.',
      'en': 'Your ticket has been submitted.',
    },
    'e3sk60j9': {
      'pt':
          'Nossa equipe está verificando o ingresso e em até 30 minutos estará em suas mãos.',
      'en':
          'Our team is checking the ticket and it will be in your hands within 30 minutes.',
    },
    '6osok5xe': {
      'pt': 'Aviso Importante:',
      'en': 'Important Notice:',
    },
    'n2o49t7a': {
      'pt': 'É extremamente importante que confirme o recebimento do ingresso!',
      'en': 'It is extremely important that you confirm receipt of the ticket!',
    },
    'fuf1laj7': {
      'pt': 'Ingresso recebido',
      'en': 'Ticket received',
    },
    'fq70jowy': {
      'pt': 'Confirmar o Recebimento ',
      'en': 'Confirm Receipt',
    },
    '63py1ksg': {
      'pt': 'Você já confirmou o recebimento deste ingresso',
      'en': 'You have already confirmed receipt of this ticket',
    },
    '939qn36b': {
      'pt': ' Suporte',
      'en': 'Support',
    },
    'g25t42qf': {
      'pt': 'Avalie o Vendedor',
      'en': 'Rate the Seller',
    },
    'xo4z2l9c': {
      'pt':
          'Gostariamos que você avaliasse sua experência de compra com o vendedor, clique no botão abaixo e faça sua avaliação!',
      'en':
          'We would like you to rate your shopping experience with the seller, click the button below and leave your review!',
    },
    'n5o3md0p': {
      'pt': 'Avaliar Vendedor',
      'en': 'Rate Seller',
    },
    'hsc8u5c9': {
      'pt': 'Confirmar Recebimento',
      'en': 'Confirm Receipt',
    },
  },
  // EscreverDenuncia
  {
    'br30cms3': {
      'pt': 'Denunciar Usuário',
      'en': 'Report User',
    },
    'mcpqtrre': {
      'pt': 'Detalhes da Denúncia',
      'en': 'Complaint Details',
    },
    'tle7ixou': {
      'pt': 'Nome do usuário',
      'en': 'Username',
    },
    'l894meh0': {
      'pt':
          'A denúncia deve ser feita apenas em casos de real necessidade, como comportamento fraudulento, conduta inadequada ou violações das nossas políticas da plataforma. Seu nome e contato não são compartilhados em hipótese alguma.',
      'en':
          'Reporting should only be done in cases of real need, such as fraudulent behavior, inappropriate conduct or violations of our platform policies. Your name and contact details will not be shared under any circumstances.',
    },
    'qp3waomw': {
      'pt': 'Descreva o que aconteceu:',
      'en': 'Describe what happened:',
    },
    'm8z0tde7': {
      'pt':
          'Por favor, forneça o máximo de detalhes possível para facilitar a investigação do acontecimento.',
      'en':
          'Please provide as much detail as possible to facilitate the investigation of the incident.',
    },
    'qmhv3x39': {
      'pt': 'Motivo da denúncia:',
      'en': 'Reason for reporting:',
    },
    'geosvb30': {
      'pt': 'Digite aqui...',
      'en': 'Type here...',
    },
    'a5tq0uc6': {
      'pt': 'Descreva os detalhes:',
      'en': 'Describe the details:',
    },
    'htvmq2op': {
      'pt': 'Digite os detalhes aqui...',
      'en': 'Enter details here...',
    },
    'hqqugffr': {
      'pt': 'Enviar',
      'en': 'To send',
    },
    'ybu0bdcc': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // Sairdaconta
  {
    'ngpa5ka8': {
      'pt': 'Sair',
      'en': 'To go out',
    },
    'o0n778je': {
      'pt': 'Tem certeza de que deseja sair da sua conta?',
      'en': 'Are you sure you want to log out of your account?',
    },
    '4s4bn6um': {
      'pt': 'Cancelar',
      'en': 'Cancel',
    },
    '8lt9yqdr': {
      'pt': 'Sair',
      'en': 'To go out',
    },
  },
  // WidgetNavbar
  {
    '8bld0ed2': {
      'pt': 'Home',
      'en': 'Home',
    },
    '5pgrasju': {
      'pt': 'Explorar',
      'en': 'Explore',
    },
    'y7zhxr5e': {
      'pt': 'Adcionar',
      'en': 'Add',
    },
    'jmu8tm1o': {
      'pt': 'Favoritos',
      'en': 'Favorites',
    },
    'sznvrxd5': {
      'pt': 'Perfil',
      'en': 'Profile',
    },
  },
  // Senhaalterada
  {
    'nyz3ojbl': {
      'pt': 'Senha alterada!',
      'en': 'Password changed!',
    },
    'c8mgocvx': {
      'pt': 'Sua senha foi salva. Clique em Entrar para continuar.',
      'en': 'Your password has been saved. Click Log In to continue.',
    },
    'hryydxyr': {
      'pt': 'Continue',
      'en': 'Continue',
    },
  },
  // Carregandocriarconta
  {
    'oor30bc6': {
      'pt': 'Carregando ...',
      'en': 'Loading ...',
    },
  },
  // ChatOptions
  {
    'ooitb8os': {
      'pt': 'Clear Chat',
      'en': 'Clear Chat',
    },
    'ma9wtkwd': {
      'pt': 'Export Chat',
      'en': 'Export Chat',
    },
    'q0l0zdsb': {
      'pt': 'Delete Chat',
      'en': 'Delete Chat',
    },
    'yt2ot0qf': {
      'pt': 'Cancel',
      'en': 'Cancel',
    },
  },
  // WidgetNotificationsOptions
  {
    '3btimarq': {
      'pt': 'Ler tudo',
      'en': 'Read all',
    },
    'wr7nnpgf': {
      'pt': 'Ajustes de Notificações',
      'en': 'Notification Settings',
    },
    't7rwphu4': {
      'pt': 'Excluir notificações',
      'en': 'Delete notifications',
    },
    'kp9y1u1u': {
      'pt': 'Cancelar',
      'en': 'Cancel',
    },
  },
  // MyTicketsOptions
  {
    'g6i9991d': {
      'pt': 'Sort by',
      'en': 'Sort by',
    },
    '4icjw334': {
      'pt': 'Help Center',
      'en': 'Help Center',
    },
    'czxkz27y': {
      'pt': 'Cancel',
      'en': 'Cancel',
    },
  },
  // RescheduleSuccess
  {
    'pqpxqngi': {
      'pt': 'Rescheduling Success!',
      'en': 'Rescheduling Success!',
    },
    '17zq85nh': {
      'pt': 'You have successfully rescheduled your appointment',
      'en': 'You have successfully rescheduled your appointment',
    },
    'vuxyriyy': {
      'pt': 'Close',
      'en': 'Close',
    },
  },
  // CancelTicket
  {
    '6zshtfhe': {
      'pt': 'Cancel tickets',
      'en': 'Cancel tickets',
    },
    'xvuswx6o': {
      'pt':
          'Are you sure you want to cancel your Ешслуе? Only 70% of the funds will be returned to your card.',
      'en':
          'Are you sure you want to cancel your Ешслуе? Only 70% of the funds will be returned to your card.',
    },
    'bpy306vn': {
      'pt': 'Cancel',
      'en': 'Cancel',
    },
    'nf0wpxw3': {
      'pt': 'Confirm',
      'en': 'Confirm',
    },
  },
  // CancelTicketSuccess
  {
    '8kxfe8yr': {
      'pt': 'You have successfully cancelled your Ticket.',
      'en': 'You have successfully canceled your Ticket.',
    },
    '23jhxjro': {
      'pt': 'OK',
      'en': 'OK',
    },
  },
  // Ingressoadcionado
  {
    '95zi84cr': {
      'pt': 'Ingresso Adcionado!',
      'en': 'Ticket Added!',
    },
    '0d8tbj1v': {
      'pt':
          'Ingresso adicionado com sucesso! Agora adicione seus dados bancários',
      'en': 'Ticket added successfully! Now add your bank details',
    },
    'q68z1pv2': {
      'pt': 'Fechar',
      'en': 'To close',
    },
  },
  // Opcoesperfil
  {
    'b9h5e3cr': {
      'pt': 'Compartilhar meu perfil',
      'en': 'Share my profile',
    },
    'yysfxsq0': {
      'pt': 'Editar perfil',
      'en': 'Edit profile',
    },
    'coqp7sc3': {
      'pt': 'Encerrar sessão',
      'en': 'End session',
    },
    'vg5px231': {
      'pt': 'Cancelar',
      'en': 'Cancel',
    },
  },
  // adcionarimagem
  {
    'xxv01fd3': {
      'pt': 'Tirar uma foto',
      'en': 'Take a picture',
    },
    'h6sfrhy8': {
      'pt': 'Fazer upload da galeria',
      'en': 'Upload Gallery',
    },
    'p83cbycn': {
      'pt': 'Cancelar',
      'en': 'Cancel',
    },
  },
  // InviteFriendsShare
  {
    '48vn23r0': {
      'pt': 'Invite your friends',
      'en': 'Invite your friends',
    },
    '9a94soif': {
      'pt': 'Copy and share the link with your friends',
      'en': 'Copy and share the link with your friends',
    },
    'nqngsvst': {
      'pt': 'https://share.com/vt8t2',
      'en': 'https://share.com/vt8t2',
    },
    'j97if1ca': {
      'pt': 'Cancel',
      'en': 'Cancel',
    },
  },
  // Permitirlocalizacao
  {
    'ld9a96iy': {
      'pt': 'Permitir que a TICKET use sua localização?',
      'en': 'Allow TICKET to use your location?',
    },
    '6mf3pnui': {
      'pt': 'Usaremos sua localização para mostrar eventos na sua cidade.',
      'en': 'We\'ll use your location to show you events in your city.',
    },
    'et3xfent': {
      'pt': 'Cancelar',
      'en': 'Cancel',
    },
    'iprqnfab': {
      'pt': 'Permitir',
      'en': 'Allow',
    },
  },
  // Avaliarapp
  {
    'pkxgpthz': {
      'pt': 'Gosta da TICKET?',
      'en': 'Do you like TICKET?',
    },
    'ej2m815w': {
      'pt': 'Por favor, recomende-nos para outras pessoas na Apple Store.',
      'en': 'Please recommend us to others in the Apple Store.',
    },
    'lg95isup': {
      'pt': 'Avalie-nos',
      'en': 'Rate us',
    },
    'nkl2jlwq': {
      'pt': 'Não, obrigado(a)',
      'en': 'No, thanks',
    },
  },
  // FilterSort
  {
    '8yvbxi72': {
      'pt': 'Ordenar',
      'en': 'Sort',
    },
    '58lwd7xv': {
      'pt': 'Aplicar',
      'en': 'Apply',
    },
  },
  // FilterByDate
  {
    'arevezbr': {
      'pt': 'Data',
      'en': 'Date',
    },
    'ozn7ta8d': {
      'pt': 'Aplicar',
      'en': 'Apply',
    },
  },
  // FilterByCategory
  {
    'lo4xcptg': {
      'pt': 'Categorias',
      'en': 'Categories',
    },
  },
  // WidgetEmptyFavorites
  {
    '24snprje': {
      'pt': 'Sua lista de favoritos está vazia.',
      'en': 'Your favorites list is empty.',
    },
    'obwd4rxz': {
      'pt':
          'Navegue pelos eventos e salve seus favoritos aqui para acessar rapidamente quando quiser!',
      'en':
          'Browse events and save your favorites here for quick access whenever you want!',
    },
  },
  // WidgetFavoritesOptions
  {
    'bzxwjzxp': {
      'pt': 'Ordenar por',
      'en': 'Sort by',
    },
    'au4giteq': {
      'pt': 'Remover todos',
      'en': 'Remove all',
    },
    '7rmdmavr': {
      'pt': 'Cancelar',
      'en': 'Cancel',
    },
  },
  // WidgetAllowRemoving
  {
    '7fapve3l': {
      'pt': 'Limpar a lista de eventos favoritos',
      'en': 'Clear the list of favorite events',
    },
    'o9l59r8r': {
      'pt': 'Tem certeza de que deseja limpar a lista de eventos favoritos?',
      'en': 'Are you sure you want to clear the list of favorite events?',
    },
    'l41adbwt': {
      'pt': 'Cancelar',
      'en': 'Cancel',
    },
    'u6x82gev': {
      'pt': 'Limpar',
      'en': 'To clean',
    },
  },
  // WidgetEventsOptions
  {
    'hh5g2yo8': {
      'pt': 'Tenho interesse',
      'en': 'I am interested',
    },
    'vt8gjbfo': {
      'pt': 'Compartilhar',
      'en': 'To share',
    },
    'j18h6zls': {
      'pt': 'Denunciar evento',
      'en': 'Report event',
    },
    'g9poz078': {
      'pt': 'Cancelar',
      'en': 'Cancel',
    },
  },
  // WidgetCheckoutOptions
  {
    '6h98qpmw': {
      'pt': 'Salvar para depois',
      'en': 'Save for later',
    },
    'rs3asj8s': {
      'pt': 'Compartilhar',
      'en': 'To share',
    },
    'gicwrhxy': {
      'pt': 'Denunciar evento',
      'en': 'Report event',
    },
    'v19vwsl4': {
      'pt': 'Cancelar',
      'en': 'Cancel',
    },
  },
  // WidgetAllowClearTickets
  {
    'alp1x7fm': {
      'pt': 'Delete all tickets',
      'en': 'Delete all tickets',
    },
    'w13v6b7k': {
      'pt': 'Are you sure you want to delete all tickets from checkout?',
      'en': 'Are you sure you want to delete all tickets from checkout?',
    },
    '3r082tfj': {
      'pt': 'Cancel',
      'en': 'Cancel',
    },
    'isd0cu1v': {
      'pt': 'Confirm',
      'en': 'Confirm',
    },
  },
  // TicketCard2
  {
    'mwbky20c': {
      'pt': '  incl. \$1.99 Fee',
      'en': 'incl. \$1.99 Fee',
    },
    'vjs10lgp': {
      'pt': 'Gate',
      'en': 'Gate',
    },
    'r5mnxnj3': {
      'pt': '16',
      'en': '16',
    },
    'pggdsajw': {
      'pt': 'Row',
      'en': 'Row',
    },
    'i9mhohev': {
      'pt': 'Seat',
      'en': 'Seat',
    },
    'p7almjmj': {
      'pt': '25',
      'en': '25',
    },
  },
  // Chekoutcarregando
  {
    'k6dmxplx': {
      'pt': 'Processando ...',
      'en': 'Processing...',
    },
  },
  // WidgetCheckoutOptions2
  {
    's8a98i1m': {
      'pt': 'Compartilhar',
      'en': 'To share',
    },
    'jiujqiif': {
      'pt': 'Apagar',
      'en': 'To switch off',
    },
    'k408jaii': {
      'pt': 'Cancelar',
      'en': 'Cancel',
    },
  },
  // WidgetAllowClearTicket
  {
    'vp9gix3v': {
      'pt': 'Excluir o ingresso',
      'en': 'Delete ticket',
    },
    'amk94amc': {
      'pt': 'Tem certeza de que deseja excluir este ingresso do favoritos?',
      'en': 'Are you sure you want to delete this ticket from favorites?',
    },
    'fdi9wtsz': {
      'pt': 'Cancelar',
      'en': 'Cancel',
    },
    'r5amtl2x': {
      'pt': 'Confirmar',
      'en': 'Confirm',
    },
  },
  // MyTicketsSort
  {
    '4zb4vdyh': {
      'pt': 'Sort',
      'en': 'Sort',
    },
    'lqxitc8v': {
      'pt': 'Menor Valor',
      'en': '',
    },
    'nyvecc9k': {
      'pt': 'Maior Valor',
      'en': '',
    },
    'nnl91oa7': {
      'pt': 'Data',
      'en': '',
    },
    '0n2n37ij': {
      'pt': 'Apply',
      'en': 'Apply',
    },
  },
  // Lanceenviado
  {
    '0c9x3axq': {
      'pt': 'Seu lance foi enviado',
      'en': 'Your bid has been submitted',
    },
    'wivmiol8': {
      'pt':
          'Pronto! Seu lance foi enviado.\nTe avisaremos assim que o vendedor aceitar!',
      'en':
          'Done! Your bid has been submitted.\nWe\'ll let you know as soon as the seller accepts!',
    },
    'ka2mzcvz': {
      'pt': 'Fechar',
      'en': 'To close',
    },
  },
  // FilterByDate2
  {
    'vqhzbodw': {
      'pt': 'Date',
      'en': 'Date',
    },
    'i2z1b5we': {
      'pt': 'Apply',
      'en': 'Apply',
    },
  },
  // HomeFilterAll
  {
    'bmq48l8h': {
      'pt': 'Data',
      'en': 'Date',
    },
    'eylgt2qp': {
      'pt': 'Categoria',
      'en': 'Category',
    },
    'f1m47u4j': {
      'pt': 'Show results',
      'en': 'Show results',
    },
  },
  // Ativeasnot
  {
    '9hkzzccl': {
      'pt': 'Fique atualizado com a TICKET',
      'en': 'Stay up to date with TICKET',
    },
    'qsyi5frz': {
      'pt':
          'Ative as notificações para receber atualizações instantâneas sobre seus eventos favoritos, ingressos e ofertas exclusivas.',
      'en':
          'Turn on notifications to receive instant updates on your favorite events, tickets, and exclusive offers.',
    },
    '47fixloq': {
      'pt': 'Cancelar',
      'en': 'Cancel',
    },
    'g9imo1l8': {
      'pt': 'Aceitar',
      'en': 'To accept',
    },
  },
  // Home1
  {
    '8wnf9si7': {
      'pt':
          'Quer explorar eventos? Toque aqui para escolher sua localização preferida!',
      'en':
          'Want to explore events? Tap here to choose your preferred location!',
    },
  },
  // Home2
  {
    '33uomy2p': {
      'pt':
          'Aqui você encontra diferentes categorias de eventos. Toque em uma categoria pra explorar mais!',
      'en':
          'Here you will find different categories of events. Tap on a category to explore more!',
    },
  },
  // ClearChat
  {
    'jjscmdhj': {
      'pt': 'Clear History',
      'en': 'Clear History',
    },
    'm85m1h0g': {
      'pt': 'Are you sure you want to clear the history of chat?',
      'en': 'Are you sure you want to clear the chat history?',
    },
    'zx06kqnb': {
      'pt': 'Cancel',
      'en': 'Cancel',
    },
    'jnivecx8': {
      'pt': 'Confirm',
      'en': 'Confirm',
    },
  },
  // Excluirconta
  {
    'f1n3ftge': {
      'pt': 'Excluir Usuário',
      'en': 'Delete User',
    },
    'r165rscq': {
      'pt': 'Tem certeza de que deseja excluir este usuário?',
      'en': 'Are you sure you want to delete this user?',
    },
    'bgiyldqs': {
      'pt': 'Cancel',
      'en': 'Cancel',
    },
    'kp2xgm8c': {
      'pt': 'Confirm',
      'en': 'Confirm',
    },
  },
  // Ticket1
  {
    'yafpsds6': {
      'pt': 'Você pode alterar ou cancelar sua compra.',
      'en': 'You can change or cancel your purchase.',
    },
  },
  // dados_alterados
  {
    '0e3g44n1': {
      'pt': 'Dados alterados com sucesso!',
      'en': 'Data changed successfully!',
    },
  },
  // semingressosdisponiveis
  {
    'gu9qz45c': {
      'pt': 'Nenhum ingresso disponível.',
      'en': 'No tickets available.',
    },
    '7nyrqlij': {
      'pt': 'Adicione um ingresso agora mesmo!',
      'en': 'Add a ticket now!',
    },
  },
  // semlancefeito
  {
    'f3mtslq5': {
      'pt': 'Nenhum ingresso disponível.',
      'en': 'No tickets available.',
    },
    'jobii88w': {
      'pt': 'Adicione um ingresso agora mesmo!',
      'en': 'Add a ticket now!',
    },
  },
  // dadosbancarios_sucesso
  {
    'af83rpc1': {
      'pt': 'Dados bancários e ingresso adicionados com sucesso!',
      'en': 'Bank details and ticket added successfully!',
    },
  },
  // denunciaeusuario
  {
    'yf8ab0j3': {
      'pt': 'Denunciar Usuário',
      'en': 'Report User',
    },
    '8eg59vs2': {
      'pt':
          'Se você identificou algo irregular, ofensivo ou suspeito, envie uma denúncia para que nossa equipe possa avaliar e tomar as devidas providências.',
      'en':
          'If you have identified something irregular, offensive or suspicious, send a report so that our team can evaluate and take the appropriate action.',
    },
    'ms2kq04p': {
      'pt': 'Tipo de Denúncia *',
      'en': 'Type of Complaint *',
    },
    'rzb9u7p5': {
      'pt': 'Selecione o tipo de denúncia',
      'en': 'Select the type of complaint',
    },
    'zkyy1783': {
      'pt': 'Descrição da Ocorrência *',
      'en': 'Description of the Occurrence *',
    },
    'dz47b81u': {
      'pt':
          'Explique com detalhes o que aconteceu. Quanto mais informações, melhor para nossa análise.',
      'en':
          'Please explain in detail what happened. The more information, the better for our analysis.',
    },
    'c4ftq2bl': {
      'pt': 'Adicionar Provas ou Capturas (opcional)',
      'en': 'Add Evidence or Captures (optional)',
    },
    'q837l5u3': {
      'pt': 'Toque para adicionar imagens',
      'en': 'Tap to add images',
    },
    '7vja8mlp': {
      'pt': 'Até 3 arquivos',
      'en': 'Up to 3 files',
    },
    'qcd06jc5': {
      'pt': 'Aviso de Privacidade',
      'en': 'Privacy Notice',
    },
    'ftirb4rf': {
      'pt':
          'Todas as denúncias são confidenciais. Sua identidade não será revelada ao denunciado. A Ticket Exchange analisa cada caso com seriedade, seguindo nossas diretrizes de comunidade.',
      'en':
          'All reports are confidential. Your identity will not be revealed to the person being reported. Ticket Exchange takes each case seriously, following our community guidelines.',
    },
    'uuze651t': {
      'pt': 'Enviar Denúncia',
      'en': 'Submit a Report',
    },
  },
  // enviaravaliacao
  {
    '5s3nhftl': {
      'pt': 'Avalie sua experiência com este usuário',
      'en': 'Rate your experience with this user',
    },
    'n5b7macl': {
      'pt':
          'Sua avaliação ajuda a manter a comunidade da Ticket Exchange mais segura, justa e confiável para todos. Seja sincero, respeitoso e objetivo.',
      'en':
          'Your feedback helps keep the Ticket Exchange community safe, fair, and trustworthy for everyone. Please be honest, respectful, and objective.',
    },
    'jj43z3wh': {
      'pt': 'João Silva',
      'en': 'John Silva',
    },
    '899ehf1a': {
      'pt': 'Você comprou 1 ingresso de João Silva',
      'en': 'You bought 1 ticket from João Silva',
    },
    'k0qa75sf': {
      'pt': '15 de dezembro, 2025',
      'en': 'December 15, 2025',
    },
    'hqggn5gi': {
      'pt': 'Como foi sua experiência?',
      'en': 'How was your experience?',
    },
    'pg096r1d': {
      'pt': 'Bom',
      'en': 'Good',
    },
    'ifnxevs1': {
      'pt': 'Comentário (opcional)',
      'en': 'Comment (optional)',
    },
    'oov0uqjr': {
      'pt': 'Escreva um comentário sobre a sua experiência...',
      'en': 'Write a review about your experience...',
    },
    '0mcd6nxa': {
      'pt': 'Máximo 300 caracteres',
      'en': 'Maximum 300 characters',
    },
    'y32orxal': {
      'pt': 'Enviar Avaliação',
      'en': 'Submit Review',
    },
    '57ndkww5': {
      'pt':
          'Comentários ofensivos, falsos ou que violem nossas diretrizes serão removidos. Avaliações são públicas e influenciam a reputação do usuário na plataforma.',
      'en':
          'Comments that are offensive, false, or violate our guidelines will be removed. Reviews are public and influence a user\'s reputation on the platform.',
    },
  },
  // naotemavaliacao
  {
    'xuk48amh': {
      'pt': 'Atenção!',
      'en': 'Attention!',
    },
    'pu1aestq': {
      'pt': 'O usuário não possui avaliação escrita',
      'en': 'User does not have a written review',
    },
    'j7qbbc3p': {
      'pt': 'Fechar',
      'en': 'To close',
    },
  },
  // indisponivel
  {
    'qm82xemm': {
      'pt': 'Ingresso Indisponível',
      'en': 'Ticket Unavailable',
    },
    'ldbswqps': {
      'pt': 'Esse ingresso já foi vendido',
      'en': 'This ticket has already been sold',
    },
    'v0yejrx5': {
      'pt': 'Fechar',
      'en': 'To close',
    },
  },
  // adcionarsaldowallet
  {
    'ub2dsvxo': {
      'pt': 'Adicionar Saldo',
      'en': 'Add Balance',
    },
    '5aup625a': {
      'pt':
          'Informe o valor que deseja adicionar à sua carteira. Você poderá usá-lo para compras rápidas e seguras dentro da Ticket Exchange.',
      'en':
          'Enter the amount you wish to add to your wallet. You can use it for quick and secure purchases within Ticket Exchange.',
    },
    '8aszceei': {
      'pt': 'Valor a adicionar',
      'en': 'Value to add',
    },
    'hwqaqunw': {
      'pt': 'Ex: R\$ 100,00',
      'en': 'Ex: R\$ 100.00',
    },
    '1u7v4663': {
      'pt': 'Mínimo R\$ 10,00 - Máximo R\$ 10.000,00',
      'en': 'Minimum R\$ 10.00 - Maximum R\$ 10,000.00',
    },
    '1b4thi1h': {
      'pt': 'Método de Pagamento',
      'en': 'Payment Method',
    },
    'moxu9hdh': {
      'pt': 'PIX',
      'en': 'PIX',
    },
    'zac2sgua': {
      'pt': '(instantâneo)',
      'en': '(snapshot)',
    },
    '3wdv9hnr': {
      'pt': 'Cartão de Crédito',
      'en': 'Credit card',
    },
    'wpuxj69x': {
      'pt': '(Em até 24 horas)',
      'en': '(Within 24 hours)',
    },
    'wrthsuvd': {
      'pt': 'Escolha sua forma de pagamento preferida. ',
      'en': 'Choose your preferred payment method.',
    },
    'itzy88n4': {
      'pt': 'Concluir Pagamento',
      'en': 'Complete Payment',
    },
    's4c7g7tv': {
      'pt':
          '🛡️ Todas as transações são protegidas por criptografia. Seu saldo é armazenado de forma segura na plataforma.',
      'en':
          '🛡️ All transactions are protected by encryption. Your balance is stored securely on the platform.',
    },
  },
  // retirarsaldowallet
  {
    '7i44x8ui': {
      'pt': 'Retirar Saldo',
      'en': 'Withdraw Balance',
    },
    '1vwb16bg': {
      'pt':
          'Informe o valor que deseja transferir da sua carteira para sua conta bancária via Pix. O processo é rápido e seguro.',
      'en':
          'Enter the amount you wish to transfer from your wallet to your bank account via Pix. The process is quick and secure.',
    },
    'wd96o2ui': {
      'pt': ' Valor a retirar',
      'en': 'Amount to withdraw',
    },
    'fxr5v6i6': {
      'pt': 'Ex: R\$ 150,00',
      'en': 'Ex: R\$ 150.00',
    },
    'pbk9acmq': {
      'pt': 'Chave Pix para recebimento',
      'en': 'Pix key for receiving',
    },
    'cuaicyvt': {
      'pt': 'Insira seu CPF, e-mail ou chave aleatória',
      'en': 'Enter your CPF, email or random key',
    },
    'atuuodii': {
      'pt': '📌 Informações Importantes',
      'en': '📌 Important Information',
    },
    'lold6qnf': {
      'pt': '• As transferências são processadas em até 2 horas.',
      'en': '• Transfers are processed within 2 hours.',
    },
    'cegk9pd7': {
      'pt':
          '• Certifique-se de que a chave Pix está correta antes de confirmar.',
      'en': '• Make sure the Pix key is correct before confirming.',
    },
    're0wn0tt': {
      'pt': 'Solicitar Retirada',
      'en': 'Request Withdrawal',
    },
    'h913jrno': {
      'pt': '🛡️ Segurança e Política',
      'en': '🛡️ Security and Politics',
    },
    '1p6c6n9t': {
      'pt': 'Retiradas são protegidas por criptografia.',
      'en': 'Withdrawals are protected by encryption.',
    },
    'uwkpi1t0': {
      'pt':
          'Em caso de erro na chave Pix, entre em contato com o suporte antes de 24h.',
      'en':
          'In case of an error with the Pix key, contact support within 24 hours.',
    },
  },
  // ingresso_favoritado
  {
    '6q1bu32v': {
      'pt': 'Ingresso favoritado com sucesso!',
      'en': '',
    },
  },
  // adcionarimagemIngresso
  {
    '3v1nvta7': {
      'pt': 'Tirar uma foto',
      'en': 'Take a picture',
    },
    'khd8yiha': {
      'pt': 'Fazer upload da galeria',
      'en': 'Upload Gallery',
    },
    'qfaql3ay': {
      'pt': 'Cancelar',
      'en': 'Cancel',
    },
  },
  // Miscellaneous
  {
    '2wibrmxi': {
      'pt': '',
      'en': '',
    },
    'nydsbp17': {
      'pt': '',
      'en': '',
    },
    'nckaehc3': {
      'pt': '',
      'en': '',
    },
    'gfwa06nk': {
      'pt':
          'Para tirar uma foto ou gravar um vídeo, nosso aplicativo utiliza a câmera para que você possa tirar fotos do ingresso ou do evento que pretende assistir. Embora não seja obrigatório, recomendamos essa funcionalidade para facilitar o processo de venda.',
      'en':
          'To take a photo or record a video, our app uses the camera so you can take photos of the ticket or the event you intend to attend. Although it is not mandatory, we recommend this functionality to facilitate the sales process.',
    },
    '6dwomzph': {
      'pt':
          'Deseja que a Ticket Exchange te envie notificações das novidades e ingressos',
      'en':
          'Do you want Ticket Exchange to send you notifications about news and tickets?',
    },
    '7233kpax': {
      'pt': '',
      'en': '',
    },
    'bztf2pf0': {
      'pt': '',
      'en': '',
    },
    'hyl7idy2': {
      'pt': '',
      'en': '',
    },
    'kg3rbgnq': {
      'pt': '',
      'en': '',
    },
    'fetieuym': {
      'pt': '',
      'en': '',
    },
    '179cwb40': {
      'pt': '',
      'en': '',
    },
    'cj1u537u': {
      'pt': '',
      'en': '',
    },
    'f0lente9': {
      'pt': '',
      'en': '',
    },
    '78dz0ddb': {
      'pt': '',
      'en': '',
    },
    'xgx5ucpa': {
      'pt': '',
      'en': '',
    },
    '2280h9q0': {
      'pt': '',
      'en': '',
    },
    'htz9lktt': {
      'pt': '',
      'en': '',
    },
    'dea57nca': {
      'pt': '',
      'en': '',
    },
    'qlgxuqzs': {
      'pt': '',
      'en': '',
    },
    '8mt3gvac': {
      'pt': '',
      'en': '',
    },
    'vb79n4zg': {
      'pt': '',
      'en': '',
    },
    '2whpzxn8': {
      'pt': '',
      'en': '',
    },
    'fntsthe4': {
      'pt': '',
      'en': '',
    },
    'fg5khp8f': {
      'pt': '',
      'en': '',
    },
    'qixmdm6j': {
      'pt': '',
      'en': '',
    },
    '2myo1x79': {
      'pt': '',
      'en': '',
    },
    'yrdg8vt0': {
      'pt': '',
      'en': '',
    },
    'ks4qnw9p': {
      'pt': '',
      'en': '',
    },
    'e59wbz2w': {
      'pt': '',
      'en': '',
    },
    '4g20ktsz': {
      'pt': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
