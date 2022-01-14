import 'package:flutter/material.dart';
import 'package:componentes/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.accessibility_sharp, color: AppTheme.primary,),
            title: Text('Soy un titulo'),
            subtitle: Text('Adipisicing culpa magna ipsum officia nostrud occaecat dolor tempor ea do.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('OK'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}