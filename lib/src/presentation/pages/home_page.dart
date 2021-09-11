import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/domain/services/auth_service.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:egresocovid19/src/presentation/widgets/buttons/main_button_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static BeamPage getPage(BuildContext context) {
    return BeamPage(
      key: const ValueKey('home'),
      title: getTitle(context, 'Inicio'),
      type: kIsWeb ? BeamPageType.fadeTransition : BeamPageType.material,
      child: const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: Text(
          Messages.of(context)!.helloWorld,
          style: Theme.of(context).textTheme.headline6,
        ),
        iconTheme: Theme.of(context).iconTheme,
      ),
      drawer: Drawer(
        child: SafeArea(
          child: ListView(
            children: [
              SizedBox(
                height: 200,
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      right: 10,
                      child: BlocBuilder<IThemeBloc, ThemeState>(
                        builder: (context, state) {
                          return IconButton(
                            icon: Icon(
                              state.when(
                                changed: (mode, light, dark) {
                                  switch (mode) {
                                    case ThemeMode.light:
                                      return Icons.dark_mode_outlined;
                                    case ThemeMode.dark:
                                      return Icons.light_mode_outlined;
                                    default:
                                      return Icons.brightness_auto;
                                  }
                                },
                              ),
                            ),
                            onPressed: () {
                              final i = state.mode.index == 1 ? 2 : 1;
                              context.read<IThemeBloc>().add(
                                  ThemeEvent.change(mode: ThemeMode.values[i]));
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Divider(height: 1),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  size: Theme.of(context).iconTheme.size,
                  color: Theme.of(context).iconTheme.color,
                ),
                title: const Text('Cerrar Sesión'),
                onTap: () {
                  GetIt.I<IAuthService>()
                      .logOut()
                      .then((_) => context.beamToNamed('/login'));
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Messages.of(context)!.helloWorld,
              ),
              const SizedBox(height: 10),
              MainButton(
                text: 'Cerrar Sesión',
                onPressed: () {
                  GetIt.I<IAuthService>()
                      .logOut()
                      .then((_) => context.beamToNamed('/login'));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
