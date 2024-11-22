import 'dart:convert';

import 'package:data_repository/src/core/networking/networkException.dart';
import 'package:data_repository/src/modules/documents_repository/documents_repository.dart';
import 'package:multiple_result/multiple_result.dart';

import 'models/models.dart';

class MockDocumentsRepository implements DocumentsRepository {
  @override
  Future<Result<List<Document>, NetworkException>> fetchDocuments({
    required String username,
    required String password,
    required String companyId,
    required DocumentStatus status,
  }) async {
    await Future.delayed(const Duration(seconds: 2));
    return Future.value(
      Success(
        (await _MockData.getDocuments()).where((document) => document.status == status).toList(),
      ),
    );
  }

  @override
  Future<Result<Document, NetworkException>> fetchDocument({
    required String documentId,
    required String documentType,
    required String username,
    required String password,
    required String companyId,
  }) async {
    await Future.delayed(const Duration(seconds: 2));
    return Future.value(Success(await _MockData.getDocument()));
  }

  @override
  Future<Result<List<Attachment>, NetworkException>> fetchAttachments({
    required String documentId,
    required String documentType,
    required String username,
    required String password,
    required String companyId,
  }) async {
    await Future.delayed(const Duration(seconds: 2));
    return Future.value(Success(await _MockData.getAttachments()));
  }

  @override
  Future<Result<String, NetworkException>> approveDocument({
    required String documentId,
    required String documentType,
    required String username,
    required String password,
    required String companyId,
    required String? note,
  }) async {
    await Future.delayed(const Duration(seconds: 2));
    return Future.value(const Success('Success'));
  }

  @override
  Future<Result<String, NetworkException>> rejectDocument({
    required String documentId,
    required String documentType,
    required String username,
    required String password,
    required String companyId,
    required String note,
  }) async {
    await Future.delayed(const Duration(seconds: 2));
    return Future.value(const Success('Success'));
  }
}

class _MockData {
  static Future<List<Document>> getDocuments() async {
    return [
      const Document(
        id: 'N000001',
        status: DocumentStatus.pending,
        type: DocumentType.order,
        number: '658952321',
        project: 'DVL106',
        provider: 'P15431194357',
        description:
            'descripcion, lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        fields: [
          DocumentField(
              field: DocumentFieldType.supplierCode, value: 'P6922655322'),
          DocumentField(
              field: DocumentFieldType.supplierName,
              value: 'W&HINVESTMENTE SAC'),
          DocumentField(
              field: DocumentFieldType.contact, value: 'Heleana Hernandez'),
          DocumentField(
              field: DocumentFieldType.paymentCondition,
              value: 'Crédito 60 días'),
          DocumentField(
              field: DocumentFieldType.costCenter, value: 'Direccion'),
          DocumentField(
              field: DocumentFieldType.accountingDate, value: '19/01/2023'),
          DocumentField(
              field: DocumentFieldType.deliveryDate, value: '12/01/2023'),
          DocumentField(
              field: DocumentFieldType.documentDate, value: '19/01/2023'),
        ],
        items: [
          DocumentItem(
            quantity: 1,
            description: 'Prueba de descarte COVID 19',
            unitPrice: 'S/ 95.00',
            totalPrice: 'S/ 95.00',
          ),
          DocumentItem(
            quantity: 1,
            description: 'Servicio de examen ocupacional',
            unitPrice: 'S/ 35.00',
            totalPrice: 'S/ 35.00',
          ),
          DocumentItem(
            quantity: 1,
            description: 'Prueba de descarte COVID 19',
            unitPrice: 'S/ 95.00',
            totalPrice: 'S/ 95.00',
          ),
          DocumentItem(
            quantity: 1,
            description: 'Servicio de examen ocupacional',
            unitPrice: 'S/ 35.00',
            totalPrice: 'S/ 35.00',
          ),
          DocumentItem(
            quantity: 1,
            description: 'Prueba de descarte COVID 19',
            unitPrice: 'S/ 95.00',
            totalPrice: 'S/ 95.00',
          ),
          DocumentItem(
            quantity: 1,
            description: 'Servicio de examen ocupacional',
            unitPrice: 'S/ 35.00',
            totalPrice: 'S/ 35.00',
          )
        ],
        amounts: DocumentAmount(
          beforeDiscount: 'S/ 94.00',
          discount: 'S/ 13.00',
          tax: 'S/ 24.00',
          total: 'S/ 134.00',
        ),
        note: null,
      ),
      const Document(
        id: 'N000002',
        status: DocumentStatus.approved,
        type: DocumentType.offer,
        number: '986352321',
        project: 'DVL106',
        provider: 'P15431194357',
        description:
            'descripcion, lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        fields: [
          DocumentField(
              field: DocumentFieldType.supplierCode, value: 'P6922655322'),
          DocumentField(
              field: DocumentFieldType.supplierName,
              value: 'W&HINVESTMENTE SAC'),
          DocumentField(
              field: DocumentFieldType.contact, value: 'Heleana Hernandez'),
          DocumentField(
              field: DocumentFieldType.paymentCondition,
              value: 'Crédito 60 días'),
          DocumentField(
              field: DocumentFieldType.costCenter, value: 'Direccion'),
          DocumentField(
              field: DocumentFieldType.accountingDate, value: '19/01/2023'),
          DocumentField(
              field: DocumentFieldType.deliveryDate, value: '12/01/2023'),
          DocumentField(
              field: DocumentFieldType.documentDate, value: '19/01/2023'),
        ],
        items: [
          DocumentItem(
              quantity: 0,
              description: '',
              unitPrice: 'S/ 0.00',
              totalPrice: 'S/ 0.00')
        ],
        amounts: DocumentAmount(
          beforeDiscount: 'S/ 0.00',
          discount: 'S/ 0.00',
          tax: 'S/ 0.00',
          total: 'S/ 0.00',
        ),
        note: 'Prueba nota!',
      ),
      const Document(
        id: 'N000003',
        status: DocumentStatus.pending,
        type: DocumentType.entry,
        number: '156852321',
        project: 'DVL106',
        provider: 'P15431194357',
        description:
            'descripcion, lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        fields: [
          DocumentField(
              field: DocumentFieldType.supplierCode, value: 'P6922655322'),
          DocumentField(
              field: DocumentFieldType.supplierName,
              value: 'W&HINVESTMENTE SAC'),
          DocumentField(
              field: DocumentFieldType.contact, value: 'Heleana Hernandez'),
          DocumentField(
              field: DocumentFieldType.paymentCondition,
              value: 'Crédito 60 días'),
          DocumentField(
              field: DocumentFieldType.costCenter, value: 'Direccion'),
          DocumentField(
              field: DocumentFieldType.accountingDate, value: '19/01/2023'),
          DocumentField(
              field: DocumentFieldType.deliveryDate, value: '12/01/2023'),
          DocumentField(
              field: DocumentFieldType.documentDate, value: '19/01/2023'),
        ],
        items: [
          DocumentItem(
            quantity: 0,
            description: '',
            unitPrice: 'S/ 0.00',
            totalPrice: 'S/ 0.00',
          ),
        ],
        amounts: DocumentAmount(
            beforeDiscount: 'S/ 0.00',
            discount: 'S/ 0.00',
            tax: 'S/ 0.00',
            total: 'S/ 0.00'),
        note: '',
      ),
      const Document(
        id: 'N000004',
        status: DocumentStatus.pending,
        type: DocumentType.invoice,
        number: '654152321',
        project: 'DVL106',
        provider: 'P15431194357',
        description:
            'descripcion, lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        fields: [
          DocumentField(
              field: DocumentFieldType.supplierCode, value: 'P6922655322'),
          DocumentField(
              field: DocumentFieldType.supplierName,
              value: 'W&HINVESTMENTE SAC'),
          DocumentField(
              field: DocumentFieldType.contact, value: 'Heleana Hernandez'),
          DocumentField(
              field: DocumentFieldType.paymentCondition,
              value: 'Crédito 60 días'),
          DocumentField(
              field: DocumentFieldType.costCenter, value: 'Direccion'),
          DocumentField(
              field: DocumentFieldType.accountingDate, value: '19/01/2023'),
          DocumentField(
              field: DocumentFieldType.deliveryDate, value: '12/01/2023'),
          DocumentField(
              field: DocumentFieldType.documentDate, value: '19/01/2023'),
        ],
        items: [
          DocumentItem(
            quantity: 0,
            description: '',
            unitPrice: 'S/ 0.00',
            totalPrice: 'S/ 0.00',
          )
        ],
        amounts: DocumentAmount(
          beforeDiscount: 'S/ 0.00',
          discount: 'S/ 0.00',
          tax: 'S/ 0.00',
          total: 'S/ 0.00',
        ),
        note: '',
      ),
    ];
  }

  static Future<Document> getDocument() async {
    return const Document(
      id: 'N000001',
      status: DocumentStatus.approved,
      type: DocumentType.order,
      number: '658952321',
      project: 'DVL106',
      provider: 'P15431194357',
      description:
          'descripcion, lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      fields: [
        DocumentField(
            field: DocumentFieldType.supplierCode, value: 'P6922655322'),
        DocumentField(
            field: DocumentFieldType.supplierName, value: 'W&HINVESTMENTE SAC'),
        DocumentField(
            field: DocumentFieldType.contact, value: 'Heleana Hernandez'),
        DocumentField(
            field: DocumentFieldType.paymentCondition,
            value: 'Crédito 60 días'),
        DocumentField(field: DocumentFieldType.costCenter, value: 'Direccion'),
        DocumentField(
            field: DocumentFieldType.accountingDate, value: '19/01/2023'),
        DocumentField(
            field: DocumentFieldType.deliveryDate, value: '12/01/2023'),
        DocumentField(
            field: DocumentFieldType.documentDate, value: '19/01/2023'),
      ],
      items: [
        DocumentItem(
          quantity: 1,
          description: 'Prueba de descarte COVID 19',
          unitPrice: 'S/ 95.00',
          totalPrice: 'S/ 95.00',
        ),
        DocumentItem(
          quantity: 1,
          description: 'Servicio de examen ocupacional',
          unitPrice: 'S/ 35.00',
          totalPrice: 'S/ 35.00',
        )
      ],
      amounts: DocumentAmount(
        beforeDiscount: 'S/ 94.00',
        discount: 'S/ 13.00',
        tax: 'S/ 24.00',
        total: 'S/ 134.00',
      ),
      note: null,
    );
  }

  static Future<List<Attachment>> getAttachments() async {
    const content =
        'JVBERi0xLjcNCiW1tbW1DQoxIDAgb2JqDQo8PC9UeXBlL0NhdGFsb2cvUGFnZXMgMiAwIFIvTGFuZyhlcy1QRSkgL1N0cnVjdFRyZWVSb290IDE1IDAgUi9NYXJrSW5mbzw8L01hcmtlZCB0cnVlPj4vTWV0YWRhdGEgMjkgMCBSL1ZpZXdlclByZWZlcmVuY2VzIDMwIDAgUj4+DQplbmRvYmoNCjIgMCBvYmoNCjw8L1R5cGUvUGFnZXMvQ291bnQgMS9LaWRzWyAzIDAgUl0gPj4NCmVuZG9iag0KMyAwIG9iag0KPDwvVHlwZS9QYWdlL1BhcmVudCAyIDAgUi9SZXNvdXJjZXM8PC9Gb250PDwvRjEgNSAwIFIvRjIgMTIgMCBSPj4vRXh0R1N0YXRlPDwvR1MxMCAxMCAwIFIvR1MxMSAxMSAwIFI+Pi9Qcm9jU2V0Wy9QREYvVGV4dC9JbWFnZUIvSW1hZ2VDL0ltYWdlSV0gPj4vTWVkaWFCb3hbIDAgMCA2MTIgNzkyXSAvQ29udGVudHMgNCAwIFIvR3JvdXA8PC9UeXBlL0dyb3VwL1MvVHJhbnNwYXJlbmN5L0NTL0RldmljZVJHQj4+L1RhYnMvUy9TdHJ1Y3RQYXJlbnRzIDA+Pg0KZW5kb2JqDQo0IDAgb2JqDQo8PC9GaWx0ZXIvRmxhdGVEZWNvZGUvTGVuZ3RoIDIxOT4+DQpzdHJlYW0NCnicpZDNCsIwEITvgbzDHFUw3Y3aWggFjVUUPUgLHsSDB+3J4s/7g9tWqKI3Awk73+yGZBBk12MJ54KNX85AwfpYFuicHv006yYJpjOPm1ZkqFoxWxBCOaPY4n7SatdDqdU01yqYM5gNDZGftWLpIzDGI8OCIiYTiXORvkXGhOIhl6JoJL/kQqu9IyZLzJNkKGXoE0svFHrZ89aKW1TbomN6m2ysCtd2Mxm6T1TVgkeuvUjkAflKq1R+tdUK6cYDnznxPznZHzlZGpgxv+dUp9Nk0kH3+0VPTTlawA0KZW5kc3RyZWFtDQplbmRvYmoNCjUgMCBvYmoNCjw8L1R5cGUvRm9udC9TdWJ0eXBlL1R5cGUwL0Jhc2VGb250L0JDREVFRStDYWxpYnJpL0VuY29kaW5nL0lkZW50aXR5LUgvRGVzY2VuZGFudEZvbnRzIDYgMCBSL1RvVW5pY29kZSAyNSAwIFI+Pg0KZW5kb2JqDQo2IDAgb2JqDQpbIDcgMCBSXSANCmVuZG9iag0KNyAwIG9iag0KPDwvQmFzZUZvbnQvQkNERUVFK0NhbGlicmkvU3VidHlwZS9DSURGb250VHlwZTIvVHlwZS9Gb250L0NJRFRvR0lETWFwL0lkZW50aXR5L0RXIDEwMDAvQ0lEU3lzdGVtSW5mbyA4IDAgUi9Gb250RGVzY3JpcHRvciA5IDAgUi9XIDI3IDAgUj4+DQplbmRvYmoNCjggMCBvYmoNCjw8L09yZGVyaW5nKElkZW50aXR5KSAvUmVnaXN0cnkoQWRvYmUpIC9TdXBwbGVtZW50IDA+Pg0KZW5kb2JqDQo5IDAgb2JqDQo8PC9UeXBlL0ZvbnREZXNjcmlwdG9yL0ZvbnROYW1lL0JDREVFRStDYWxpYnJpL0ZsYWdzIDMyL0l0YWxpY0FuZ2xlIDAvQXNjZW50IDc1MC9EZXNjZW50IC0yNTAvQ2FwSGVpZ2h0IDc1MC9BdmdXaWR0aCA1MjEvTWF4V2lkdGggMTc0My9Gb250V2VpZ2h0IDQwMC9YSGVpZ2h0IDI1MC9TdGVtViA1Mi9Gb250QkJveFsgLTUwMyAtMjUwIDEyNDAgNzUwXSAvRm9udEZpbGUyIDI2IDAgUj4+DQplbmRvYmoNCjEwIDAgb2JqDQo8PC9UeXBlL0V4dEdTdGF0ZS9CTS9Ob3JtYWwvY2EgMT4+DQplbmRvYmoNCjExIDAgb2JqDQo8PC9UeXBlL0V4dEdTdGF0ZS9CTS9Ob3JtYWwvQ0EgMT4+DQplbmRvYmoNCjEyIDAgb2JqDQo8PC9UeXBlL0ZvbnQvU3VidHlwZS9UcnVlVHlwZS9OYW1lL0YyL0Jhc2VGb250L0JDREZFRStDYWxpYnJpL0VuY29kaW5nL1dpbkFuc2lFbmNvZGluZy9Gb250RGVzY3JpcHRvciAxMyAwIFIvRmlyc3RDaGFyIDMyL0xhc3RDaGFyIDMyL1dpZHRocyAyOCAwIFI+Pg0KZW5kb2JqDQoxMyAwIG9iag0KPDwvVHlwZS9Gb250RGVzY3JpcHRvci9Gb250TmFtZS9CQ0RGRUUrQ2FsaWJyaS9GbGFncyAzMi9JdGFsaWNBbmdsZSAwL0FzY2VudCA3NTAvRGVzY2VudCAtMjUw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ZGMvZWxlbWVudHMvMS4xLyI+CjxkYzpjcmVhdG9yPjxyZGY6U2VxPjxyZGY6bGk+YWxlamFuZHJvIGphcmE8L3JkZjpsaT48L3JkZjpTZXE+PC9kYzpjcmVhdG9yPjwvcmRmOkRlc2NyaXB0aW9uPgo8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiAgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIj4KPHhtcDpDcmVhdG9yVG9vbD5NaWNyb3NvZnTCriBXb3JkIDIwMTY8L3htcDpDcmVhdG9yVG9vbD48eG1wOkNyZWF0ZURhdGU+MjAyMy0wMy0yNFQwOToyMTo1MC0wNTowMDwveG1wOkNyZWF0ZURhdGU+PHhtcDpNb2RpZnlEYXRlPjIwMjMtMDMtMjRUMDk6MjE6NTAtMDU6MDA8L3htcDpNb2RpZnlEYXRlPjwvcmRmOkRlc2NyaXB0aW9uPgo8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiAgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iPgo8eG1wTU06RG9jdW1lbnRJRD51dWlkOjNEMTZBODQ3LTc3QkEtNDZCOS05OUUwLUM2QTU0QjM1MUM4NzwveG1wTU06RG9jdW1lbnRJRD48eG1wTU06SW5zdGFuY2VJRD51dWlkOjNEMTZBODQ3LTc3QkEtNDZCOS05OUUwLUM2QTU0QjM1MUM4NzwveG1wTU06SW5zdGFuY2VJRD48L3JkZjpEZXNjcmlwdGlvbj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCjwvcmRmOlJERj48L3g6eG1wbWV0YT48P3hwYWNrZXQgZW5kPSJ3Ij8+DQplbmRzdHJlYW0NCmVuZG9iag0KMzAgMCBvYmoNCjw8L0Rpc3BsYXlEb2NUaXRsZSB0cnVlPj4NCmVuZG9iag0KMzEgMCBvYmoNCjw8L1R5cGUvWFJlZi9TaXplIDMxL1dbIDEgNCAyXSAvUm9vdCAxIDAgUi9JbmZvIDE0IDAgUi9JRFs8NDdBODE2M0RCQTc3Qjk0Njk5RTBDNkE1NEIzNTFDODc+PDQ3QTgxNjNEQkE3N0I5NDY5OUUwQzZBNTRCMzUxQzg3Pl0gL0ZpbHRlci9GbGF0ZURlY29kZS9MZW5ndGggMTE2Pj4NCnN0cmVhbQ0KeJxjYACC//8ZgaQgAwOIWgah7oEpxi9gilkSQs2GUNvBFEsIhJoLplh7INQhCPUDTLEtBFPsExkYmIBmijOwQChWCMUGodghFDOEYoJQUA0cQO0cpTAeI5DHZQQ2k7saTCXvBlMpahDKEUwVAN0CAKBmECwNCmVuZHN0cmVhbQ0KZW5kb2JqDQp4cmVmDQowIDMyDQowMDAwMDAwMDE1IDY1NTM1IGYNCjAwMDAwMDAwMTcgMDAwMDAgbg0KMDAwMDAwMDE2NiAwMDAwMCBuDQowMDAwMDAwMjIyIDAwMDAwIG4NCjAwMDAwMDA1MDAgMDAwMDAgbg0KMDAwMDAwMDc5MyAwMDAwMCBuDQowMDAwMDAwOTIzIDAwMDAwIG4NCjAwMDAwMDA5NTEgMDAwMDAgbg0KMDAwMDAwMTEwOCAwMDAwMCBuDQowMDAwMDAxMTgxIDAwMDAwIG4NCjAwMDAwMDE0MjAgMDAwMDAgbg0KMDAwMDAwMTQ3NCAwMDAwMCBuDQowMDAwMDAxNTI4IDAwMDAwIG4NCjAwMDAwMDE2OTcgMDAwMDAgbg0KMDAwMDAwMTkzNyAwMDAwMCBuDQowMDAwMDAwMDE2IDY1NTM1IGYNCjAwMDAwMDAwMTcgNjU1MzUgZg0KMDAwMDAwMDAxOCA2NTUzNSBmDQowMDAwMDAwMDE5IDY1NTM1IGYNCjAwMDAwMDAwMjAgNjU1MzUgZg0KMDAwMDAwMDAyMSA2NTUzNSBmDQowMDAwMDAwMDIyIDY1NTM1IGYNCjAwMDAwMDAwMjMgNjU1MzUgZg0KMDAwMDAwMDAyNCA2NTUzNSBmDQowMDAwMDAwMDAwIDY1NTM1IGYNCjAwMDAwMDI2MTAgMDAwMDAgbg0KMDAwMDAwMjkzOSAwMDAwMCBuDQowMDAwMDI1NTMxIDAwMDAwIG4NCjAwMDAwMjU2MzggMDAwMDAgbg0KMDAwMDAyNTY2NSAwMDAwMCBuDQowMDAwMDI4ODEyIDAwMDAwIG4NCjAwMDAwMjg4NTcgMDAwMDAgbg0KdHJhaWxlcg0KPDwvU2l6ZSAzMi9Sb290IDEgMCBSL0luZm8gMTQgMCBSL0lEWzw0N0E4MTYzREJBNzdCOTQ2OTlFMEM2QTU0QjM1MUM4Nz48NDdBODE2M0RCQTc3Qjk0Njk5RTBDNkE1NEIzNTFDODc+XSA+Pg0Kc3RhcnR4cmVmDQoyOTE3NA0KJSVFT0YNCnhyZWYNCjAgMA0KdHJhaWxlcg0KPDwvU2l6ZSAzMi9Sb290IDEgMCBSL0luZm8gMTQgMCBSL0lEWzw0N0E4MTYzREJBNzdCOTQ2OTlFMEM2QTU0QjM1MUM4Nz48NDdBODE2M0RCQTc3Qjk0Njk5RTBDNkE1NEIzNTFDODc+XSAvUHJldiAyOTE3NC9YUmVmU3RtIDI4ODU3Pj4NCnN0YXJ0eHJlZg0KMjk5NzENCiUlRU9G';
    final pdfData = base64.decode(content);

    return [
      Attachment(
        id: 'doc_001',
        name: 'Archivo adjunto 001',
        description: '18/02/2020',
        pdfData: pdfData,
      ),
      Attachment(
        id: 'doc_002',
        name: 'Archivo adjunto 002',
        description: '18/02/2020',
        pdfData: pdfData,
      ),
    ];
  }
}
