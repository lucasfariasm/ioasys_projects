import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ioasys_projects/app/modules/chuck_norris/presentation/models/chuck_category_model.dart';
import 'package:ioasys_projects/shared/widgets/app_bar.dart';
import 'package:localization/localization.dart';

import 'categories_controller.dart';
import 'components/list_categories_widget.dart';

class ChuckCategoriesPage extends StatefulWidget {
  const ChuckCategoriesPage({Key? key}) : super(key: key);

  @override
  _ChuckCategoriesPageState createState() => _ChuckCategoriesPageState();
}

class _ChuckCategoriesPageState extends ModularState<ChuckCategoriesPage, CategoriesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'chuck_norris_categories'.i18n()),
      body: FutureBuilder<List<ChuckCategoryModel>>(
        future: controller.getJokesCategories(),
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
