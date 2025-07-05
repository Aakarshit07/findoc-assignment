import 'package:flutter_bloc/flutter_bloc.dart';
import '../repositories/image_repository.dart';
import '../models/image_model.dart';

abstract class HomeEvent {}

class FetchImages extends HomeEvent {}

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<ImageModel> images;
  HomeLoaded(this.images);
}

class HomeError extends HomeState {}

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ImageRepository repo;

  HomeBloc(this.repo) : super(HomeInitial()) {
    on<FetchImages>((event, emit) async {
      emit(HomeLoading());
      try {
        final images = await repo.fetchImages();
        emit(HomeLoaded(images));
      } catch (_) {
        emit(HomeError());
      }
    });
  }
}
