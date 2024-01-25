import 'dart:async';

import 'package:adaptive_components/adaptive_components.dart';
import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class GitHubView extends StatefulWidget {
  const GitHubView({super.key});

  // GitHub Browser View State
  @override
  State<GitHubView> createState() => _GitHubViewState();
}

class _GitHubViewState extends State<GitHubView> {
  Future<void>? _browserLaunched;

  Future<void> _launchBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Browser Launch Failed: $url');
    }
  }

  // GitHub Browser View Widgets
  @override
  Widget build(BuildContext context) {
    final Uri launchUrl = Uri(
      scheme: 'https',
      host: 'github.com',
      path: 'HyaenaTechnologies/hyaena_calculate_engine',
    );
    FutureBuilder<void>(
      future: _browserLaunched,
      builder: _browserLaunchStatus,
    );
    return Scaffold(
      appBar: AdaptiveAppBar(
        elevation: 6,
        leading: IconButton(
          icon: Image.asset('lib/assets/icons/back_button.png'),
          enableFeedback: true,
          onPressed: () => {
            context.go('/home'),
          },
          tooltip: 'Home',
        ),
        title: const Text(
          'GitHub',
          softWrap: true,
        ),
      ),
      body: AdaptiveContainer(
        child: Card(
          child: Column(children: <Widget>[
            Image.asset('lib/assets/hce_document.png'),
            ListTile(
              leading: Image.asset('lib/assets/icons/web_dev.png'),
              subtitle: const Text(
                'Source Code Platform',
                softWrap: true,
              ),
              title: const Text(
                'GitHub',
                softWrap: true,
              ),
            ),
            ButtonBar(alignment: MainAxisAlignment.end, children: <Widget>[
              ElevatedButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                      content: const Text(
                        'GitHub Repository',
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
                  'View Repository',
                  softWrap: true,
                ),
              ),
            ]),
          ]),
        ),
      ),
    );
  }
}

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
