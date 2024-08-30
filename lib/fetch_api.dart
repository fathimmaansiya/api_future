import 'package:flutter/material.dart';
import 'package:flutter_application_1/post_model.dart';

class FetchApi extends StatelessWidget {
  final Future<List<Post>> posts;

  const FetchApi({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: FutureBuilder(
            future: posts,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 3,
                        child: ListTile(
                          title: Text(
                            snapshot.data![index].title,
                            style:const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle:
                              Text(snapshot.data![index].userId.toString()),
                        ),
                      );
                    }
                    // separatorBuilder:(context,index){
                    //   return SizedBox(height: 10,);
                    // },
                    );
              }
              return Center(child: CircularProgressIndicator(),);
            }));
  }
}
