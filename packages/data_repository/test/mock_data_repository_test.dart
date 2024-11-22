import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:data_repository/data_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});

  HttpOverrides.global = _MyHttpOverrides();

  User? userLogged;
  late AuthSession authSession;
  Company? company;
  Document? document;

  final dataRepository = FlesanDataRepository(host: 'https://flesanhost.com');

  group('Complete Flow', () {
    test('fetch companies', () async {
      final result = await dataRepository.companiesRepository.fetchCompanies();

      final companies = result.tryGetSuccess();
      company = companies?.first;

      expect(company != null, true);
    });

    test('Log In with the mock User', () async {
      final result = await dataRepository.authRepository.logInWithCredentials(
        username: 'prueba@gmail.com',
        password: 'password',
        companyId: company!.id,
      );

      final user = result.tryGetSuccess();
      userLogged = user;
      expect(userLogged != null, true);
    });

    test('Save User in AuthSession', () async {
      if (userLogged != null) {
        authSession = AuthSession(user: userLogged!, company: company!);
        await dataRepository.authRepository.saveAuthSession(authSession);
      }
      final fetchSession = await dataRepository.authRepository.getAuthSession();
      expect(fetchSession, authSession);
    });

    test('Fetch documents', () async {
      final result = await dataRepository.documentsRepository.fetchDocuments(
        username: userLogged!.username,
        password: userLogged!.password,
        companyId: company!.id,
        status: DocumentStatus.approved
      );

      final documents = result.tryGetSuccess();
      document = documents?.first;

      expect(documents?.length, 4);
      expect(document != null, true);
    });

    test('Fetch document', () async {
      final result = await dataRepository.documentsRepository.fetchDocument(
        documentId: document!.id,
        documentType: document!.type.value,
        username: userLogged!.username,
        password: userLogged!.password,
        companyId: company!.id,
      );
      final documentResult = result.tryGetSuccess();
      expect(documentResult != null, true);
    });

    test('Fetch attachments', () async {
      final result = await dataRepository.documentsRepository.fetchAttachments(
        documentId: document!.id,
        documentType: document!.type.value,
        username: userLogged!.username,
        password: userLogged!.password,
        companyId: company!.id,
      );

      final attachments = result.tryGetSuccess();

      expect(attachments != null, true);
    });
  });
}

class _MyHttpOverrides extends HttpOverrides {}
