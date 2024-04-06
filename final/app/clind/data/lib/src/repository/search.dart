import 'package:data/data.dart';
import 'package:domain/domain.dart';

class SearchRepository implements ISearchRepository {
  final SearchDataSource _searchDataSource;

  SearchRepository(this._searchDataSource);

  @override
  Future<List<Channel>> getPopularChannels() async {
    final List<dynamic> jsonList = await _searchDataSource.getPopularChannels();
    return jsonList.map((json) => Channel.fromJson(json)).toList();
  }

  @override
  Future<List<Post>> getSearchPosts({
    String query = '',
    int? take,
    int? page,
  }) async {
    final List<dynamic> jsonList = await _searchDataSource.getSearchPosts(
      query: query,
      take: take,
      page: page,
    );
    return jsonList.map((json) => Post.fromJson(json)).toList();
  }
}
