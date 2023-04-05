import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:screenshot/screenshot.dart';
import 'package:universal_html/html.dart';

import '../../utils/utils.dart';

part 'pdf_bloc.freezed.dart';
part 'pdf_event.dart';
part 'pdf_state.dart';

class PDFBloc extends Bloc<PDFEvent, PDFState> {
  PDFBloc() : super(PDFState.initial()) {
    on<PDFGenerated>(_onPDFGenerated);
  }

  void _onPDFGenerated(
    PDFGenerated event,
    Emitter<PDFState> emit,
  ) async {
    try {
      emit(state.copyWith(
        uiAction: BlocStateUIAction.inProgress,
      ));

      await generatePDF(event.widget);

      emit(state.copyWith(
        uiAction: BlocStateUIAction.success,
      ));
    } catch (e) {
      emit(state.copyWith(
        uiAction: BlocStateUIAction.error,
      ));
    }
  }

  Future<void> generatePDF(Widget widget) async {
    final screenshotController = ScreenshotController();
    Uint8List pngImageBytes = await screenshotController.captureFromWidget(
      widget,
      pixelRatio: 1.5,
      targetSize: const Size(Constants.maxWidgetWidth, 2000),
    );

    final pdf = pw.Document();

    final image = pw.MemoryImage(
      pngImageBytes,
    );

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Container(
            child: pw.Image(image),
          );
        },
        margin: const pw.EdgeInsets.all(Constants.pdfMargins),
      ),
    );

    final content = base64Encode(await pdf.save());
    AnchorElement(href: "data:application/octet-stream;charset=utf-16le;base64,$content")
      ..setAttribute("download", "Nikola Jović CV.pdf")
      ..click();
  }
}
