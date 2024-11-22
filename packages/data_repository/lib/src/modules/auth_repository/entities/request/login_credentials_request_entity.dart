class LoginCredentialsRequestEntity {
  LoginCredentialsRequestEntity({
    required this.username,
    required this.password,
    required this.companyId,
  });

  final String username;
  final String password;
  final String companyId;

  Map<String, dynamic> toJson() => {
        'user': username,
        'password': password,
        'company_id': companyId,
      };
}
