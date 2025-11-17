import 'dart:convert';
import 'dart:io';

import 'package:easy_travel/core/constants/api_constants.dart';
import 'package:easy_travel/features/home/domain/review.dart';
import 'package:http/http.dart' as http;

class ReviewService {

  Future<List<Review>> getReviewsByDestinationId(int destinationId) async {
    
    final Uri uri = Uri
      .parse(ApiConstants.baseUrl)
      .replace(path: '${ApiConstants.reviewsEndpoint}/$destinationId');

    try {
      final response = await http.get(uri);

      if (response.statusCode == HttpStatus.ok) {
        List reviews = jsonDecode(response.body);
        return reviews.map((review) => Review.fromJson(review)).toList();
      }
      return Future.error('${response.statusCode}');
    } catch (e) {
      throw Future.error(e.toString());
    }
  }
}