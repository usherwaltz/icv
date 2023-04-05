import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../blocs/blocs.dart';
import '../../../../utils/utils.dart';

class WorkExperienceWidget extends StatelessWidget {
  final double width;
  final bool isPDF;

  const WorkExperienceWidget({
    Key? key,
    required this.width,
    this.isPDF = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeMode = context.select<ThemeBloc, ThemeMode>((ThemeBloc bloc) => bloc.state.themeMode);

    return Container(
      width: width,
      decoration: BoxDecoration(
        color: !isPDF ? ColorUtils.getContainerColor(themeMode) : Colors.transparent,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          if (!isPDF)
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8.0,
              offset: const Offset(0, 4),
            ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.work,
                  size: Theme.of(context).textTheme.headlineMedium?.fontSize,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 16.0),
                Text(
                  'Work Experience',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
            const SizedBox(height: 40.0),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              separatorBuilder: (context, index) => const SizedBox(height: 40.0),
              itemCount: experienceBlocks.length,
              itemBuilder: (context, index) => experienceBlocks[index],
            ),
          ],
        ),
      ),
    );
  }
}

List<ExperienceBlock> get experienceBlocks => [
      const ExperienceBlock(
        company: 'The Symbol DOO',
        position: 'Flutter Developer',
        fromDate: 'May 2022',
        toDate: 'April 2022',
        responsibilities: [
          'Working on a an in-house project.',
          'Flutter Bloc, Animation, Firebase, Theming, VOiP, Push Notifications, Http Sockets etc.',
        ],
      ),
      const ExperienceBlock(
        company: 'Devlabs DOO',
        position: 'Fullstack PHP developer',
        fromDate: 'May 2020',
        toDate: 'May 2022',
        responsibilities: [
          'Working on large scale web shops with PHP (Oxid and Symphony).',
          'Communicating with a large team of developers and designers.',
        ],
      ),
      const ExperienceBlock(
        company: 'Euro Limun DOO',
        position: 'Software developer / IT consultant / Marketing manager',
        fromDate: 'Oct 2019',
        toDate: 'May 2020',
        responsibilities: [
          'Developing internal software for generating documents with Flutter and Php.',
          'Servicing and maintaining all technical equipment within the company.',
          'Redesigning / maintaining company websites and social media',
        ],
      ),
      const ExperienceBlock(
        company: 'Creative Studio Form',
        position: 'Flutter Developer',
        fromDate: 'May 2019',
        toDate: 'Oct 2019',
        responsibilities: [
          'Creating pixel perfect Flutter themes for sale on Envato market.',
        ],
      ),
      const ExperienceBlock(
        company: 'CodeBlueStudio',
        position: 'Flutter / Web Developer',
        fromDate: 'May 2016',
        toDate: 'May 2019',
        responsibilities: [
          'Developing mobile apps with Flutter.',
          'Resolving technical difficulties that clients might have had with our products.',
          'Designing key features that enhanced user experience.',
        ],
      ),
    ];

class ExperienceBlock extends StatelessWidget {
  final String company;
  final String position;
  final String fromDate;
  final String toDate;
  final List<String> responsibilities;

  const ExperienceBlock({
    Key? key,
    required this.company,
    required this.position,
    required this.fromDate,
    required this.toDate,
    required this.responsibilities,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$company / $position',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        const SizedBox(height: 16.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.calendar,
              size: 20.0,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 8.0),
            Text(
              '$fromDate - $toDate',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: 16.0),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) => const SizedBox(height: 8.0),
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemCount: responsibilities.length,
          itemBuilder: (context, index) {
            final responsibility = responsibilities[index];
            return Text('• $responsibility');
          },
        ),
      ],
    );
  }
}
