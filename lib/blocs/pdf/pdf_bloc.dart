import 'dart:convert';

import 'package:flutter/cupertino.dart';
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

/// This class is responsible for generating PDF file from the widget.
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

      await _generatePDF(event.widget, event.context);

      emit(state.copyWith(
        uiAction: BlocStateUIAction.success,
      ));
    } catch (e) {
      emit(state.copyWith(
        uiAction: BlocStateUIAction.error,
      ));
    }
  }

  Future<void> _generatePDF(Widget widget, BuildContext context) async {
    try {
      final screenshotController = ScreenshotController();
      Uint8List pngImageBytes = await screenshotController.captureFromWidget(
        widget,
        context: context,
        pixelRatio: 2.0,
        targetSize: const Size(SizeUtils.maxWidgetWidth, 2300),
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
          margin: const pw.EdgeInsets.all(SizeUtils.pdfMargins),
        ),
      );

      final file = await pdf.save();

      final content = base64Encode(file);

      // create anchor element to enable file download on web
      final anchor = AnchorElement(href: "data:application/octet-stream;charset=utf-16le;base64,$content");
      anchor.target = "_blank";
      anchor.download = "Nikola Jović CV.pdf";
      anchor.click();
      anchor.remove();
    } catch (e) {
      rethrow;
    }
  }
}
