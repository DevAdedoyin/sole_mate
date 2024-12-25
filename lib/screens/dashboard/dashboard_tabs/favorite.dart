import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteTab extends ConsumerStatefulWidget {
  const FavoriteTab({super.key});

  @override
  ConsumerState<FavoriteTab> createState() => _CartTabState();
}

class _CartTabState extends ConsumerState<FavoriteTab> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}