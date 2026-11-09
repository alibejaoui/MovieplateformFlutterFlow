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

  static List<String> languages() => ['en', 'ar', 'fr'];

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
    String? enText = '',
    String? arText = '',
    String? frText = '',
  }) =>
      [enText, arText, frText][languageIndex] ?? '';

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
  // Onboarding
  {
    '0ty04ui8': {
      'en': 'Never miss\nnew movies & series',
      'ar': 'لا تفوتوا\nالأفلام والمسلسلات الجديدة\n',
      'fr':
          'Ne manquez jamais les nouveaux films et séries\n\nNouveaux films et séries',
    },
    'l0yus76u': {
      'en': 'Be the first one to watch the latest movies and series on Movia',
      'ar': 'كن أول من يشاهد أحدث الأفلام والمسلسلات على موفيا',
      'fr':
          'Soyez parmi les premiers à regarder les derniers films et séries sur Movia',
    },
    'ujhhzo8a': {
      'en': 'Get Started',
      'ar': 'ابدأ الآن',
      'fr': 'Commencer',
    },
    'fwbn7oqf': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // SignIn
  {
    'i5u57u7j': {
      'en': 'Sign In',
      'ar': 'تسجيل الدخول',
      'fr': 'Se connecter',
    },
    'wy5wz3og': {
      'en':
          'Enter your user information below or continue with one of your social accounts',
      'ar':
          'أدخل معلومات المستخدم الخاصة بك أدناه أو تابع باستخدام أحد حساباتك على مواقع التواصل الاجتماعي',
      'fr':
          'Saisissez vos informations d\'utilisateur ci-dessous ou continuez avec l\'un de vos comptes de réseaux sociaux',
    },
    'k3gdhjow': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
      'fr': 'E-mail',
    },
    'ev7idgwz': {
      'en': 'Password',
      'ar': 'كلمة المرور',
      'fr': 'Mot de passe',
    },
    'pux0j1ez': {
      'en': 'Forgot password?',
      'ar': 'هل نسيت كلمة السر؟',
      'fr': 'Mot de passe oublié ?',
    },
    'rnf5butw': {
      'en': 'Sign in',
      'ar': 'تسجيل الدخول',
      'fr': 'Se connecter',
    },
    'w2sz3trv': {
      'en': 'Don’t have an account?',
      'ar': 'ليس لديك حساب؟',
      'fr': 'Vous n\'avez pas de compte ?',
    },
    'peaj1vqa': {
      'en': 'Sign up',
      'ar': 'اشتراك',
      'fr': 'S\'inscrire',
    },
    'mgkka7ao': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // SignUp
  {
    'ekuve64a': {
      'en': 'Sign Up',
      'ar': 'اشتراك',
      'fr': 'S\'inscrire',
    },
    'lm7jozi0': {
      'en':
          'Enter your user information below or continue with one of your social accounts',
      'ar':
          'أدخل معلومات المستخدم الخاصة بك أدناه أو تابع باستخدام أحد حساباتك على مواقع التواصل الاجتماعي',
      'fr':
          'Saisissez vos informations d\'utilisateur ci-dessous ou continuez avec l\'un de vos comptes de réseaux sociaux',
    },
    'kzu67yx2': {
      'en': 'Name',
      'ar': 'اسم',
      'fr': 'Nom',
    },
    'ronxglk7': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
      'fr': 'E-mail',
    },
    'm345uzh0': {
      'en': 'Password',
      'ar': 'كلمة المرور',
      'fr': 'Mot de passe',
    },
    'pw01vg5n': {
      'en': 'Confirm password',
      'ar': 'تأكيد كلمة المرور',
      'fr': 'Confirmez le mot de passe',
    },
    'iptf9ds1': {
      'en': 'By sing up, you accept Privacy Policy & Terms of Service',
      'ar': 'بالتسجيل، فإنك توافق على سياسة الخصوصية وشروط الخدمة',
      'fr':
          'En vous inscrivant, vous acceptez la Politique de confidentialité et les Conditions d\'utilisation',
    },
    'kki8lb35': {
      'en': 'Sign up',
      'ar': 'اشتراك',
      'fr': 'S\'inscrire',
    },
    'xkhrpfau': {
      'en': 'Already have an account?',
      'ar': 'هل لديك حساب بالفعل؟',
      'fr': 'Vous avez déjà un compte ?',
    },
    'yhv401g8': {
      'en': 'Sign in',
      'ar': 'تسجيل الدخول',
      'fr': 'Se connecter',
    },
    'x2g8dzy0': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // Home
  {
    'hbhq62jj': {
      'en': 'Action • Drama • Adventure',
      'ar': 'أكشن • دراما • مغامرة',
      'fr': 'Action • Drame • Aventure',
    },
    'b83t7029': {
      'en': 'Now Playing',
      'ar': 'يعرض الآن',
      'fr': 'Lecture en cours',
    },
    'c1cuk1m4': {
      'en': 'See all >',
      'ar': 'عرض الكل >',
      'fr': 'Voir tout >',
    },
    '4dczbde5': {
      'en': 'On TV',
      'ar': 'على التلفزيون',
      'fr': 'À la télévision',
    },
    'cr1l2rze': {
      'en': 'See all >',
      'ar': 'عرض الكل >',
      'fr': 'Voir tout >',
    },
    '9cbn74od': {
      'en': 'Popular Movies',
      'ar': 'أفلام شهيرة',
      'fr': 'Films populaires',
    },
    'ekp5weia': {
      'en': 'See all >',
      'ar': 'عرض الكل >',
      'fr': 'Voir tout >',
    },
    'sqddp3cb': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // MovieDetails
  {
    'e8so1d1p': {
      'en': 'Story',
      'ar': 'قصة',
      'fr': 'Histoire',
    },
    'v8yfoowg': {
      'en': 'Cast',
      'ar': 'يقذف',
      'fr': 'Casting',
    },
    'v42tpplb': {
      'en': 'Similar',
      'ar': 'مشابه',
      'fr': 'Similaire',
    },
    'kh0v95pr': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // TvShowsDetails
  {
    'aff7a8ke': {
      'en': 'Story',
      'ar': 'قصة',
      'fr': 'Histoire',
    },
    '61v7znkf': {
      'en': 'Seasons',
      'ar': 'المواسم',
      'fr': 'Saisons',
    },
    'xfcwcvdz': {
      'en': 'Similar',
      'ar': 'مشابه',
      'fr': 'Similaire',
    },
    'skcvp9ew': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // Episodes
  {
    '79ygfm90': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // Search
  {
    'pulpv8nj': {
      'en': 'Search for movies, series...',
      'ar': 'ابحث عن الأفلام والمسلسلات...',
      'fr': 'Rechercher des films, des séries...',
    },
    '2nrwpvzo': {
      'en': 'Search in Movia',
      'ar': 'ابحث في موفيا',
      'fr': 'Recherche dans Films',
    },
    'a0bm27g9': {
      'en':
          'By typing in search box, Movia search in movies, series and actors then show you the best results. ',
      'ar':
          'من خلال الكتابة في مربع البحث، يقوم موقع موفيا بالبحث عن الأفلام والمسلسلات والممثلين ثم يعرض لك أفضل النتائج.',
      'fr':
          'En saisissant votre requête dans le champ de recherche, Movia vous proposera une recherche de films, de séries et d\'acteurs qui vous affichera les meilleurs résultats.',
    },
    'g5phe9de': {
      'en': 'Search',
      'ar': 'يبحث',
      'fr': 'Recherche',
    },
  },
  // Activity
  {
    'r2hcbxmb': {
      'en': 'Activity',
      'ar': 'نشاط',
      'fr': 'Activité',
    },
    'h8alzuxs': {
      'en': 'Activity',
      'ar': 'نشاط',
      'fr': 'Activité',
    },
  },
  // Profile
  {
    'ihpoatxs': {
      'en': 'Your Activities',
      'ar': 'أنشطتك',
      'fr': 'Vos activités',
    },
    'zyqghoj6': {
      'en': 'Theme',
      'ar': 'سمة',
      'fr': 'Thème',
    },
    'raf370p4': {
      'en': 'Swith to Dark Theme',
      'ar': 'التبديل إلى الوضع الداكن',
      'fr': 'Passer au thème sombre',
    },
    'vde9qmi0': {
      'en': 'Swith to Light Theme',
      'ar': 'التبديل إلى الوضع الفاتح',
      'fr': 'Thème Switch to Light',
    },
    'wyhwcx9k': {
      'en': 'Account',
      'ar': 'حساب',
      'fr': 'Compte',
    },
    'ip8ckas8': {
      'en': 'Logout',
      'ar': 'تسجيل الخروج',
      'fr': 'Déconnexion',
    },
    '5njy8a5x': {
      'en': 'Profile',
      'ar': 'حساب تعريفي',
      'fr': 'Profil',
    },
    'h238unhf': {
      'en': 'Profile',
      'ar': 'حساب تعريفي',
      'fr': 'Profil',
    },
  },
  // Bookark
  {
    'ptf6wqwv': {
      'en': 'Your Bookmark list',
      'ar': 'قائمة الإشارات المرجعية الخاصة بك',
      'fr': 'Votre liste de favoris',
    },
    'rn1xqw0a': {
      'en': 'Bookmark List',
      'ar': 'قائمة الإشارات المرجعية',
      'fr': 'Liste de favoris',
    },
    '3h0sb7te': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // History
  {
    '6s417nwx': {
      'en': 'History',
      'ar': 'تاريخ',
      'fr': 'Histoire',
    },
    'vgyv7siw': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // Settings
  {
    'acx2k8k2': {
      'en': 'General',
      'ar': 'عام',
      'fr': 'Général',
    },
    '7ncw77mn': {
      'en': 'Change language',
      'ar': 'تغيير اللغة',
      'fr': 'Changer de langue',
    },
    '6wnjttg1': {
      'en': 'En/Ar',
      'ar': 'الإنجليزية/العربية',
      'fr': 'En/Ar',
    },
    'g5myo4dz': {
      'en': 'Others',
      'ar': 'آحرون',
      'fr': 'Autres',
    },
    'v4qurhti': {
      'en': 'Settings',
      'ar': 'إعدادات',
      'fr': 'Paramètres',
    },
    '5koohx3r': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // SeeAll
  {
    'zbzdrelt': {
      'en': 'See All',
      'ar': 'عرض الكل',
      'fr': 'Voir tout',
    },
    '1w7tpx99': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // SeeAllTV
  {
    'ix79ltvn': {
      'en': 'See All',
      'ar': 'عرض الكل',
      'fr': 'Voir tout',
    },
    'ah3yxlkj': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // HelpPage
  {
    '15nzon9x': {
      'en': 'Help Center',
      'ar': '',
      'fr': '',
    },
    'q3ed2jmo': {
      'en': 'How can we help you today?',
      'ar': '',
      'fr': '',
    },
    '7szvxbwv': {
      'en': 'Frequently Asked Questions',
      'ar': '',
      'fr': '',
    },
    'gced7ome': {
      'en': 'Still need help?',
      'ar': '',
      'fr': '',
    },
    'bfi1fhw8': {
      'en':
          'Our support team is available 24/7 to assist you with any movie-related inquiries.',
      'ar': '',
      'fr': '',
    },
    '6p3ouc72': {
      'en': 'My Movie Template v2.4.0',
      'ar': '',
      'fr': '',
    },
    '899q59oa': {
      'en': 'Terms of Service · Privacy Policy',
      'ar': '',
      'fr': '',
    },
  },
  // AboutPage
  {
    '5g6h61yd': {
      'en': 'About',
      'ar': '',
      'fr': '',
    },
    'wy1ea1py': {
      'en': 'My Movie Template',
      'ar': '',
      'fr': '',
    },
    'u52qdl6r': {
      'en': 'Version 1.0.0',
      'ar': '',
      'fr': '',
    },
    'nfikharm': {
      'en':
          'Enjoy high-quality streaming anywhere. Our app lets you watch movies and series, discover new trending titles, and experience a premium cinematic journey right on your mobile device.',
      'ar': '',
      'fr': '',
    },
    '5bn7dibj': {
      'en': 'Features',
      'ar': '',
      'fr': '',
    },
    'hwja3g4w': {
      'en': 'Legal & Links',
      'ar': '',
      'fr': '',
    },
    'c6w8hjdw': {
      'en': 'Follow Us',
      'ar': '',
      'fr': '',
    },
    'dnsa371v': {
      'en': '© 2026 My Movie Template. All rights reserved.',
      'ar': '',
      'fr': '',
    },
  },
  // PrivacyPolicyPage
  {
    '0qnr41uz': {
      'en': 'Privacy & Policy',
      'ar': '',
      'fr': '',
    },
    '1df4ue02': {
      'en': 'Your privacy matters',
      'ar': '',
      'fr': '',
    },
    'hxr5c9fs': {
      'en': 'Last updated: October 2026',
      'ar': '',
      'fr': '',
    },
    'd9gfhh2a': {
      'en':
          'This Privacy Policy describes how My Movie Template collects, uses, and protects your information when you use our streaming services. We are committed to ensuring your data is handled securely.',
      'ar': '',
      'fr': '',
    },
    '6tv5iy3s': {
      'en': 'Have questions about your data?',
      'ar': '',
      'fr': '',
    },
    '4lmc5tbi': {
      'en': 'support@mymovietemplate.com',
      'ar': '',
      'fr': '',
    },
    'k9ibwam9': {
      'en': '© 2026 My Movie Template. All rights reserved.',
      'ar': '',
      'fr': '',
    },
  },
  // ChangePassword
  {
    'e5rmkpzk': {
      'en':
          'We will send a link to your email so you can choose a new password',
      'ar': '',
      'fr': '',
    },
    'zcg8bw72': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
      'fr': 'E-mail',
    },
    'n6tuo7tg': {
      'en': 'Send Reset Link ',
      'ar': '',
      'fr': '',
    },
    'ftea7t6e': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // Reviews
  {
    '5jca8387': {
      'en': '                      Reviews',
      'ar': '',
      'fr': '',
    },
    '99bgqsnq': {
      'en': '⭐⭐⭐',
      'ar': '',
      'fr': '',
    },
    'apa1jcv9': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // WriteReview
  {
    '66hgdmxc': {
      'en': 'Your Review',
      'ar': '',
      'fr': '',
    },
    '00dwbqs4': {
      'en': 'Share your thoughts about this movie….',
      'ar': '',
      'fr': '',
    },
    '2w3pko7c': {
      'en': 'Send',
      'ar': '',
      'fr': '',
    },
    'd24dgm5u': {
      'en': '           Write a  Review',
      'ar': '',
      'fr': '',
    },
    'yxoqve44': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // EpisodesBottomSheet
  {
    'cf8byvnh': {
      'en': 'Stranger Things / ',
      'ar': 'أشياء غريبة /',
      'fr': 'Stranger Things /',
    },
    '4pc394o7': {
      'en': 'Season 1',
      'ar': 'الموسم الأول',
      'fr': 'Saison 1',
    },
  },
  // SubscriptionCard
  {
    'l32uh352': {
      'en': 'Premium',
      'ar': 'غالي',
      'fr': 'Prime',
    },
    '7q7jq055': {
      'en': 'High quality',
      'ar': 'جودة عالية',
      'fr': 'Haute qualité',
    },
    'ba881wz5': {
      'en': 'Watch videos in 4K quality',
      'ar': 'شاهد الفيديوهات بجودة 4K',
      'fr': 'Regardez des vidéos en qualité 4K',
    },
    '1xh5m2xv': {
      'en': 'Watch offline',
      'ar': 'شاهد بدون اتصال بالإنترنت',
      'fr': 'Regarder hors ligne',
    },
    '94na4vju': {
      'en': 'Download videos and watch later',
      'ar': 'قم بتنزيل الفيديوهات وشاهدها لاحقاً',
      'fr': 'Téléchargez les vidéos et regardez-les plus tard.',
    },
    'im5yohay': {
      'en': 'Ad-free streaming',
      'ar': 'بث بدون إعلانات',
      'fr': 'Streaming sans publicité',
    },
    'n2i6uzze': {
      'en': 'Enjoy watching videos without ad-free',
      'ar': 'استمتع بمشاهدة الفيديوهات بدون إعلانات',
      'fr': 'Regardez des vidéos sans publicité',
    },
  },
  // loginBottomSheet
  {
    'y77txxq0': {
      'en': 'Start with',
      'ar': 'ابدأ بـ',
      'fr': 'Commencez par',
    },
    'ds64dmax': {
      'en': 'Member',
      'ar': 'عضو',
      'fr': 'Membre',
    },
    'od2s6451': {
      'en': 'You can sign up/sign in with your email address',
      'ar': 'يمكنك التسجيل/تسجيل الدخول باستخدام عنوان بريدك الإلكتروني',
      'fr':
          'Vous pouvez vous inscrire/vous connecter avec votre adresse e-mail',
    },
    'n4adc1u4': {
      'en': 'Guest',
      'ar': 'ضيف',
      'fr': 'Invité',
    },
    'm4w9nc2d': {
      'en': 'Use the app without authentication',
      'ar': 'استخدم التطبيق بدون مصادقة',
      'fr': 'Utilisez l\'application sans authentification',
    },
  },
  // Languagebottomsheet
  {
    'azrdp9on': {
      'en': 'Choose Language',
      'ar': 'اختر اللغة',
      'fr': 'Choisir la langue',
    },
    'yjytoba0': {
      'en': 'English',
      'ar': 'إنجليزي',
      'fr': 'Anglais',
    },
    'o174wk6k': {
      'en': 'العربية',
      'ar': 'العربية',
      'fr': 'L\'arabe',
    },
    'qyicor6c': {
      'en': 'Français',
      'ar': 'الفرنسية',
      'fr': 'Français',
    },
  },
  // Miscellaneous
  {
    'ahxwp8e3': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'h2gbxln1': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '1klcbt02': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'rr4wqu63': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'w31oznnv': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '10f9t7by': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'xatc8lrn': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'yl0tg9uj': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '4qtj087o': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'g374k9cy': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'sx0tlo0s': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'f9sxjn3k': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '7hio4kac': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'cw5fownt': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'fwgdve7f': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'tysdrxzk': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '2ei41xrd': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '33mjndsy': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'mi51616d': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'xg5n8c1i': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '907dxfdo': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'urmndd91': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'zgryw0qg': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'su9lvb2j': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '2cji1ybj': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'on4dwpo1': {
      'en': '',
      'ar': '',
      'fr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
