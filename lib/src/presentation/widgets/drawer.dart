import 'package:flutter/material.dart';

class MsDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Menú',
                style: Theme.of(context).primaryTextTheme.headline4,
              ),
              const SizedBox(
                height: 20,
              ),
              _buildOption(
                context,
                Icons.location_on,
                'Encuéntrame',
                () {},
              ),
              _buildOption(
                context,
                Icons.contacts_rounded,
                'Contacto',
                () {},
              ),
              _buildOption(
                context,
                Icons.settings,
                'Preferencias',
                () {},
              ),
              _buildOption(
                context,
                Icons.info,
                'Info',
                () {},
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'MeSirve v1.0.1+2',
                    style: Theme.of(context).primaryTextTheme.overline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOption(
    BuildContext context,
    IconData icon,
    String label,
    GestureTapCallback? onTap,
  ) {
    return Ink(
      child: InkWell(
        onTap: onTap,
        highlightColor: Colors.white.withAlpha(20),
        splashColor: Colors.white.withAlpha(30),
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
              Flexible(
                child: Text(
                  label,
                  style: Theme.of(context).primaryTextTheme.subtitle1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
