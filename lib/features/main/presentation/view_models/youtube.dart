import 'package:bin_mahfudz_mobile/features/main/data/models/youtube_data.dart';
import 'package:bin_mahfudz_mobile/features/main/data/models/youtube_item.dart';


class $YoutubeItem {
  final String id;
  final String image;
  final String title;
  final String displayDate;
  final int rating;

  $YoutubeItem({
    required this.id,
    required this.image,
    required this.title,
    required this.displayDate,
    required this.rating,
  });

  factory $YoutubeItem.fromYoutubeItem(YoutubeItem data) {
    
    final formattedDate = data.date.toLocal().toString().split(' ').first;

    return $YoutubeItem(
      id: data.id,
      image: data.image,
      title: data.name,
      displayDate: formattedDate,
      rating: data.rating,
    );
  }
}

class Youtube {
  final String? date;
  final List<$YoutubeItem> items;

  Youtube({
    required this.date,
    required this.items,
  });

  factory Youtube.fromYoutubeData(YoutubeData? data) {
    return Youtube(
      date: data?.date.toString(),
      items: (data?.items ?? []).map((e) => $YoutubeItem.fromYoutubeItem(e)).toList(),
    );
  }
}