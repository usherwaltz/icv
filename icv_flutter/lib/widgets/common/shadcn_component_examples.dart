/// shadcn_ui Component Usage Examples
///
/// This file provides examples of how to use shadcn_ui components
/// in the iCV app. All components automatically use the app's theme
/// via Material Theme integration.
///
/// Import: `import 'package:shadcn_ui/shadcn_ui.dart';`
library;

import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

/// Example implementations of shadcn_ui components
/// These can be used as reference when building features

class ShadcnComponentExamples {
  /// Button Examples
  static Widget buttonExamples() {
    return Column(
      children: [
        ShadButton(
          child: const Text('Primary Button'),
          onPressed: () {},
        ),
        const SizedBox(height: 8),
        ShadButton.secondary(
          child: const Text('Secondary Button'),
          onPressed: () {},
        ),
        const SizedBox(height: 8),
        ShadButton.outline(
          child: const Text('Outline Button'),
          onPressed: () {},
        ),
        const SizedBox(height: 8),
        ShadButton.destructive(
          child: const Text('Destructive Button'),
          onPressed: () {},
        ),
        const SizedBox(height: 8),
        ShadButton.ghost(
          child: const Text('Ghost Button'),
          onPressed: () {},
        ),
        const SizedBox(height: 8),
        ShadButton(
          onPressed: () {},
          leading: const Icon(Icons.mail),
          child: const Text('Button with Icon'),
        ),
      ],
    );
  }

  /// Form Input Examples
  static Widget inputExamples() {
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: const ShadInput(
            placeholder: Text('Email address'),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
        const SizedBox(height: 16),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: const ShadTextarea(
            placeholder: Text('Enter your message here...'),
          ),
        ),
        const SizedBox(height: 16),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: ShadSelect<String>(
            placeholder: const Text('Select an option'),
            options: const [
              ShadOption(value: 'option1', child: Text('Option 1')),
              ShadOption(value: 'option2', child: Text('Option 2')),
              ShadOption(value: 'option3', child: Text('Option 3')),
            ],
            selectedOptionBuilder: (context, value) => Text('Selected: $value'),
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }

  /// Card Examples
  static Widget cardExamples() {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: ShadCard(
        title: const Text('Card Title'),
        description: const Text('This is a card description.'),
        footer: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ShadButton.outline(
              child: const Text('Cancel'),
              onPressed: () {},
            ),
            const SizedBox(width: 8),
            ShadButton(
              child: const Text('Action'),
              onPressed: () {},
            ),
          ],
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text('Card content goes here.'),
        ),
      ),
    );
  }

  /// Dialog Examples
  static void showDialogExample(BuildContext context) {
    showShadDialog(
      context: context,
      builder: (context) => ShadDialog(
        title: const Text('Confirm Action'),
        description: const Text('Are you sure you want to proceed?'),
        actions: [
          ShadButton.outline(
            child: const Text('Cancel'),
            onPressed: () => Navigator.of(context).pop(),
          ),
          ShadButton(
            child: const Text('Confirm'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
        child: const SizedBox(
          width: 375,
          height: 200,
        ),
      ),
    );
  }

  /// Alert Examples
  static Widget alertExamples() {
    return Column(
      children: [
        ShadAlert(
          icon: const Icon(Icons.info_outline),
          title: const Text('Information'),
          description: const Text('This is an informational alert.'),
        ),
        const SizedBox(height: 16),
        ShadAlert.destructive(
          icon: const Icon(Icons.error_outline),
          title: const Text('Error'),
          description: const Text('This is a destructive/error alert.'),
        ),
      ],
    );
  }

  /// Progress Examples
  static Widget progressExamples() {
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: const ShadProgress(value: 0.5), // 50% progress
        ),
        const SizedBox(height: 16),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: const ShadProgress(), // Indeterminate progress
        ),
      ],
    );
  }

  /// Toast/Sonner Examples
  static void showToastExample(BuildContext context) {
    ShadToaster.of(context).show(
      const ShadToast(
        title: Text('Success'),
        description: Text('Your action was completed successfully.'),
      ),
    );
  }

  /// Checkbox Examples
  static Widget checkboxExample() {
    return StatefulBuilder(
      builder: (context, setState) {
        bool value = false;
        return ShadCheckbox(
          value: value,
          onChanged: (v) => setState(() => value = v),
          label: const Text('Accept terms and conditions'),
          sublabel: const Text('You agree to our Terms of Service.'),
        );
      },
    );
  }

  /// RadioGroup Examples
  static Widget radioGroupExample() {
    return ShadRadioGroup<String>(
      items: const [
        ShadRadio(
          label: Text('Option 1'),
          value: 'option1',
        ),
        ShadRadio(
          label: Text('Option 2'),
          value: 'option2',
        ),
        ShadRadio(
          label: Text('Option 3'),
          value: 'option3',
        ),
      ],
      onChanged: (value) {},
    );
  }

  /// Switch Examples
  static Widget switchExample() {
    return StatefulBuilder(
      builder: (context, setState) {
        bool value = false;
        return Row(
          children: [
            const Text('Enable notifications'),
            const SizedBox(width: 16),
            ShadSwitch(
              value: value,
              onChanged: (v) => setState(() => value = v),
            ),
          ],
        );
      },
    );
  }

  /// Badge Examples
  static Widget badgeExamples() {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        const ShadBadge(child: Text('Default')),
        ShadBadge.secondary(child: const Text('Secondary')),
        ShadBadge.destructive(child: const Text('Destructive')),
        ShadBadge.outline(child: const Text('Outline')),
      ],
    );
  }

  /// Avatar Examples
  static Widget avatarExamples() {
    return const Row(
      children: [
        ShadAvatar(
          'https://i.pravatar.cc/150?img=1',
          placeholder: Text('JD'),
        ),
        SizedBox(width: 8),
        ShadAvatar(
          '',
          placeholder: Text('JD'),
        ),
      ],
    );
  }

  /// Separator Examples
  static Widget separatorExample() {
    return const Column(
      children: [
        Text('Above'),
        ShadSeparator.horizontal(),
        Text('Below'),
      ],
    );
  }

  /// Form with Validation Example
  static Widget formExample() {
    final formKey = GlobalKey<ShadFormState>();
    return ShadForm(
      key: formKey,
      child: Column(
        children: [
          ShadInputFormField(
            id: 'email',
            label: const Text('Email'),
            placeholder: const Text('Enter your email'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Email is required';
              }
              if (!value.contains('@')) {
                return 'Invalid email format';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          ShadButton(
            child: const Text('Submit'),
            onPressed: () {
              if (formKey.currentState!.saveAndValidate()) {
                // ignore: avoid_print
                print('Form is valid: ${formKey.currentState!.value}');
              }
            },
          ),
        ],
      ),
    );
  }

  /// Sheet Examples
  static void showSheetExample(BuildContext context) {
    showShadSheet(
      context: context,
      builder: (context) => ShadSheet(
        title: const Text('Sheet Title'),
        description: const Text('This is a sheet component.'),
        actions: [
          ShadButton.outline(
            child: const Text('Cancel'),
            onPressed: () => Navigator.of(context).pop(),
          ),
          ShadButton(
            child: const Text('Action'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
        child: const SizedBox(
          height: 200,
          child: Center(child: Text('Sheet content')),
        ),
      ),
    );
  }
}
