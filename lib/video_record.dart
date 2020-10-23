
import 'dart:async';

import 'package:flutter/services.dart';

class VideoRecord {
  static const MethodChannel _channel =
      const MethodChannel('video_record');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
