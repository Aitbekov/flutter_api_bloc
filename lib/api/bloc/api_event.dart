
part of 'api_bloc.dart';

abstract class ApiEvent  extends Equatable{
 @override
List<Object> get props => [];
}

class PostFetched extends ApiEvent {}