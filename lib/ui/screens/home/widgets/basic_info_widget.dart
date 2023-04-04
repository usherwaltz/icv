import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../assets/assets.dart';

class BasicInfoWidget extends StatelessWidget {
  final double width;

  const BasicInfoWidget({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        elevation: 16.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.nikola),
            const _AboutSection(),
            const Divider(indent: 16.0, endIndent: 16.0),
            const _SkillsSection(),
            const Divider(indent: 16.0, endIndent: 16.0),
            const _LanguagesSection(),
          ],
        ),
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final _TileWidget sectionDescription;
  final List<_TileWidget> children;

  const _Section({
    Key? key,
    required this.sectionDescription,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sectionDescription,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}

class _AboutSection extends StatelessWidget {
  const _AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final timeZoneOffset = DateTime.now().timeZoneOffset;

    return _Section(
      sectionDescription: const _TileWidget(
        icon: Icons.info,
        text: 'About',
        bold: true,
        paddingTop: 0.0,
      ),
      children: [
        const _TileWidget(
          icon: FontAwesomeIcons.solidCircleUser,
          text: 'Nikola Jović',
        ),
        const _TileWidget(
          icon: FontAwesomeIcons.briefcase,
          text: 'Senior Flutter Developer',
        ),
        const _TileWidget(
          icon: FontAwesomeIcons.solidEnvelope,
          text: 'nikola@jovic.id',
          isEmail: true,
        ),
        const _TileWidget(
          icon: FontAwesomeIcons.house,
          text: 'Banja Luka, BiH',
        ),
        _TileWidget(
          icon: FontAwesomeIcons.globe,
          text: '(UTC + 0${timeZoneOffset.inHours}:00) Europe',
        ),
        const _TileWidget(
          icon: FontAwesomeIcons.solidHourglass,
          text: '09:00 AM - 06:00 PM',
        ),
        const _TileWidget(
          icon: FontAwesomeIcons.chartSimple,
          text:
              'Nikola is a senior Flutter developer with just over six years of experience since Flutter was in it\'s beta state. \n\nHe enjoys working on unique opportunities and writing clean, structured, performant, documented, and well-tested code. \n\nWith life-long love for programming, music and technology in general, you can expect creative and precise solutions to your future projects.',
          paddingBottom: 0.0,
        ),
      ],
    );
  }
}

class _SkillsSection extends StatelessWidget {
  const _SkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _Section(
      sectionDescription: _TileWidget(
        icon: Icons.code,
        text: 'Skills',
        bold: true,
        paddingTop: 0.0,
      ),
      children: [
        _TileWidget(
          text: 'Flutter',
        ),
        _TileWidget(
          text: 'Git, Agile, CI/CD',
        ),
        _TileWidget(
          text: 'OOP, Clean Code, MVC',
        ),
        _TileWidget(
          text: 'Dart, PHP, JavaScript, HTML, CSS, Sass, MySQL, SQLite',
        ),
        _TileWidget(
          text: 'Android, iOS, Web, Desktop',
          paddingBottom: 0.0,
        ),
      ],
    );
  }
}

class _LanguagesSection extends StatelessWidget {
  const _LanguagesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _Section(
      sectionDescription: _TileWidget(
        icon: Icons.translate,
        text: 'Languages',
        bold: true,
      ),
      children: [
        _TileWidget(
          text: 'English',
        ),
        _TileWidget(
          text: 'Serbo-Croatian',
          paddingBottom: 0.0,
        ),
      ],
    );
  }
}

class _TileWidget extends StatefulWidget {
  final IconData? icon;
  final String text;
  final bool bold;
  final bool isEmail;
  final double paddingTop;
  final double paddingBottom;

  const _TileWidget({
    Key? key,
    required this.text,
    this.icon,
    this.bold = false,
    this.isEmail = false,
    this.paddingTop = 10.0,
    this.paddingBottom = 10.0,
  }) : super(key: key);

  @override
  State<_TileWidget> createState() => _TileWidgetState();
}

class _TileWidgetState extends State<_TileWidget> {
  bool emailHidden = true;

  _showEmail() {
    if (!widget.isEmail) return;
    setState(() {
      emailHidden = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, widget.paddingTop, 0.0, widget.paddingBottom),
      child: Row(
        crossAxisAlignment: widget.bold ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          FaIcon(
            widget.icon,
            size: widget.bold ? 24.0 : 20.0,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: GestureDetector(
              onTap: () => _showEmail(),
              child: Text(
                widget.isEmail
                    ? !emailHidden
                        ? widget.text
                        : '[ Click to show e-mail ]'
                    : widget.text,
                style: TextStyle(
                  fontSize: widget.bold ? 20.0 : 16.0,
                  fontWeight: widget.bold ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
