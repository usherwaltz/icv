part of 'pdf_bloc.dart';

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
