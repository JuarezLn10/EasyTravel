abstract class ReviewEvent {
  const ReviewEvent();
}

class GetReviews extends ReviewEvent {
  final int destinationId;

  const GetReviews({required this.destinationId});
}

class SubmitReview extends ReviewEvent {
  final int destinationId;
  final String comment;
  final int rating;

  const SubmitReview({
    required this.destinationId,
    required this.comment,
    required this.rating,
  });
}
