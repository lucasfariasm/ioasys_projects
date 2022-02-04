import 'package:flutter/material.dart';
import 'package:ioasys_projects/modules/chuck_norris/models/chuck_category_model.dart';

class ListCategoriesWidget extends StatelessWidget {
  final List<ChuckCategoryModel> categories;
  const ListCategoriesWidget({
    Key? key,
    required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return ListTile(
          onTap: () => Navigator.of(context).pushNamed('/joke', arguments: category.title),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
          title: Text(category.title),
        );
      },
    );
  }
}
