import 'package:firstapp/api_call/controller/album_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final controller = Get.put(AlbumController()); // init the controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.getAllPost(6);
        },
        child: Text("Click "),
      ),
      appBar: AppBar(
        title: Text("Post page"),
      ),
      body:  Obx(
          ()=> controller.post.value.body==null?const CircularProgressIndicator(): Column(
          children: [
            Card(
              elevation: 1,
              color: Colors.white10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(()=> Text(controller.post.value.id.toString())),
                    const SizedBox(
                      height: 10,
                    ),
                    Obx(()=> Text(controller.post.value.title!)),
                    const SizedBox(
                      height: 10,
                    ),
                    Obx(()=> Text(controller.post.value.body!)),


                  ],
                ),
              ),
            ),

            ElevatedButton(
                onPressed: (){
              controller.createPost();
            }, child: Text("Create Post")),
               
               ElevatedButton(
                onPressed: (){
              controller.updatePost(10);
            }, child: Text("Update Post")),


                    ElevatedButton(
                onPressed: (){
              controller.deletePost(5);
            }, child: Text("Delete Post")),

            
          ],
        ),
      ),
    );
  }
}
