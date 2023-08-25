import 'package:flutter_azure_tts/src/voices/voice_model.dart';
import 'package:flutter_azure_tts/src/voices/voice_style.dart';

class Ssml {
  Ssml(
      {required this.voice,
      required this.text,
      required this.speed,
      this.voiceStyle});

  final Voice voice;
  final String text;
  final double speed;
  final VoiceStyle? voiceStyle;

  String get buildSsml {
    return "<speak version='1.0' "
        "xmlns='http://www.w3.org/2001/10/synthesis' "
        "xmlns:mstts='https://www.w3.org/2001/mstts' "
        "xml:lang='${voice.locale}'>"
        "<voice xml:lang='${voice.locale}' "
        "xml:gender='${voice.gender}' "
        "name='${voice.shortName}'>"
        "${voiceStyle != null ? "<mstts:express-as style='${voiceStyle!.style}' styledegree='${voiceStyle!.degree}'>" : ""}"
        "<prosody rate='$speed'>"
        "$text"
        "<\/prosody>"
        "${voiceStyle != null ? "<\/mstts:express-as>" : ""}"
        "<\/voice><\/speak>";
  }
}
