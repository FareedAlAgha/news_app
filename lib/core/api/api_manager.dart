import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/core/model/NewsResponse.dart';
import 'package:news_app/core/model/SourcesResponse.dart';

class ApiManager{
  static const String baseUrl = 'newsapi.org';
  static const String apiKey = '3403611c1b544ef08b2e0f9e7ed63b03';


 static Future<SourcesResponse> getSources(String categoryID) async{
      var url = Uri.https(baseUrl , '/v2/top-headlines/sources' , {
        'apiKey':apiKey ,
        'category':categoryID,

      });
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
        return  SourcesResponse.fromJson(json);


  }

  static Future<NewsResponse> getNews(String sourceId)async{
      var url = Uri.https(baseUrl , 'v2/everything' ,
      {
        'apiKey' : apiKey ,
        'sources' : sourceId,

      });
      var response = await http.get(url);
      return NewsResponse.fromJson(jsonDecode(response.body));


  }

}