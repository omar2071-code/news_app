import 'package:dio/dio.dart';
import 'package:news/models/artical_model.dart';

class NewServices {
  final Dio dio;
  NewServices(this.dio);
  Future<List<Articalmodel>> getTopHeadlinesNews({
    required String category,
  }) async {
    Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=633fc9bdc37240119ae4821df00d8f72&category=$category',
    );
    Map<String, dynamic> jsonData = response.data;
    print(jsonData['articles']);
    List<dynamic> articles = jsonData['articles'];
    print(articles);
    List<Articalmodel> articalList = [];
    for (var article in articles) {
      Articalmodel articalmodel = Articalmodel.fromJson(article);
      articalList.add(articalmodel);
    }
    return articalList;
  }
}
