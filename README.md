# Motivation
Being that I love working with flutter, I decided go for a different approach when sending my CV to potential recruiters.

After a bit of thought, I came to the idea that a nice way to showcase my work experience other than plain old text on paper would be to actually write a small Flutter project to achieve the same thing! :D

## Summarize

Anyone getting started with Flutter will quickly come to the conclusion that there are very little standards and conventions when it comes writing Flutter code.

In this project, my goal was to showcase how I would solve certain problems and write UI code.

Hold on, did I say "Getting started"...

## Getting Started

#### 1. Flutter setup
First things first: setup flutter on your local machine.

For help getting started with Flutter development, view the  
[online documentation](https://docs.flutter.dev/), which offers tutorials,  
samples, guidance on mobile development, and a full API reference.

#### 2. Install GIT
Refer to [official documentation](https://git-scm.com/downloads)

#### 3. Clone the repository

Run the following command:
`git clone https://github.com/usherwaltz/nikolajovic.git`

or if you have setup ssh keys for your account

`git clone git@github.com:usherwaltz/nikolajovic.git`

#### 4. Fetching dependencies and running the build_runner
Run the following commands:

Fetch dependencies:
`flutter pub get`

Generate code as documented in the [freezed package](https://pub.dev/packages/freezed)
`flutter pub run build_runner build`

laterwards, if you make changes to classes annotated with `@freezed`,
you can pass the `--delete-conflicting-outputs` argument to the above command

#### 5. Run the app in web
- run the following command:
  `flutter run -d chrome`
  *Note - I prefer to use google chrome, but you can run the project on different web browsers* 