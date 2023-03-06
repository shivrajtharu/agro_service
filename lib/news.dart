import 'package:flutter/material.dart';
import 'package:household/article_details_page.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  List<String> _headlines = [
    'Headline 1',
    'Headline 2',
    'Headline 3',
    'Headline 4',
    'Headline 5',
    'Headline 6',
    'Headline 7',
    'Headline 8',
    'Headline 9',
    'Headline 10',
    'Headline 11',
    'Headline 12',
    'Headline 13',
  ];

  List<String> _summaries = [
    'This is a summary of article 1.',
    'This is a summary of article 2.',
    'This is a summary of article 3.',
    'This is a summary of article 4.',
    'This is a summary of article 5.',
    'This is a summary of article 6.',
    'This is a summary of article 7.',
    'This is a summary of article 8.',
    'This is a summary of article 9.',
    'This is a summary of article 10.',
    'This is a summary of article 11.',
    'This is a summary of article 12.',
    'This is a summary of article 13.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: _headlines.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_headlines[index]),
            subtitle: Text(_summaries[index]),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to article details page
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ArticleDetailsPage(headline: 'Headlines', content: 'summaries')));
            },
          );
        },
      ),
    );
  }
}
