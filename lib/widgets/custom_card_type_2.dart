import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key, required this.imgUrl, this.title})
      : super(key: key);

  final String imgUrl;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      shadowColor: AppTheme.primaryColor.withOpacity(0.5),
      elevation: 20,
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/images/jar-loading.gif'),
            image: NetworkImage(imgUrl),
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (title != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(title ?? "No title"))
        ],
      ),
    );
  }
}
