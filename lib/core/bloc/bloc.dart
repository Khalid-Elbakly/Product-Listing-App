import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linked_gate/core/bloc/state.dart';
import 'package:linked_gate/core/data/api.dart';
import 'product_event.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ApiService apiService;

  ProductBloc(this.apiService) : super(ProductInitial()) {
    on<FetchProducts>((event, emit) async {
      emit(ProductLoading());
      try {
        final products = await apiService.fetchProducts();
        emit(ProductLoaded(products));
      } catch (e) {
        emit(ProductError('Failed to fetch products. Please try again.'));
      }
    });
  }
}
