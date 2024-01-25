import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OpenStaxView extends StatefulWidget {
  const OpenStaxView({super.key});

  // OpenStax Browser View State
  @override
  State<OpenStaxView> createState() => _OpenStaxViewState();
}

class _OpenStaxViewState extends State<OpenStaxView> {
  Future<void>? _browserLaunched;

  Future<void> _launchBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Browser Launch Failed: $url');
    }
  }

  // OpenStax Browser View Widgets
  @override
  Widget build(BuildContext context) {
    final Uri launchUrl = Uri(
      scheme: 'https',
      host: 'openstax.org',
      path: 'subjects/view-all',
    );
    FutureBuilder<void>(
      future: _browserLaunched,
      builder: _browserLaunchStatus,
    );
    return Scaffold(
      body: Card(
        child: Column(children: <Widget>[
          Image.asset('lib/assets/openstax.png'),
          ListTile(
            leading: Image.asset('lib/assets/icons/book.png'),
            subtitle: const Text(
              'Access The Future of Education',
              softWrap: true,
            ),
            title: const Text(
              'OpenStax',
              softWrap: true,
            ),
          ),
          ButtonBar(alignment: MainAxisAlignment.end, children: <Widget>[
            ElevatedButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                    content: const Text(
                      'OpenStax Website',
                      softWrap: true,
                    ),
                    title: const Text(
                      'Launch Browser',
                      softWrap: true,
                    ),
                    actions: <Widget>[
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text(
                              'Cancel',
                              softWrap: true,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () => setState(() {
                              _browserLaunched = _launchBrowser(launchUrl);
                            }),
                            child: const Text(
                              'Launch',
                              softWrap: true,
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
              child: const Text(
                'View openStax',
                softWrap: true,
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}

// Replace Text Widgets with Snack Bars
Widget _browserLaunchStatus(
    BuildContext context, AsyncSnapshot<void> snapshot) {
  if (snapshot.hasError) {
    return SnackBar(
      content: Text(
        'Snapshot Error: ${snapshot.error}',
        softWrap: true,
      ),
      elevation: 6,
      showCloseIcon: true,
    );
  } else {
    return const SnackBar(
      content: Text(
        'Launching Browser',
        softWrap: true,
      ),
      elevation: 6,
      showCloseIcon: true,
    );
  }
}
