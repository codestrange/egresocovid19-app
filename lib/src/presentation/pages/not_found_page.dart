import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:egresocovid19/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  static BeamPage getPage(BuildContext context) {
    return BeamPage(
      key: const ValueKey('notfound'),
      title: getTitle(
        context,
        Messages.of(context)!.notFoundPageTitle,
      ),
      child: NotFoundPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Messages.of(context)!.homeDrawerTitle,
                  style: Theme.of(context).textTheme.headline4,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50),
                Text(
                  Messages.of(context)!.notFoundMessage,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                MainButton(
                  onPressed: () {
                    context.beamToNamed('/patients');
                  },
                  text: Messages.of(context)!.notFoundButtonText,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
