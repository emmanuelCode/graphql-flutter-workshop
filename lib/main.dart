import 'package:flutter/material.dart';
import 'package:graphql_flutter_workshop/data/data_codelabs.dart';
import 'package:graphql_flutter_workshop/data/data_logos.dart';
import 'package:url_launcher/link.dart';

final theme = ThemeData().copyWith(
  colorScheme:
      ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 15, 28, 88)),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter GraphQL',
      theme: theme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double cardHorizontalMargin = 200;
    double screenWidth = MediaQuery.of(context).size.width;
    if(screenWidth < 1000){
      cardHorizontalMargin = 100;
    }
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text(
              'Flutter GraphQL Workshop',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onPrimary),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Wrap(
              children: [
                logos[0],
                const SizedBox(width: 24),
                logos[1],
                const SizedBox(width: 24),
                logos[2]
              ],
            ),
            const SizedBox(height: 12),
            Expanded(
              child: Card(
                color: Theme.of(context).colorScheme.primaryContainer,
                margin:
                EdgeInsets.symmetric(horizontal: cardHorizontalMargin, vertical: 16),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: graphqlCodelabs
                        .map(
                          (codelab) => Link(
                            target: LinkTarget.blank,
                            uri: Uri.parse(codelab.link),
                            builder:
                                (BuildContext context, FollowLink? followLink) =>
                                    ListTile(
                              minVerticalPadding: 32,
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 32),
                              title: Text(
                                codelab.title,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      fontWeight: FontWeight.bold,
                                    ),
                                textAlign: TextAlign.center,
                              ),
                              subtitle: Text(
                                codelab.description,
                                style: Theme.of(context).textTheme.bodyLarge,
                                textAlign: TextAlign.center,
                              ),
                              onTap: followLink,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  '2024',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Theme.of(context).colorScheme.onPrimary),
                ),
                const SizedBox(width: 4),
                const FlutterLogo(),
                Text(
                  'Built with Flutter',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Theme.of(context).colorScheme.onPrimary),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
