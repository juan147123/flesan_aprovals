import 'dart:async';

import 'package:data_repository/src/core/networking/networkException.dart';
import 'package:data_repository/src/modules/companies_repository/companies_repository.dart';
import 'package:data_repository/src/modules/companies_repository/models/models.dart';
import 'package:multiple_result/multiple_result.dart';

class MockCompaniesRepository implements CompaniesRepository {
  @override
  Future<Result<List<Company>, NetworkException>> fetchCompanies() async {
    await Future.delayed(const Duration(seconds: 2));
    return Future.value(Result.success(_MockData.companies()));
  }
}

class _MockData {
  static List<Company> companies() => [
        const Company(
          id: '1',
          name: 'Flesan',
          thumbnailUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWgD5W_3MUq7WylY-bTJd7vs7t2yKWRTW9RuTduCuW_spOiFJ-lFzazT2oulcTOJVByp4&usqp=CAU',
          logoUrl:
              'https://www.logodesign.net/logo/line-art-house-roof-and-buildings-4485ld.png',
          backgroundUrl:
              'https://flesan.com.pe/wp-content/uploads/Boulevard-Qoyllur-4.jpg',
        ),
        const Company(
          id: '2',
          name: 'DVC',
          thumbnailUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWgD5W_3MUq7WylY-bTJd7vs7t2yKWRTW9RuTduCuW_spOiFJ-lFzazT2oulcTOJVByp4&usqp=CAU',
          logoUrl:
              'https://www.logodesign.net/logo/line-art-house-roof-and-buildings-4485ld.png',
          backgroundUrl:
              'https://flesan.com.pe/wp-content/uploads/Boulevard-Qoyllur-4.jpg',
        ),
        const Company(
          id: '3',
          name: 'FaInmobiliaria',
          thumbnailUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWgD5W_3MUq7WylY-bTJd7vs7t2yKWRTW9RuTduCuW_spOiFJ-lFzazT2oulcTOJVByp4&usqp=CAU',
          logoUrl:
              'https://www.logodesign.net/logo/line-art-house-roof-and-buildings-4485ld.png',
          backgroundUrl:
              'https://flesan.com.pe/wp-content/uploads/Boulevard-Qoyllur-4.jpg',
        ),
        const Company(
          id: '4',
          name: 'FaInmobiliaria',
          thumbnailUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWgD5W_3MUq7WylY-bTJd7vs7t2yKWRTW9RuTduCuW_spOiFJ-lFzazT2oulcTOJVByp4&usqp=CAU',
          logoUrl:
              'https://www.logodesign.net/logo/line-art-house-roof-and-buildings-4485ld.png',
          backgroundUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWgD5W_3MUq7WylY-bTJd7vs7t2yKWRTW9RuTduCuW_spOiFJ-lFzazT2oulcTOJVByp4&usqp=CAU',
        ),
      ];
}
