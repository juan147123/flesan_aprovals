class DocumentsRequestEntity {
  DocumentsRequestEntity({
    required this.username,
    required this.password,
    required this.companyId,
    required this.status,
  });

  final String username;
  final String password;
  final String companyId;
  final int status;

  Map<String, dynamic> toJson() => {
        'user': username,
        'password': password,
        'company_id': companyId,
        'status': status,
      };
}
