import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/presentation/blocs/auth/auth_bloc.dart';
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
        routerDelegate: Routes.routerDelegate,
        child: BlocBuilder<IThemeBloc, ThemeState>(
          builder: (context, state) {
            return state.when(
              changed: (mode, light, dark) {
                return BlocBuilder<ILocaleBloc, LocaleState>(
                  builder: (context, state) {
                    return MaterialApp.router(
                      debugShowCheckedModeBanner: false,
                      onGenerateTitle: (context) {
                        return Messages.of(context)!.helloWorld;
                      },
                      theme: light,
                      darkTheme: dark,
                      themeMode: mode,
                      localizationsDelegates: Messages.localizationsDelegates,
                      supportedLocales: Messages.supportedLocales,
                      locale: state.locale,
                      backButtonDispatcher: Routes.backButtonDispatcher,
                      routerDelegate: Routes.routerDelegate,
                      routeInformationParser: Routes.routeInformationParser,
                      builder: (context, child) {
                        return BlocListener<IAuthBloc, AuthState>(
                          listener: (context, state) {
                            final url = context.currentBeamLocation.state
                                .routeInformation.location;
                            state.when(
                              checking: () {
                                if (url != '/checking') {
                                  context.beamToNamed('/checking');
                                }
                              },
                              authenticated: () {},
                              unauthenticated: () {
                                if (url != '/login') {
                                  context.beamToNamed('/login');
                                }
                              },
                            );
                          },
                          child: child,
                        );
                      },
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
