import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/news_list_view_builder.dart';


class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              category,
              style: TextStyle(color: Colors.orange),
            ),
            Text(
              ' News',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
