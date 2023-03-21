import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'image_generation_state.dart';

class ImageGenerationCubit extends Cubit<ImageGenerationState> {
  ImageGenerationCubit() : super(ImageGenerationInitial());
}
