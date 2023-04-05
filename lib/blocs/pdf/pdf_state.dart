part of 'pdf_bloc.dart';

/// All 'event' and 'state' classes in this project used the 'freezed' package.
/// Being there is no strict standard or convention for defining events and states in BLoC pattern,
/// I decided to use the 'freezed' package to enhance the readability and simplicity of the code.
@freezed
class PDFState with _$PDFState {
  const factory PDFState({
    required BlocStateUIAction uiAction,
  }) = _PDFState;

  factory PDFState.initial() {
    return const PDFState(
      uiAction: BlocStateUIAction.initial,
    );
  }
}
