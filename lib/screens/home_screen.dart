import 'package:flutter/material.dart';
import 'package:handling_theming_flutter_app/app_text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          alignment: AlignmentDirectional.center,
          color: Theme.of(context).primaryColor,
          child: Text('In Home',style: AppTextStyles.font36primarySemiBold(context),),
        ),
      ),
    );
  }
}

