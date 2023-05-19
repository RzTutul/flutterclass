class UserModel
{
  String? name;
  String? message;
  String? imageUrl;
  String? moment;
  UserModel(this.name,this.message, this.imageUrl,this.moment); //Positional


  static List<UserModel> getUserInfo() //function
  {
    List<UserModel> list = [
      UserModel("Rz Tutul","Hello ,how are you","https://media.istockphoto.com/id/1399788030/photo/portrait-of-young-confident-indian-woman-pose-on-background.jpg?b=1&s=170667a&w=0&k=20&c=8D_YP_bxKh8CH_W3n0kKr9bzQjZeYxUv9QgqfXjHNX8=","08:44"),
      UserModel("Richard Bernard","Dear Sir, i am..","https://media.istockphoto.com/id/1386479313/photo/happy-millennial-afro-american-business-woman-posing-isolated-on-white.jpg?b=1&s=170667a&w=0&k=20&c=ahypUC_KTc95VOsBkzLFZiCQ0VJwewfrSV43BOrLETM=", "10:33"),
      UserModel("Rich Harris","Good afternoon","https://picsum.photos/200/300?grayscale", "06:33"),
    ];

    return list;
  }
}

