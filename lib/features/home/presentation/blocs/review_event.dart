abstract class ReviewEvent {
  const ReviewEvent();
}

class GetReviews extends ReviewEvent {
  final int destinationId;

  const GetReviews({required this.destinationId});
}

class AddReview extends ReviewEvent {
  final String token;

  const AddReview({required this.token});
}