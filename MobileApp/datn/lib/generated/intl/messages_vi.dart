// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a vi locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'vi';

  static m0(error) => "Lỗi khi thay đổi ngôn ngữ: ${error}";

  static m1(minute) => "#${minute} phút";

  static m2(message) => "Lỗi: ${message}";

  static m3(totalFavorite) => "${Intl.plural(totalFavorite, other: '${totalFavorite} yêu thích')}";

  static m4(totalRate) => "${Intl.plural(totalRate, other: '${totalRate} đánh giá')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "cancel" : MessageLookupByLibrary.simpleMessage("Hủy"),
    "change_language" : MessageLookupByLibrary.simpleMessage("Thay đổi ngôn ngữ"),
    "change_language_error" : m0,
    "change_language_failure" : MessageLookupByLibrary.simpleMessage("Lỗi khi thay đổi ngôn ngữ"),
    "change_language_success" : MessageLookupByLibrary.simpleMessage("Thay đổi ngôn ngữ thành công"),
    "coming_soon" : MessageLookupByLibrary.simpleMessage("PHIM SẮP PHÁT HÀNH"),
    "duration_minutes" : m1,
    "empty_movie" : MessageLookupByLibrary.simpleMessage("Không có bộ phim nào"),
    "empty_theatre" : MessageLookupByLibrary.simpleMessage("Không có rạp nào"),
    "error_with_message" : m2,
    "load_image_error" : MessageLookupByLibrary.simpleMessage("Lỗi tải ảnh"),
    "most_favorite" : MessageLookupByLibrary.simpleMessage("ĐƯỢC YÊU THÍCH NHẤT"),
    "most_rate" : MessageLookupByLibrary.simpleMessage("ĐƯỢC ĐÁNH GIÁ CAO"),
    "movies_on_theatre" : MessageLookupByLibrary.simpleMessage("Phim Đang Chiếu"),
    "nearby_theatre" : MessageLookupByLibrary.simpleMessage("RẠP PHIM GẦN ĐÂY"),
    "recommended_for_you" : MessageLookupByLibrary.simpleMessage("GỢI Ý CHO BẠN"),
    "select_city" : MessageLookupByLibrary.simpleMessage("Chọn thành phố"),
    "total_favorite" : m3,
    "total_rate_review" : m4,
    "view_all" : MessageLookupByLibrary.simpleMessage("Xem tất cả")
  };
}
