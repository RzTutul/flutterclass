import 'package:firstapp/global_helper.dart';
import 'package:get/get.dart';

import '../model/post_response.dart';
import '../repository/album_repository.dart';

class AlbumController extends GetxController
{
  final albumRepo = Album();
  final post = PostResponse().obs;

  getAlbum()async
  {
    String token = HelperUtils.getJWTToken();

    final response =await albumRepo.fetchAlbum();
    print(response.body);
  }

    getAllPost(int postID)async
  {
    final response =await albumRepo.fetchPost(postID);
    post.value = response;
  }

  createPost()async
  {


    final createResponse = await albumRepo.createPost("Rechard", "He is good student!");
    HelperUtils.storeJWT("xyxfdlsakfljdkasjlfkdsa");
  }

  updatePost(int postID)async{

    final response = await albumRepo.updatePost(postID, "Rz Tutul", "Testing bodyyyuyy ");
    print(response);
  }
    deletePost(int postID)async{
    await albumRepo.deletePost(postID);

  }




  @override
  void onInit() {
    getAllPost(1);
    super.onInit();
  }
}