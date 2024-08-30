import 'dart:convert';

import 'package:flutter_application_1/post_model.dart';
import 'package:http/http.dart' as http;

class Apicall{
  List<Post> parsePosts(String responseBody){
    final parsed=jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Post>((json)=>Post.fromJson(json)).tolist();
  }





  Future<List<Post>> fetchPosts()async{
    final response=
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if(response.statusCode ==200){
      return parsePosts(response.body);

    }else{
      throw Exception('failed to load posts');
    }
  }
}