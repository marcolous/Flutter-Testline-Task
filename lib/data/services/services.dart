import 'package:dio/dio.dart';
import 'package:testline_task/models/question_model.dart';

class Services {
  final Dio _dio = Dio();
  final url = 'https://api.jsonserve.com/Uw5CrX';

  Future<QuizModel?> getQuestions() async {
    try {
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        return QuizModel.fromJson(response.data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}
