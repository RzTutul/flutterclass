import 'package:flutter/material.dart';

class BoxModel extends StatelessWidget {
  const BoxModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text("Try Works"),
      // ),
      body: SafeArea(child: const Login()),
    );
  }
}

class Box extends StatelessWidget {
  const Box({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      width: double.infinity,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            color: Colors.red,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.green,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class MainIcon extends StatelessWidget {
  const MainIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 100,
        width: 100,
        child: TextButton(
          onPressed: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Icon(Icons.android_sharp), Text("Exact App")],
          ),
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 200,
          width: 200,
          color: Colors.blueGrey[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://codesundar.com/wp-content/uploads/2020/08/78494341_2774884842574595_7784880823911579648_n-300x300.jpg"),
                radius: 28,
              ),
              Text("Ranz Tutul"),
              Text("ranstutul@mail.com"),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: null,
                  child: Text(
                    "Accept",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Image.network(
              "https://i.pinimg.com/originals/87/b6/e3/87b6e3ebf4d64dc72392e50a9f74bf84.jpg",
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            "Heavy Rain is predicted during this summer",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text("Posted 5 mins ago"),
          const SizedBox(height: 8),
          const Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "),
        ],
      ),
    );
  }
}

class ProductOne extends StatelessWidget {
  const ProductOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        width: 240,
        height: 300,
        child: Column(
          children: [
            Container(
              height: 160,
              width: double.infinity,
              child: Image.network(
                "https://i.pinimg.com/originals/87/b6/e3/87b6e3ebf4d64dc72392e50a9f74bf84.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children:  const[
                  Text("Umberla for sale",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          SizedBox(
            height: 300,
            // width: double.infinity,
            child: Image.asset("images/truck.png",
              fit: BoxFit.cover,

            ),
          ),
          const Text("Login", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),),
        Container(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children:  [
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child:  TextField(
                  // controller: valueOneController,
                  decoration:  InputDecoration(
                      hintText: "Email", border: OutlineInputBorder()),
                ),

              ),
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child:  TextField(
                  // controller: valueOneController,
                  decoration:  InputDecoration(
                      hintText: "Password", border: OutlineInputBorder()),
                ),

              ),
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child:  Text("Forgot Password",style: TextStyle(color: Colors.blueAccent),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black45,
                    minimumSize: const Size.fromHeight(50), // NEW
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 24,inherit: true),
                  ),
                ),
              ),

            ],
          ),

        ),
        ],
      ),
    );
  }
}
