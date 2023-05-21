import 'dart:convert';

import 'package:firstapp/api_call/api_client.dart';
import 'package:firstapp/api_call/model/post_response.dart';
import 'package:http/http.dart' as http;

abstract class AlbumRepo {
  Future<http.Response> fetchAlbum();
  Future<PostResponse> fetchPost(int postID); //Get
  Future<PostResponse> createPost(String title,String body); //Post
  Future<PostResponse> updatePost(int postID, String title,String body); //Post
  Future<void> deletePost(int postID); //Post

}


class Album implements AlbumRepo
{
  @override
  Future<http.Response> fetchAlbum()async {
    return http.get(Uri.parse('${APIClient.BASE_URL}/albums/1'));
  }

  @override
  Future<PostResponse> fetchPost(int postID) async{
    var postResponse;
    final response = await http.get(Uri.parse('${APIClient.BASE_URL}/posts/${postID}'));

    if(response.statusCode==200)
      {
        PostResponse postResponse = PostResponse.fromJson(response.body);
        return postResponse;
      }
    else
      {
        return postResponse;
      }


    throw UnimplementedError();
  }

  @override
  Future<PostResponse> createPost(String title, String body) async{

    final response = await http.post(Uri.parse('${APIClient.BASE_URL}/posts'),
    headers: {
      'Content-Type':'application/json; charset=UTF-8'
    },
      body: jsonEncode(
        {
          "title":title,
          "body":body,
        }
      )
    );
    print(response.body);
  if(response.statusCode==200)
    {
      PostResponse postResponse = PostResponse.fromJson(response.body);
      return postResponse;
    }

    // TODO: implement createPost
    throw UnimplementedError();
  }

  @override
  Future<PostResponse> updatePost(int postID, String title, String body)async {
    final response = await http.put(Uri.parse('${APIClient.BASE_URL}/posts/${postID}'),
        headers: {
          'Content-Type':'application/json; charset=UTF-8'
        },
        body: jsonEncode(
            {
              "title":title,
              "body":body,
            }
        )
    );
    print(response.body);
    if(response.statusCode==200)
    {
      PostResponse postResponse = PostResponse.fromJson(response.body);
      return postResponse;
    }

    // TODO: implement createPost
    throw UnimplementedError();
  }

  @override
  Future<void> deletePost(int postID)async {
      final response = await http.delete(Uri.parse('${APIClient.BASE_URL}/posts/${postID}'),
        headers: {
          'Content-Type':'application/json; charset=UTF-8'
        },
    );
    print(response.body.isNotEmpty);
    print(response.body.toString());
    if(response.statusCode==200)
    {

    }

  }


}