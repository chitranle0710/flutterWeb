class BaseResponse<T> {
  BaseResponse({
    this.error,
    required this.data,
  });

  final T? data;
  final String? error;

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJsonFunction,
  ) {
    if (json['Data'] != null && json['Data'] is String) {
      return BaseResponse(
        error: json['Error'] as String?,
        data: json['Data'],
      );
    }
    return BaseResponse(
      error: json['Error'] as String?,
      data: json['Data'] != null ? fromJsonFunction(json['Data']) : null,
    );
  }
}

class BaseListResponse<T> {
  final List<T>? data;
  final String? error;

  BaseListResponse({
    this.error,
    required this.data,
  });

  factory BaseListResponse.fromJson(
    Map<String, dynamic> json,
    Function(Map<String, dynamic>) create,
  ) {
    List<T> data = [];
    if (json['Data'] != null) {
      json['Data'].forEach((v) {
        data.add(create(v));
      });
    }
    return BaseListResponse<T>(error: json['Error'], data: data);
  }
}

class BasePagingResponse<T> {
  final List<T>? data;
  final String? error;
  final int? total;
  final String? currentPage;
  final String? pageSize;

  BasePagingResponse({
    required this.data,
    this.error,
    this.total,
    this.currentPage,
    this.pageSize,
  });

  factory BasePagingResponse.fromJson(
    Map<String, dynamic> json,
    Function(Map<String, dynamic>) create,
  ) {
    List<T> data = [];
    if (json['Data'] != null) {
      json['Data'].forEach((v) {
        data.add(create(v));
      });
    }
    return BasePagingResponse<T>(
      data: data,
      error: json['Error'],
      total: json['Total'],
      currentPage: json['CurrentPage'],
      pageSize: json['PageSize'],
    );
  }
}
