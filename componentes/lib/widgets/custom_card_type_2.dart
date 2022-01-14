import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageURL;
  final String? name;

  const CustomCardType2({
    Key? key, 
    required this.imageURL, 
    this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
        ),
      elevation: 50,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageURL), 
            placeholder: const AssetImage('assets/Images/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),

          if(name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10), 
              child: Text(name!),
            )
        ],
      ),
    );
  }
}