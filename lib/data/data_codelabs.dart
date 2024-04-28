import 'package:graphql_flutter_workshop/model/graphql_codelab.dart';

const graphqlCodelabs = [
  GraphQLCodelabs(
    title: 'Part 1: Introduction of GraphQL in Flutter',
    description:
        'In this codelab you\'ll get started with GraphQL using Riverpod state management. I explain the tools needed to run and test your Dgraph back-end.',
    link: 'https://emmanuelcode.github.io/intro-flutter-graphql',
  ),
  GraphQLCodelabs(
      title: 'Part 2: Firebase Authentication with GraphQL in Flutter',
      description:
          'In this codelab you\'ll link a Firebase project with your Dgraph back-end. I explain how to perform email/password authentication and how to grant access to your database by handling your token.',
      link: 'https://emmanuelcode.github.io/flutter-firebase-graphql'),
  GraphQLCodelabs(
    title: 'Part 3: Flutter Codegen with GraphQL',
    description:
        'In this codelab you\'ll on using code generation on GraphQL which is less prone to errors and allows you to be productive as a developer.',
    link: 'https://emmanuelcode.github.io/flutter-codegen-graphql',
  ),
];
