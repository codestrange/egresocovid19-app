import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static BeamPage getPage() {
    return BeamPage(
      key: const ValueKey('home'),
      title: 'Egreso COVID-19 - Inicio',
      type: kIsWeb ? BeamPageType.noTransition : BeamPageType.material,
      child: const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Messages.of(context)!.helloWorld,
        ),
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
            ],
          ),
        ),
      ),
      body: Center(
        child: Text(Messages.of(context)!.helloWorld),
      ),
    );
  }
}
