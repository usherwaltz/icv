import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../assets/assets.dart';
import '../../../../blocs/blocs.dart';
import '../../../../utils/utils.dart';

/// This class is used to display basic information about the person.
class BasicInfoWidget extends StatelessWidget {
  final double width;
  final bool isColumn;

  const BasicInfoWidget({
    super.key,
    required this.width,
    this.isColumn = false,
  });

  @override
  Widget build(BuildContext context) {
    final themeMode = context
        .select<ThemeBloc, ThemeMode>((ThemeBloc bloc) => bloc.state.themeMode);

    return Container(
      width: width,
      decoration: BoxDecoration(
        color: ColorUtils.getContainerColor(themeMode),
        borderRadius: BorderRadius.circular(
            !isColumn ? SizeUtils.contentSectionsRadius : 0.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8.0,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            child: Image.asset(
              Assets.nikola,
              width: width,
            ),
          ),
          _AboutSection(),
          const Divider(
              indent: SizeUtils.pageMargins, endIndent: SizeUtils.pageMargins),
          const _SkillsSection(),
          const Divider(
              indent: SizeUtils.pageMargins, endIndent: SizeUtils.pageMargins),
          const _LanguagesSection(),
          const Divider(
              indent: SizeUtils.pageMargins, endIndent: SizeUtils.pageMargins),
          const _HobbiesSection(),
        ],
      ),
    );
  }
}

/// Section Wrapper, used to wrap each section in the [BasicInfoWidget]
class _Section extends StatelessWidget {
  final List<_TileWidget> children;

  const _Section({
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: SizeUtils.basicInfoPadding),
      child: Column(
        children: children,
      ),
    );
  }
}

/// Basic Info about the person
class _AboutSection extends StatelessWidget {
  const _AboutSection();

  @override
  Widget build(BuildContext context) {
    final timeZoneOffset = DateTime.now().timeZoneOffset;

    return _Section(
      children: [
        const _TileWidget(
          text: 'About',
          bold: true,
          paddingTop: SizeUtils.basicInfoPadding,
        ),
        const _TileWidget(
          icon: FontAwesomeIcons.solidCircleUser,
          text: 'Nikola Jović',
        ),
        const _TileWidget(
          icon: FontAwesomeIcons.briefcase,
          text: 'Flutter Developer',
        ),
        _TileWidget(
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
          text: '09:00 AM - 05:00 PM',
        ),
        const _TileWidget(
          icon: FontAwesomeIcons.chartSimple,
          text:
              'Nikola is a Flutter developer with just over six years of experience since Flutter was in it\'s beta state. \n\nHe enjoys working on unique opportunities and writing clean, structured, performant, documented, and well-tested code. \n\nWith life-long love for programming, music and technology in general, you can expect creative and precise solutions to your future projects. \n\nAs a former student on the academy of arts, you can also expect some awesome tunes on those company team buildings.',
        ),
      ],
    );
  }
}

/// Technical Skills about the person
class _SkillsSection extends StatelessWidget {
  const _SkillsSection();

  @override
  Widget build(BuildContext context) {
    return const _Section(
      children: [
        _TileWidget(
          text: 'Skills',
          bold: true,
        ),
        _TileWidget(
          icon: FontAwesomeIcons.caretRight,
          text: 'Flutter, Dart, BLoC, Provider, GetX',
        ),
        _TileWidget(
          icon: FontAwesomeIcons.caretRight,
          text: 'Android, iOS, Web, Desktop',
        ),
        _TileWidget(
          icon: FontAwesomeIcons.caretRight,
          text: 'Git, Agile, CI/CD',
        ),
        _TileWidget(
          icon: FontAwesomeIcons.caretRight,
          text: 'OOP, Clean Code, MVC',
        ),
        _TileWidget(
          icon: FontAwesomeIcons.caretRight,
          text: 'PHP, JavaScript, HTML, CSS, Sass, MySQL, SQLite',
          paddingBottom: SizeUtils.basicInfoPadding,
        ),
      ],
    );
  }
}

/// Languages the person speaks
class _LanguagesSection extends StatelessWidget {
  const _LanguagesSection();

  @override
  Widget build(BuildContext context) {
    return const _Section(
      children: [
        _TileWidget(
          text: 'Languages',
          bold: true,
        ),
        _TileWidget(
          icon: FontAwesomeIcons.caretRight,
          text: 'English',
        ),
        _TileWidget(
          icon: FontAwesomeIcons.caretRight,
          text: 'Serbo-Croatian',
        ),
      ],
    );
  }
}

/// Hobbies of the person speaks
class _HobbiesSection extends StatelessWidget {
  const _HobbiesSection();

  @override
  Widget build(BuildContext context) {
    return const _Section(
      children: [
        _TileWidget(
          text: 'Hobbies',
          bold: true,
        ),
        _TileWidget(
          icon: FontAwesomeIcons.caretRight,
          text: 'Guitar',
        ),
        _TileWidget(
          icon: FontAwesomeIcons.caretRight,
          text: 'Hiking',
        ),
        _TileWidget(
          icon: FontAwesomeIcons.caretRight,
          text: 'Sports',
        ),
        _TileWidget(
          icon: FontAwesomeIcons.caretRight,
          text: 'Gaming',
          paddingBottom: SizeUtils.basicInfoPadding,
        ),
      ],
    );
  }
}

/// Widget that represents a single tile in the [BasicInfoWidget]
class _TileWidget extends StatefulWidget {
  final IconData? icon;
  final String text;
  final bool bold;
  final bool isEmail;
  final double paddingTop;
  final double paddingBottom;

  const _TileWidget({
    required this.text,
    this.icon,
    this.bold = false,
    this.isEmail = false,
    this.paddingTop = 8.0,
    this.paddingBottom = 8.0,
  });

  @override
  State<_TileWidget> createState() => _TileWidgetState();
}

/// State of the [_TileWidget]
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
      padding: EdgeInsets.fromLTRB(
          0.0, widget.paddingTop, 0.0, widget.paddingBottom),
      child: Row(
        crossAxisAlignment:
            widget.bold ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          if (widget.icon != null) ...[
            SizedBox(
              width: widget.bold ? 24.0 : 20.0,
              child: FaIcon(
                widget.icon,
                size: 20.0,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(width: 8.0),
          ],
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
                  fontSize: widget.bold ? 24.0 : 16.0,
                  fontWeight: widget.bold ? FontWeight.bold : FontWeight.normal,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
