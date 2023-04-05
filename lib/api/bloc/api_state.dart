part of 'api_bloc.dart';

enum PostStatus { initial, success, failure }

 class ApiState {
  ApiState({this.post =const []});
  List<Post> post;

  ApiState copyWith(
   {List<Post>? post}

  ){return ApiState(
   post: post?? this.post,
  );}
}


