import 'package:flutter/material.dart';
import 'package:sample_hero/style_theme.dart';
import 'package:sample_hero/widgets/character_widget.dart';

class CharacterList extends StatefulWidget {
  @override
  _CharacterListState createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 32.0, top: 8.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(text: 'Despicable Me ', style: AppTheme.display1),
                    TextSpan(text: '\n'),
                    TextSpan(text: 'Characters', style: AppTheme.display2),
                  ]),
                ),
              ),
              Expanded(
                child: CharacterWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
