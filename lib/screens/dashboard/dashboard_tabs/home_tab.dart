import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeTab extends ConsumerStatefulWidget {
  const HomeTab({super.key});

  @override
  ConsumerState<HomeTab> createState() => _CartTabState();
}

class _CartTabState extends ConsumerState<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}