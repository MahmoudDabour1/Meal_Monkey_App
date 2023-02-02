import 'package:engamrbakr/screens/connectToFireBase/model.dart';
import 'package:flutter/material.dart';
import 'controller.dart';

class ConnectToFireBase extends StatelessWidget {
  ConnectToFireBase({Key? key}) : super(key: key);

  final controller = ConnectToFireController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Center(
          child: Text(
            'Movies',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data as MoviesData;
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://image.tmdb.org/t/p/original${data.results[index].posterPath}'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 120.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              data.results[index].title,
                              style: const TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'Published At : ${data.results[index].releaseDate}',
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'For Adult : ${data.results[index].adult}',
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Language : ${data.results[index].originalLanguage}',
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Popularity : ${data.results[index].popularity}',
                                  style: const TextStyle(
                                    color: Colors.yellowAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              itemCount: data.results.length,
            );
          } else {
            if (snapshot.hasError) {
              return const Center(child: Text('Error'));
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }
        },
        future: controller.getAPIData(),
      ),
    );
  }
}
