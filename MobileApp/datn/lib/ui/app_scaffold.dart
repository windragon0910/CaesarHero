import 'package:flutter/material.dart';
import 'package:flutter_disposebag/flutter_disposebag.dart';
import 'package:rxdart/subjects.dart';

typedef AppScaffoldWidgetBuilder = Widget Function(BuildContext, RouteSettings);

class AppScaffold extends StatefulWidget {
  final List<BottomNavigationBarItem> items;
  final List<AppScaffoldWidgetBuilder> builders;

  const AppScaffold({
    Key key,
    @required this.items,
    @required this.builders,
  }) : super(key: key);

  @override
  _AppScaffoldState createState() => _AppScaffoldState();

  static NavigatorState of(BuildContext context, {int newTabIndex}) {
    final appScaffoldState =
        context is StatefulElement && context.state is _AppScaffoldState
            ? context.state as _AppScaffoldState
            : context.findAncestorStateOfType<_AppScaffoldState>();

    final currentIndex = appScaffoldState.index;
    final navigatorKeys = appScaffoldState.navigatorKeys;

    if (newTabIndex != null &&
        newTabIndex != currentIndex &&
        appScaffoldState.mounted) {
      appScaffoldState.onTap(newTabIndex);
      return navigatorKeys[newTabIndex].currentState;
    }

    return navigatorKeys[currentIndex].currentState;
  }

  static Stream<int> tapStream(BuildContext context) {
    final appScaffoldState =
        context.findAncestorStateOfType<_AppScaffoldState>();
    return appScaffoldState.tapS;
  }

  static NavigatorState ofIndex(BuildContext context, int index) {
    final appScaffoldState =
        context.findAncestorStateOfType<_AppScaffoldState>();
    return appScaffoldState.navigatorKeys[index].currentState;
  }
}

class _AppScaffoldState extends State<AppScaffold> with DisposeBagMixin {
  var index = 0;
  var navigatorKeys = <GlobalKey<NavigatorState>>[];
  final tapS = PublishSubject<int>(sync: true);

  @override
  void initState() {
    super.initState();

    navigatorKeys = List.generate(
      widget.builders.length,
      (_) => GlobalKey<NavigatorState>(),
    );
    tapS.disposedBy(bag);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        final navigatorState = navigatorKeys[index].currentState;
        final canPop = navigatorState.canPop();

        if (canPop) {
          navigatorState.maybePop();
        }

        if (!canPop && index > 0) {
          onTap(0);
          return Future.value(false);
        }

        return Future.value(!canPop);
      },
      child: Scaffold(
        body: buildBody(),
        bottomNavigationBar: BottomNavigationBar(
          items: widget.items,
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: onTap,
        ),
      ),
    );
  }

  void onTap(final int newIndex) {
    if (index == newIndex) {
      navigatorKeys[index].currentState?.popUntil((route) => route.isFirst);
    } else {
      setState(() => index = newIndex);
    }

    tapS.add(newIndex);
  }

  Widget buildBody() {
    return IndexedStack(
      index: index,
      children: [
        for (int i = 0; i < widget.builders.length; i++)
          Navigator(
            key: navigatorKeys[i],
            onGenerateRoute: (settings) => MaterialPageRoute(
              settings: settings,
              builder: (context) => widget.builders[i](context, settings),
            ),
            observers: [
              HeroController(),
            ],
          )
      ],
    );
  }
}

extension NavigatorStateX on NavigatorState {
  @optionalTypeArgs
  Future<T> pushNamedX<T extends Object>(
    String routeName, {
    Object arguments,
  }) {
    _removeCurrentSnackBar();
    return pushNamed(routeName, arguments: arguments);
  }

  @optionalTypeArgs
  Future<T> pushNamedAndRemoveUntilX<T>(
    String newRouteName,
    RoutePredicate predicate, {
    Object arguments,
  }) {
    _removeCurrentSnackBar();
    return pushNamedAndRemoveUntil(
      newRouteName,
      predicate,
      arguments: arguments,
    );
  }

  void _removeCurrentSnackBar() {
    try {
      ScaffoldMessenger.of(context).removeCurrentSnackBar();
    } catch (_) {}
  }
}
