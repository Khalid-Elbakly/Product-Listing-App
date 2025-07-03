import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linked_gate/core/bloc/bloc.dart';
import 'package:linked_gate/core/bloc/product_event.dart';
import 'package:linked_gate/core/bloc/state.dart';
import 'package:linked_gate/views/components/product_card.dart';
import 'package:linked_gate/views/components/shimmer_product_card.dart';
import 'package:shimmer/shimmer.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ProductBloc>().add(FetchProducts());

    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state is ProductLoading) {
            return ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) => ShimmerProductCard()
            );
          } else if (state is ProductLoaded) {
            return ListView.builder(
              itemCount: state.products.length,
              itemBuilder: (context, index) => ProductCard(product: state.products[index]),
            );
          } else if (state is ProductError) {
            return Center(child: Text(state.message));
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
