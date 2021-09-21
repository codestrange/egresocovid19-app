import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/domain/entities/patient_entity.dart';
import 'package:egresocovid19/src/domain/services/auth_service.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:egresocovid19/src/presentation/widgets/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static BeamPage getPage(BuildContext context) {
    return BeamPage(
      key: const ValueKey('home'),
      title: getTitle(context, Messages.of(context)!.homePageTitle),
      child: const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IHomeBloc>(
      create: (_) => GetIt.I(),
      child: const _HomePageInternal(),
    );
  }
}

class _HomePageInternal extends StatelessWidget {
  const _HomePageInternal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: Text(
          Messages.of(context)!.appName,
          style: Theme.of(context).textTheme.headline6,
        ),
        iconTheme: Theme.of(context).iconTheme,
        centerTitle: true,
      ),
      drawer: const _Drawer(),
      body: _Body(),
      floatingActionButton: const _FloatingActionButton(),
    );
  }
}

class _Drawer extends StatelessWidget {
  const _Drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                DrawerHeader(
                  child: Center(
                    child: Text(
                      Messages.of(context)!.homeDrawerTitle,
                      style: Theme.of(context).textTheme.headline4,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
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
            ListTile(
              leading: Icon(
                Icons.logout,
                size: Theme.of(context).iconTheme.size,
                color: Theme.of(context).iconTheme.color,
              ),
              title: Text(Messages.of(context)!.homeCloseSession),
              onTap: () {
                GetIt.I<IAuthService>()
                    .logOut()
                    .then((_) => context.beamToNamed('/login'));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  _Body({
    Key? key,
  }) : super(key: key);

  final Key queryWidgetKey = const Key('queryWidgetKey');
  final queryController = TextEditingController();
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IHomeBloc, HomeState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return Column(
              children: [
                _QueryInput(
                  key: queryWidgetKey,
                  controller: queryController,
                  focusNode: focusNode,
                ),
                Flexible(
                  flex: 3,
                  child: Center(
                    child: SelectableText(
                      Messages.of(context)!.homeWelcomeMessage,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Flexible(flex: 2, child: SizedBox.shrink()),
              ],
            );
          },
          fetchInProgress: () {
            return Column(
              children: [
                _QueryInput(
                  key: queryWidgetKey,
                  controller: queryController,
                  focusNode: focusNode,
                ),
                const Flexible(
                  flex: 3,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                const Flexible(flex: 2, child: SizedBox.shrink()),
              ],
            );
          },
          fetchSuccess: (patients) {
            return ListView(
              children: [
                _QueryInput(
                  key: queryWidgetKey,
                  controller: queryController,
                  focusNode: focusNode,
                ),
                for (final patient in patients)
                  _PatientWidget(patient: patient),
                const SizedBox(height: 80),
              ],
            );
          },
          fetchSuccessNotFound: () {
            return Column(
              children: [
                _QueryInput(
                  key: queryWidgetKey,
                  controller: queryController,
                  focusNode: focusNode,
                ),
                Flexible(
                  flex: 3,
                  child: Center(
                    child: SelectableText(
                      Messages.of(context)!.homeNotFoundMessage,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Flexible(flex: 2, child: SizedBox.shrink()),
              ],
            );
          },
          fetchFailure: (error) {
            return Column(
              children: [
                _QueryInput(
                  key: queryWidgetKey,
                  controller: queryController,
                  focusNode: focusNode,
                ),
                Flexible(
                  flex: 3,
                  child: Center(
                    child: SelectableText(
                      error,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Flexible(flex: 2, child: SizedBox.shrink()),
              ],
            );
          },
        );
      },
    );
  }
}

class _PatientWidget extends StatelessWidget {
  const _PatientWidget({
    Key? key,
    required this.patient,
  }) : super(key: key);

  final PatientGetEntity patient;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListTile(
            title: SelectableText('${patient.firstname} ${patient.lastname}'),
            subtitle: SelectableText(patient.ci),
            trailing: IconButton(
              tooltip: Messages.of(context)!.homeTooltipDetail,
              icon: Icon(
                Icons.keyboard_arrow_right,
                color: Theme.of(context).colorScheme.secondary,
              ),
              onPressed: () {
                context.beamToNamed('/patients/${patient.id}/view');
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _QueryInput extends StatelessWidget {
  const _QueryInput({
    Key? key,
    required this.controller,
    required this.focusNode,
  }) : super(key: key);

  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        onChanged: (text) {
          context.read<IHomeBloc>().add(HomeEvent.fetched(query: text));
          focusNode.requestFocus();
        },
        keyboardType: TextInputType.text,
        autofocus: true,
        decoration: TextFieldDecorations.decoration(
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              controller.text = '';
              context.read<IHomeBloc>().add(const HomeEvent.fetched(query: ''));
              focusNode.requestFocus();
            },
          ),
          prefixIcon: Icons.search,
          hintText: Messages.of(context)!.homeSearchHint,
        ),
      ),
    );
  }
}

class _FloatingActionButton extends StatelessWidget {
  const _FloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: Messages.of(context)!.homeTooltipAdd,
      child: const Icon(Icons.add),
      onPressed: () {
        context.beamToNamed('/patients/new');
      },
    );
  }
}
