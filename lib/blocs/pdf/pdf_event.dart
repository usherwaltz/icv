part of 'pdf_bloc.dart';

@freezed
class PDFEvent with _$PDFEvent {
  const factory PDFEvent.generated({
    required ScreenshotController screenshotController,
    required Widget widget,
  }) = PDFGenerated;
}
