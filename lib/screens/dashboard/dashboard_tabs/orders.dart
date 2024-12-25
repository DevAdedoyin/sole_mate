import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OrdersTab extends ConsumerStatefulWidget {
  const OrdersTab({super.key});

  @override
  ConsumerState<OrdersTab> createState() => _CartTabState();
}

class _CartTabState extends ConsumerState<OrdersTab> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}