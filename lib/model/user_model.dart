class UserModel
{
  String? name;
  String? phone;
  String? imageUrl;

  UserModel(this.name,this.phone, this.imageUrl); //Positional




 static List<UserModel> getUserInfo() //function
  {
    List<UserModel> list = [
      UserModel("Rz Tutul","01924250146","https://picsum.photos/id/237/200/300"),
      UserModel("Richard","05616565465","https://picsum.photos/seed/picsum/200/300"),
      UserModel("Rashed","05616565465","https://picsum.photos/200/300?grayscale"),
    ];

    return list;
  }
}

class UserModelOptional
{
  String? name;
  String? phone;
  String? imageUrl;
  String? moment;

  UserModelOptional({this.name, this.phone, this.imageUrl}); // Optional Parameters




 static List<UserModelOptional> getUserInfo() //function
  {
    List<UserModelOptional> list = [
      UserModelOptional(name: "Rz Tutul",phone: "01924250146"),
      UserModelOptional(name: "Richard",phone: "05616565465",imageUrl: "https://picsum.photos/seed/picsum/200/300"),
      UserModelOptional(name: "Rashed"),
    ];

    return list;
  }
}

