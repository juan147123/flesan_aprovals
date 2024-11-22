class AttachmentsRequestEntity {
  AttachmentsRequestEntity({
    required this.documentId,
    required this.documentType,
    required this.username,
    required this.password,
    required this.companyId,
  });

  final String documentId;
  final String documentType;
  final String username;
  final String password;
  final String companyId;

  Map<String, dynamic> toJson() => {
        'id_doc': documentId,
        'type': documentType,
        'user': username,
        'password': password,
        'company_id': companyId,
      };
}
