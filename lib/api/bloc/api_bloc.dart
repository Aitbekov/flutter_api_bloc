import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:api_bloc/api/models/models.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import 'package:api_bloc/app.dart';

part 'api_event.dart';

part 'api_state.dart';

class ApiBloc extends Bloc<ApiEvent, ApiState> {
  final http.Client httpClient;

  ApiBloc({required this.httpClient}) : super(ApiState()) {
    on<PostFetched>(
      _onPostFetched,
    );
  }

  FutureOr<void> _onPostFetched(
      PostFetched event, Emitter<ApiState> emit) async {
    print('object');
    final responce = await httpClient.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );
    log(responce.toString());
    final body = responce.body;
    final List json = jsonDecode(body);
    List<Post> post = [];
    log(json.toString());
    for (int i = 0; i < json.length; i++) {
      post.add(Post(
        json[i]['id'],
        json[i]['title'],
        json[i]['body'],
      ));
    }
    emit(state.copyWith(post: post));
  }
}
