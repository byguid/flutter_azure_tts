import 'package:flutter_azure_tts/flutter_azure_tts.dart';

class AudioRequestParams {
  final Voice voice;
  final String text;
  final String audioFormat;
  double? rate;
  VoiceStyle? voiceStyle;

  AudioRequestParams({
    required this.voice,
    required this.text,
    required this.audioFormat,
    this.rate,
    this.voiceStyle,
  });
}
