import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  ImagePicker imagePicker = ImagePicker();
  late String filePath = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(

              width: 350,
              decoration: BoxDecoration(
                  color: Colors.amber,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    filePath==""?SizedBox.shrink():    Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(150),
                            child: Image.file(File(filePath),height: 150,width: 150,)),

                        const Positioned(
                          right: 15,
                            child: Icon(Icons.camera))
                      ],
                    ),

                    ElevatedButton(onPressed: ()async{
                      XFile? file = await imagePicker.pickImage(source: ImageSource.camera);
                      setState(() {
                        filePath = file!.path;
                      });

                    }, child: Text("Pick image from Camera")),

             ElevatedButton(onPressed: (){
                     final file = imagePicker.pickImage(source: ImageSource.gallery);
                     print(file);
                    }, child: Text("Pick image from Gallery")),


                        ElevatedButton(onPressed: ()async{
                      XFile? file = await imagePicker.pickVideo(source: ImageSource.camera);
                      setState(() {
                        filePath = file!.path;
                      });

                    }, child: Text("Pick video from Camera")),

             ElevatedButton(onPressed: (){
                     final file = imagePicker.pickVideo(source: ImageSource.gallery);
                     print(file);
                    }, child: Text("Pick video from Gallery"))




                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
