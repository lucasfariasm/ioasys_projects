import 'package:flutter/material.dart';
import 'package:ioasys_projects/errors.dart';
import 'package:ioasys_projects/modules/chuck_norris/models/chuck_joke_model.dart';
import 'package:ioasys_projects/modules/chuck_norris/pages/joke/joke_controller.dart';
import 'package:ioasys_projects/shared/widgets/app_bar.dart';

import 'components/joke_body_widget.dart';

class JokePage extends StatefulWidget {
  final String category;
  const JokePage({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  _JokePageState createState() => _JokePageState();
}

class _JokePageState extends State<JokePage> {
  final _controller = JokeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Joke - ${widget.category}'),
      body: FutureBuilder<ChuckJokeModel>(
        future:
            _controller.getRandomJokeFromCategory(category: widget.category),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.none:
              return const Text('=/');
            default:
              if (snapshot.hasData) {
                return Stack(
                  children: [
                    JokeBodyWidget(displayJoke: snapshot.data)
                  ],
                );
              } else {
                if (snapshot.error is HttpClientError) {
                  var error = snapshot.error as HttpClientError;
                  return Text(error.statusCode.toString());
                }else if(snapshot.error is RepositoryFailure){
                  var error = snapshot.error as RepositoryFailure;
                  return Text(error.message ?? '');
                } else {
                  return Text(snapshot.error.toString());
                }
              }
          }
        },
      ),
    );
  }
}
