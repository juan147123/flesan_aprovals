import 'dart:io';
import 'dart:typed_data';
import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/ui_commons/app_bar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart'; // Asegúrate de tener esta importación
import 'package:path_provider/path_provider.dart'; // Importa path_provider
import 'package:path/path.dart' as path; // Para manejar las rutas de los archivos

import '../../../localization/localizations.dart';
import '../../../ui_commons/no_data_widget.dart';

class AttachmentView extends StatefulWidget {
  const AttachmentView({
    super.key,
    required this.attachment,
  });

  final Attachment attachment;

  @override
  _AttachmentViewState createState() => _AttachmentViewState();
}

class _AttachmentViewState extends State<AttachmentView> {
  String? _pdfFilePath;

  @override
  void initState() {
    super.initState();
    // Si el PDF no es nulo, guarda los datos en un archivo temporal
    if (widget.attachment.pdfData != null) {
      _savePdfDataToFile(widget.attachment.pdfData!);
    }
  }

  // Función para guardar el archivo PDF en una ruta temporal
  Future<void> _savePdfDataToFile(Uint8List pdfData) async {
    try {
      // Obtén el directorio temporal
      final directory = await getTemporaryDirectory();
      final filePath = path.join(directory.path, 'attachment.pdf');

      // Crea el archivo temporal y escribe los datos del PDF
      final file = File(filePath);
      await file.writeAsBytes(pdfData);

      // Actualiza el estado con la ruta del archivo
      setState(() {
        _pdfFilePath = filePath;
      });
    } catch (e) {
      // Manejo de errores si ocurre algún problema al guardar el archivo
      print('Error al guardar el archivo PDF: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBarWidget(text: widget.attachment.name),
        Expanded(
          child: (_pdfFilePath == null
              ? NoDataWidget(
                  text: AppLocalizations.of(context)!.attachmentNoData,
                )
              : PDFView(
                  filePath: _pdfFilePath, // Usamos la ruta del archivo temporal
                )),
        ),
      ],
    );
  }
}
