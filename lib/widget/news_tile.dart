import 'package:flutter/material.dart';
import 'package:news_app/moduls/articlemodel.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.artcModel});
  final ArticleModel artcModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: artcModel.image != null
              ? Image.network(
                  artcModel.image!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : const Placeholder(), // Use a fallback widget if image is null
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          artcModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          artcModel.subTitle ?? '',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
