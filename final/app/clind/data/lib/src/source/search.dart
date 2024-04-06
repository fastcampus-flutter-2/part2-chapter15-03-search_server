import 'package:data/data.dart';

class SearchDataSource {
  final IPostRemoteDataSource _postRemoteDataSource;

  SearchDataSource(this._postRemoteDataSource);

  Future<dynamic> getPopularChannels() {
    return _postRemoteDataSource.getPopularChannels();
  }

  Future<dynamic> getSearchPosts({
    String query = '',
    int? take,
    int? page,
  }) {
    return _postRemoteDataSource.getSearchPosts(
      query: query,
      take: take,
      page: page,
    );
  }
}
