import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';
export '/backend/firebase_dynamic_links/firebase_dynamic_links.dart'
    show generateCurrentPageLink;

const kTransitionInfoKey = '__transition_info__';

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
      errorBuilder: (context, state) => _RouteErrorBuilder(
        state: state,
        child: appStateNotifier.loggedIn ? const NavBarPage() : const LoginWidget(),
      ),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const LoginWidget(),
        ),
        FFRoute(
          name: 'happy',
          path: '/happy',
          builder: (context, params) => const HappyWidget(),
        ),
        FFRoute(
          name: 'journal',
          path: '/journal',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'journal')
              : const JournalWidget(),
        ),
        FFRoute(
          name: 'content1',
          path: '/content1',
          asyncParams: {
            'pagerefer': getDoc(['technique'], TechniqueRecord.fromSnapshot),
          },
          builder: (context, params) => Content1Widget(
            pagerefer: params.getParam('pagerefer', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'home',
          path: '/home',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'home')
              : NavBarPage(
                  initialPage: 'home',
                  page: HomeWidget(
                    image: params.getParam('image', ParamType.String),
                  ),
                ),
        ),
        FFRoute(
          name: 'myday',
          path: '/myday',
          builder: (context, params) => const MydayWidget(),
        ),
        FFRoute(
          name: 'profile',
          path: '/profile',
          builder: (context, params) => const ProfileWidget(),
        ),
        FFRoute(
          name: 'loadingscreen',
          path: '/loadingscreen',
          builder: (context, params) => const LoadingscreenWidget(),
        ),
        FFRoute(
          name: 'track',
          path: '/track',
          builder: (context, params) => const TrackWidget(),
        ),
        FFRoute(
          name: 'CreateAccount',
          path: '/createAccount',
          builder: (context, params) => const CreateAccountWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'ForgotPass',
          path: '/forgotPass',
          builder: (context, params) => const ForgotPassWidget(),
        ),
        FFRoute(
          name: 'gratefultodayupdate',
          path: '/gratefultodayupdate',
          builder: (context, params) => GratefultodayupdateWidget(
            userRef: params.getParam(
                'userRef', ParamType.DocumentReference, false, ['journal']),
          ),
        ),
        FFRoute(
          name: 'SuccessPage',
          path: '/successPage',
          builder: (context, params) => const SuccessPageWidget(),
        ),
        FFRoute(
          name: 'therapy1',
          path: '/therapy1',
          builder: (context, params) => const Therapy1Widget(),
        ),
        FFRoute(
          name: 'therapyquiz1',
          path: '/therapyquiz1',
          builder: (context, params) => const Therapyquiz1Widget(),
        ),
        FFRoute(
          name: 'therapy2',
          path: '/therapy2',
          builder: (context, params) => const Therapy2Widget(),
        ),
        FFRoute(
          name: 'therapy3',
          path: '/therapy3',
          builder: (context, params) => const Therapy3Widget(),
        ),
        FFRoute(
          name: 'therapyquiz2',
          path: '/therapyquiz2',
          builder: (context, params) => const Therapyquiz2Widget(),
        ),
        FFRoute(
          name: 'therapyquiz3',
          path: '/therapyquiz3',
          builder: (context, params) => const Therapyquiz3Widget(),
        ),
        FFRoute(
          name: 'communities',
          path: '/communities',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'communities')
              : CommunitiesWidget(
                  postId: params.getParam('postId', ParamType.String),
                ),
        ),
        FFRoute(
          name: 'camv2',
          path: '/camv2',
          builder: (context, params) =>
              params.isEmpty ? const NavBarPage(initialPage: 'camv2') : const Camv2Widget(),
        ),
        FFRoute(
          name: 'loadingindicator',
          path: '/loadingindicator',
          builder: (context, params) => const LoadingindicatorWidget(),
        ),
        FFRoute(
          name: 'sad',
          path: '/sad',
          builder: (context, params) => const SadWidget(),
        ),
        FFRoute(
          name: 'angry',
          path: '/angry',
          builder: (context, params) => const AngryWidget(),
        ),
        FFRoute(
          name: 'disgust',
          path: '/disgust',
          builder: (context, params) => const DisgustWidget(),
        ),
        FFRoute(
          name: 'fear',
          path: '/fear',
          builder: (context, params) => const FearWidget(),
        ),
        FFRoute(
          name: 'neutral',
          path: '/neutral',
          builder: (context, params) => const NeutralWidget(),
        ),
        FFRoute(
          name: 'greatfultodaycreate',
          path: '/greatfultodaycreate',
          builder: (context, params) => const GreatfultodaycreateWidget(),
        ),
        FFRoute(
          name: 'howwasyourdaycreate',
          path: '/howwasyourdaycreate',
          builder: (context, params) => const HowwasyourdaycreateWidget(),
        ),
        FFRoute(
          name: 'Editprofile',
          path: '/editprofile',
          builder: (context, params) => const EditprofileWidget(),
        ),
        FFRoute(
          name: 'loadingindicatorhome',
          path: '/loadingindicatorhome',
          builder: (context, params) => const LoadingindicatorhomeWidget(),
        ),
        FFRoute(
          name: 'therapyquiz4',
          path: '/therapyquiz4',
          builder: (context, params) => const Therapyquiz4Widget(),
        ),
        FFRoute(
          name: 'therapyquiz5',
          path: '/therapyquiz5',
          builder: (context, params) => const Therapyquiz5Widget(),
        ),
        FFRoute(
          name: 'Verification',
          path: '/verification',
          builder: (context, params) => const VerificationWidget(),
        ),
        FFRoute(
          name: 'admin_home',
          path: '/adminHome',
          builder: (context, params) => const AdminHomeWidget(),
        ),
        FFRoute(
          name: 'mhp_home',
          path: '/mhpHome',
          builder: (context, params) => const MhpHomeWidget(),
        ),
        FFRoute(
          name: 'mentalhealthsupp',
          path: '/mentalhealthsupp',
          builder: (context, params) => const MentalhealthsuppWidget(),
        ),
        FFRoute(
          name: 'therapyClient',
          path: '/therapyClient',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'therapyClient')
              : const NavBarPage(
                  initialPage: 'therapyClient',
                  page: TherapyClientWidget(),
                ),
        ),
        FFRoute(
          name: 'therapyVid',
          path: '/therapyVid',
          asyncParams: {
            'pageref': getDoc(['therapy'], TherapyRecord.fromSnapshot),
          },
          builder: (context, params) => TherapyVidWidget(
            pageref: params.getParam('pageref', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'content2',
          path: '/content2',
          asyncParams: {
            'pagerefer': getDoc(['technique'], TechniqueRecord.fromSnapshot),
          },
          builder: (context, params) => Content2Widget(
            pagerefer: params.getParam('pagerefer', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'content3',
          path: '/content3',
          asyncParams: {
            'pagerefer': getDoc(['technique'], TechniqueRecord.fromSnapshot),
          },
          builder: (context, params) => Content3Widget(
            pagerefer: params.getParam('pagerefer', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'breath',
          path: '/breath',
          builder: (context, params) => const BreathWidget(),
        ),
        FFRoute(
          name: 'meditation',
          path: '/meditation',
          builder: (context, params) => const MeditationWidget(),
        ),
        FFRoute(
          name: 'chat_2_Details',
          path: '/chat2Details',
          asyncParams: {
            'chatRef': getDoc(['chats'], ChatsRecord.fromSnapshot),
          },
          builder: (context, params) => Chat2DetailsWidget(
            chatRef: params.getParam('chatRef', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'chat_2_main',
          path: '/chat2Main',
          builder: (context, params) => const Chat2MainWidget(),
        ),
        FFRoute(
          name: 'chat_2_InviteUsers',
          path: '/chat2InviteUsers',
          asyncParams: {
            'chatRef': getDoc(['chats'], ChatsRecord.fromSnapshot),
          },
          builder: (context, params) => Chat2InviteUsersWidget(
            chatRef: params.getParam('chatRef', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'image_Details',
          path: '/imageDetails',
          asyncParams: {
            'chatMessage':
                getDoc(['chat_messages'], ChatMessagesRecord.fromSnapshot),
          },
          builder: (context, params) => ImageDetailsWidget(
            chatMessage: params.getParam('chatMessage', ParamType.Document),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
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
    ..addAll(queryParameters)
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
      (state.extraMap.length == 1 &&
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
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
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
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
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
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
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
                    'assets/images/modules_(5).png',
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

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class _RouteErrorBuilder extends StatefulWidget {
  const _RouteErrorBuilder({
    required this.state,
    required this.child,
  });

  final GoRouterState state;
  final Widget child;

  @override
  State<_RouteErrorBuilder> createState() => _RouteErrorBuilderState();
}

class _RouteErrorBuilderState extends State<_RouteErrorBuilder> {
  @override
  void initState() {
    super.initState();
    // Handle erroneous links from Firebase Dynamic Links.
    if (widget.state.location.startsWith('/link') &&
        widget.state.location.contains('request_ip_version')) {
      SchedulerBinding.instance.addPostFrameCallback((_) => context.go('/'));
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
