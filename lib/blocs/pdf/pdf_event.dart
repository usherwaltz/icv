part of 'pdf_bloc.dart';

/// All 'event' and 'state' classes in this project used the 'freezed' package.
/// Being there is no strict standard or convention for defining events and states in BLoC pattern,
/// I decided to use the 'freezed' package to enhance the readability and simplicity of the code.
@freezed
class PDFEvent with _$PDFEvent {
  const factory PDFEvent.generated({
    required Widget widget,
    required BuildContext context,
  }) = PDFGenerated;
}
