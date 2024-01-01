import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'auth/firebase_auth/firebase_user_provider.dart';
import 'auth/firebase_auth/auth_util.dart';

import 'backend/firebase/firebase_config.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
  await initFirebase();

  final appState = FFAppState(); // Initialize FFAppState
  await appState.initializePersistedState();

  runApp(ChangeNotifierProvider(
    create: (context) => appState,
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  ThemeMode _themeMode = ThemeMode.system;

  late Stream<BaseAuthUser> userStream;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  final authUserSub = authenticatedUserStream.listen((_) {});

  @override
  void initState() {
    super.initState();

    _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);
    userStream = mindscapeFirebaseUserStream()
      ..listen((user) => _appStateNotifier.update(user));
    jwtTokenStream.listen((_) {});
    Future.delayed(
      const Duration(milliseconds: 1000),
          () => _appStateNotifier.stopShowingSplashImage(),
    );
  }

  @override
  void dispose() {
    authUserSub.cancel();

    super.dispose();
  }

  void setLocale(String language) {
    setState(() => _locale = createLocale(language));
  }

  void setThemeMode(ThemeMode mode) => setState(() {
    _themeMode = mode;
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'mindscape',
      localizationsDelegates: const [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(
        brightness: Brightness.light,
        scrollbarTheme: const ScrollbarThemeData(),
      ),
      themeMode: _themeMode,
      routerConfig: _router,
    );
  }
}

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key, this.initialPage, this.page, required this.isAdmin});

  final String? initialPage;
  final Widget? page;
  final bool isAdmin;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'admin_home';
  late Widget? _currentPage;
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
    _setCurrentPageName();
    _currentPage = widget.isAdmin ? const AdminHomeWidget() : const HomeWidget();
    currentIndex = widget.isAdmin ? 0 : 1;
    // _currentPage = widget.page;
  }

  void _setCurrentPageName() {
    _currentPageName = widget.isAdmin ? 'admin_home' : 'home';
  }

  BottomNavigationBar _buildBottomNavigationBar(bool isAdmin, int currentIndex,
      Map<String, Widget> tabs) {
    List <BottomNavigationBarItem> bottomNavBarItems = [
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.home_outlined,
          size: 24.0,
        ),
        label: 'home',
        tooltip: '',
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.self_improvement,
          size: 24.0,
        ),
        label: 'therapy',
        tooltip: '',
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.circle_outlined,
        ),
        label: 'scan',
        tooltip: '',
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.favorite,
          size: 24.0,
        ),
        label: 'communities\n',
        tooltip: '',
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.book,
          size: 24.0,
        ),
        label: 'journal',
        tooltip: '',
      )
    ];

    if (isAdmin) {
      bottomNavBarItems = [
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            size: 24.0,
          ),
          label: 'admin',
          tooltip: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.home_rounded,
            size: 24.0,
          ),
          label: 'char',
          tooltip: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.home_work_rounded,
            size: 24.0,
          ),
          label: 'rawr',
          tooltip: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.home_rounded,
            size: 24.0,
          ),
          label: 'char',
          tooltip: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.home_work_rounded,
            size: 24.0,
          ),
          label: 'rawr',
          tooltip: '',
        )
      ];
    }

    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (i) {
        setState(() {
          _currentPage = null;
          _currentPageName = tabs.keys.toList()[i];
        });
      },
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: const Color(0x8A000000),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: bottomNavBarItems,
    );
  }

  @override
  Widget build(BuildContext context) {
    final tabsClient = {
      'home': const HomeWidget(),
      'therapyClient': const TherapyClientWidget(),
      'camv2': const Camv2Widget(),
      'communities': const CommunitiesWidget(),
      'journal': const JournalWidget(),
    };

    final tabsAdmin = {
      'admin_home': const AdminHomeWidget(),
      'admin_home': const AdminHomeWidget(),
      'admin_home': const AdminHomeWidget(),
      'admin_home': const AdminHomeWidget(),
      'admin_home': const AdminHomeWidget(),
    };

    final tabs = widget.isAdmin ? tabsAdmin : tabsClient;
    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);

    return Scaffold(
      body: _currentPage ?? tabs[_currentPageName],
      bottomNavigationBar: _buildBottomNavigationBar(
          widget.isAdmin, currentIndex, tabs),
    );
  }
}
