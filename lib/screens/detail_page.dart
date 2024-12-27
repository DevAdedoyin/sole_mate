import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailScreen extends ConsumerStatefulWidget {
  const DetailScreen({super.key});

  @override
  ConsumerState<DetailScreen> createState() => _CartTabState();
}

class _CartTabState extends ConsumerState<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}