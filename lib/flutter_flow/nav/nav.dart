import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';

import '../../auth/firebase_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  Tune2protectFirebaseUser? initialUser;
  Tune2protectFirebaseUser? user;
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

  void update(Tune2protectFirebaseUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
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
      errorBuilder: (context, _) => appStateNotifier.loggedIn
          ? DashboardMainWidget()
          : LoginpagMainWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? DashboardMainWidget()
              : LoginpagMainWidget(),
          routes: [
            FFRoute(
              name: 'passwordchangeMainp',
              path: 'passwordchangeMainp',
              builder: (context, params) => PasswordchangeMainpWidget(),
            ),
            FFRoute(
              name: 'forgotpasswordMain',
              path: 'forgotpasswordMain',
              builder: (context, params) => ForgotpasswordMainWidget(),
            ),
            FFRoute(
              name: 'loginpagMain',
              path: 'loginpagMain',
              builder: (context, params) => LoginpagMainWidget(),
            ),
            FFRoute(
              name: 'registersucessfulMain',
              path: 'registersucessfulMain',
              builder: (context, params) => RegistersucessfulMainWidget(),
            ),
            FFRoute(
              name: 'QueueMain',
              path: 'queueMain',
              builder: (context, params) => QueueMainWidget(),
            ),
            FFRoute(
              name: 'issuePolicyTravelMain',
              path: 'issuePolicyTravelMain',
              builder: (context, params) => IssuePolicyTravelMainWidget(),
            ),
            FFRoute(
              name: 'ApprovalMain',
              path: 'approvalMain',
              builder: (context, params) => ApprovalMainWidget(),
            ),
            FFRoute(
              name: 'dashboardMain',
              path: 'dashboardMain',
              builder: (context, params) => DashboardMainWidget(),
            ),
            FFRoute(
              name: 'signup1Main',
              path: 'signup1Main',
              builder: (context, params) => Signup1MainWidget(),
            ),
            FFRoute(
              name: 'SearchBookingMain',
              path: 'searchBookingMain',
              builder: (context, params) => SearchBookingMainWidget(),
            ),
            FFRoute(
              name: 'test111',
              path: 'test111',
              builder: (context, params) => Test111Widget(),
            ),
            FFRoute(
              name: 'UsersMain',
              path: 'usersMain',
              builder: (context, params) => UsersMainWidget(),
            ),
            FFRoute(
              name: 'reloginMain',
              path: 'reloginMain',
              builder: (context, params) => ReloginMainWidget(),
            ),
            FFRoute(
              name: 'dashboardS',
              path: 'dashboardS',
              builder: (context, params) => DashboardSWidget(),
            ),
            FFRoute(
              name: 'AgencyRegister',
              path: 'agencyRegister',
              builder: (context, params) => AgencyRegisterWidget(
                agencyContactEmail:
                    params.getParam('agencyContactEmail', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'issuePolicy1S',
              path: 'issuePolicy1S',
              builder: (context, params) => IssuePolicy1SWidget(),
            ),
            FFRoute(
              name: 'invoicepage',
              path: 'invoicepage',
              builder: (context, params) => InvoicepageWidget(),
            ),
            FFRoute(
              name: 'AgenciesMain',
              path: 'agenciesMain',
              builder: (context, params) => AgenciesMainWidget(),
            ),
            FFRoute(
              name: 'BookingDetailPageMobile',
              path: 'bookingDetailPageMobile',
              builder: (context, params) => BookingDetailPageMobileWidget(),
            ),
            FFRoute(
              name: 'productsandservices',
              path: 'productsandservices',
              builder: (context, params) => ProductsandservicesWidget(),
            ),
            FFRoute(
              name: 'BookingDetailPage',
              path: 'bookingDetailPage',
              builder: (context, params) => BookingDetailPageWidget(),
            ),
            FFRoute(
              name: 'ChangePasswordSuccessMobileS',
              path: 'changePasswordSuccessMobileS',
              builder: (context, params) =>
                  ChangePasswordSuccessMobileSWidget(),
            ),
            FFRoute(
              name: 'valueAddedServicesS',
              path: 'valueAddedServicesS',
              builder: (context, params) => ValueAddedServicesSWidget(),
            ),
            FFRoute(
              name: 'ConfigSearchAndDeleteMain',
              path: 'configSearchAndDeleteMain',
              builder: (context, params) => ConfigSearchAndDeleteMainWidget(),
            ),
            FFRoute(
              name: 'reloginmobile',
              path: 'reloginmobile',
              builder: (context, params) => ReloginmobileWidget(),
            ),
            FFRoute(
              name: 'PWchangescussfulMain',
              path: 'pWchangescussfulMain',
              builder: (context, params) => PWchangescussfulMainWidget(),
            ),
            FFRoute(
              name: 'searchdeleteMobile',
              path: 'searchdeleteMobile',
              builder: (context, params) => SearchdeleteMobileWidget(),
            ),
            FFRoute(
              name: 'AddemailMobile',
              path: 'addemailMobile',
              builder: (context, params) => AddemailMobileWidget(),
            ),
            FFRoute(
              name: 'PolicyStatementMain',
              path: 'policyStatementMain',
              builder: (context, params) => PolicyStatementMainWidget(),
            ),
            FFRoute(
              name: 'payableMain',
              path: 'payableMain',
              builder: (context, params) => PayableMainWidget(),
            ),
            FFRoute(
              name: 'policystmentMain',
              path: 'policystmentMain',
              builder: (context, params) => PolicystmentMainWidget(),
            ),
            FFRoute(
              name: 'EmailConfigMain',
              path: 'emailConfigMain',
              builder: (context, params) => EmailConfigMainWidget(),
            ),
            FFRoute(
              name: 'valueaddedservicDESKTOP',
              path: 'valueaddedservicDESKTOP',
              builder: (context, params) => ValueaddedservicDESKTOPWidget(),
            ),
            FFRoute(
              name: 'AgencyProfileMain',
              path: 'agencyProfileMain',
              builder: (context, params) => AgencyProfileMainWidget(
                agencyCode: params.getParam('agencyCode', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'userprofileMain',
              path: 'userprofileMain',
              builder: (context, params) => UserprofileMainWidget(),
            ),
            FFRoute(
              name: 'ResellerMain',
              path: 'resellerMain',
              builder: (context, params) => ResellerMainWidget(),
            ),
            FFRoute(
              name: 'ManageProfile',
              path: 'manageProfile',
              builder: (context, params) => ManageProfileWidget(),
            ),
            FFRoute(
              name: 'ManageProfileEdit',
              path: 'manageProfileEdit',
              builder: (context, params) => ManageProfileEditWidget(),
            ),
            FFRoute(
              name: 'Test',
              path: 'test',
              builder: (context, params) => TestWidget(),
            ),
            FFRoute(
              name: 'TopupCreditMain',
              path: 'topupCreditMain',
              builder: (context, params) => TopupCreditMainWidget(
                agencyCode: params.getParam('agencyCode', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'EmailConfigCopy',
              path: 'emailConfigCopy',
              builder: (context, params) => EmailConfigCopyWidget(),
            ),
            FFRoute(
              name: 'issuePolicyEntryPage',
              path: 'issuePolicyEntryPage',
              builder: (context, params) => IssuePolicyEntryPageWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      urlPathStrategy: UrlPathStrategy.path,
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
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (GoRouter.of(this).routerDelegate.matches.length <= 1) {
      go('/');
    } else {
      pop();
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
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
    return deserializeParam<T>(param, type, isList, collectionNamePath);
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
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/loginpagMain';
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
                    'assets/images/Logo.png',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
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
