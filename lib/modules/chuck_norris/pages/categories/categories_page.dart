import 'package:flutter/material.dart';
import 'package:ioasys_projects/modules/chuck_norris/models/chuck_category_model.dart';
import 'package:ioasys_projects/modules/chuck_norris/pages/categories/categories_controller.dart';
import 'package:ioasys_projects/shared/widgets/app_bar.dart';

import 'components/list_categories_widget.dart';

class ChuckCategoriesPage extends StatefulWidget {
  const ChuckCategoriesPage({Key? key}) : super(key: key);

  @override
  _ChuckCategoriesPageState createState() => _ChuckCategoriesPageState();
}

class _ChuckCategoriesPageState extends State<ChuckCategoriesPage> {
  final _controller = CategoriesController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Chuck Norris - Categories'),
      body: FutureBuilder<List<ChuckCategoryModel>>(
        future: _controller.getJokesCategories(),
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
                return ListCategoriesWidget(categories: snapshot.data ?? []);
              } else {
                if (snapshot.error is Exception) {
                  return const Text('error exception');
                } else {
                  return const Text('Outra coisa');
                }
              }
          }
        },
      ),
    );
  }
}
