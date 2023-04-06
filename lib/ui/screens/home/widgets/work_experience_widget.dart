import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../blocs/blocs.dart';
import '../../../../utils/utils.dart';

/// This class is used to display the work experience of the person.
class WorkExperienceWidget extends StatelessWidget {
  final double width;
  final bool isPDF;
  final bool isColumn;

  const WorkExperienceWidget({
    Key? key,
    required this.width,
    this.isPDF = false,
    this.isColumn = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeMode = context.select<ThemeBloc, ThemeMode>((ThemeBloc bloc) => bloc.state.themeMode);

    return Container(
      width: width,
      decoration: BoxDecoration(
        color: !isPDF ? ColorUtils.getContainerColor(themeMode) : Colors.transparent,
        borderRadius: BorderRadius.circular(!isColumn ? SizeUtils.contentSectionsRadius : 0.0),
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
        padding: const EdgeInsets.all(SizeUtils.workExperienceHeadlinePadding),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.work,
                  size: Theme.of(context).textTheme.headlineMedium?.fontSize,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: SizeUtils.pageMargins),
                Text(
                  'Work Experience',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
            const SizedBox(height: 40.0),

            // There are multiple ways of achieving this result, but I found this one to be the most readable and easy to understand.
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
        position: 'Senior Flutter Developer',
        fromDate: 'May 2022',
        toDate: 'April 2023',
        responsibilities: [
          'Developed mobile applications using Flutter framework and programming language Dart.',
          'Implemented BLoC pattern for managing state and data flow in the application.',
          'Integrated Firebase services such as authentication, analytics, cloud messaging, and cloud storage in the application.',
          'Customized app theming to provide a personalized user experience across the application.',
          'Integrated VOiP calls and push notifications in the application for real-time communication with users.',
          'Used Http Sockets to communicate with external APIs and fetch data dynamically.',
          'Implemented animations to create engaging and intuitive user experiences.',
          'Worked in a SCRUM team to manage project timelines and prioritize development tasks.',
          'Worked at a startup company, providing innovative ideas and solutions for new products.',
          'Participated in brainstorming sessions for UI/UX design and contributed to creating new ideas for improving the user experience.'
        ],
      ),
      const ExperienceBlock(
        company: 'Devlabs DOO',
        position: 'Fullstack PHP developer',
        fromDate: 'May 2020',
        toDate: 'May 2022',
        responsibilities: [
          'Worked in large teams managed under the SCRUM methodology.',
          'Collaborated closely with clients to define new software requirements and ensure their needs were met.',
          'Developed large-scale web shops using PHP frameworks such as Oxid and Symphony.',
          'Developed "Kastner und Öhler" website\n- Austrian clothing company with 100 years of tradition.',
          'Developed "Gigasport" website\n- Austrian sports equipment company with over 200,000 products.',
        ],
      ),
      const ExperienceBlock(
        company: 'Euro Limun DOO',
        position: 'Software developer / IT consultant / Marketing manager',
        fromDate: 'Oct 2019',
        toDate: 'May 2020',
        responsibilities: [
          'Serviced and maintained all technical equipment within the company.',
          'Maintained company social media accounts and improved company SEO rating.',
          'Developed internal software for generating documents with Flutter and PHP.',
          'Developed company websites with PHP (Yii2 Framework) and standard frontend tools (HTML, CSS, Jquery).',
        ],
      ),
      const ExperienceBlock(
        company: 'Creative Studio Form',
        position: 'Flutter Developer',
        fromDate: 'May 2019',
        toDate: 'Oct 2019',
        responsibilities: [
          'Developed Flutter apps for clients.',
          'Reviewed and tested colleagues themes.',
          'Developed pixel perfect Flutter themes for sale on Envato market.',
        ],
      ),
      const ExperienceBlock(
        company: 'CodeBlueStudio',
        position: 'Flutter / Web Developer',
        fromDate: 'May 2016',
        toDate: 'May 2019',
        responsibilities: [
          'Designed key features that enhanced user experience.',
          'Maintained published apps, fixed bugs and added new features.',
          'Resolved technical difficulties that clients might have had with our products.',
          'Developed "BL Teatar"\n- mobile app for bookings seats in Banja Luka theatres.',
          'Developed "Run & More"\n- mobile app for live tracking marathon runners and displaying event information.',
          'Developed "Reblog"\n- mobile app for sharing and discovering content. Similar to old "Tumblr".',
        ],
      ),
    ];

/// Being that modularization is one of the most important things in Flutter development,
/// I decided to create a separate widget for each experience block to showcase an example of how to do it.
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

        // There are multiple ways of achieving this result, but I found this one to be the most readable and easy to understand.
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) => const SizedBox(height: 8.0),
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemCount: responsibilities.length,
          itemBuilder: (context, index) {
            final responsibility = responsibilities[index];
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 18.0,
                  child: Text('•'),
                ),
                Flexible(
                  child: Text(responsibility),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
