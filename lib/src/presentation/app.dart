import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
import 'package:egresocovid19/src/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<IAuthBloc>(create: (_) => GetIt.I()),
        BlocProvider<ILocaleBloc>(create: (_) => GetIt.I()),
        BlocProvider<IThemeBloc>(create: (_) => GetIt.I()),
      ],
      child: BeamerProvider(
        routerDelegate: GetIt.I<Routes>().routerDelegate,
        child: BlocBuilder<IThemeBloc, ThemeState>(
          builder: (context, state) {
            return state.when(
              changed: (mode, light, dark) {
                return BlocBuilder<ILocaleBloc, LocaleState>(
                  builder: (context, state) {
                    return MaterialApp.router(
                      debugShowCheckedModeBanner: false,
                      onGenerateTitle: (ctx) => Messages.of(ctx)!.appName,
                      theme: light,
                      darkTheme: dark,
                      themeMode: mode,
                      localizationsDelegates: Messages.localizationsDelegates,
                      supportedLocales: Messages.supportedLocales,
                      locale: state.locale,
                      scrollBehavior: GetIt.I(),
                      backButtonDispatcher:
                          GetIt.I<Routes>().backButtonDispatcher,
                      routerDelegate: GetIt.I<Routes>().routerDelegate,
                      routeInformationParser:
                          GetIt.I<Routes>().routeInformationParser,
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
