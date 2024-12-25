import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExploreTab extends ConsumerStatefulWidget {
  const ExploreTab({super.key});

  @override
  ConsumerState<ExploreTab> createState() => _CartTabState();
}

class _CartTabState extends ConsumerState<ExploreTab> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}