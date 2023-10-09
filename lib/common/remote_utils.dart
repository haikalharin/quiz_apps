

import 'package:url_launcher/url_launcher.dart';

dynamic getDataValue(dynamic result) => result;

dynamic getQuestioner(dynamic result) => result['questioner'];

dynamic getQuestionerState(dynamic result) => result['questionerState'];

dynamic getAnswer(dynamic result) => result['answer'];

dynamic getCorrect(dynamic result) => result['correct'];

dynamic getDataList(dynamic result) => result['total_results'];

dynamic getErrorResult(dynamic result) => result['error'];

String getFormattedUrl(String? url, Map<String, String>? variables) {
  return url!.replaceAllMapped(RegExp(r'{{\w+}}'), (match) {
    final key = match.group(0)!.replaceAll(RegExp(r'[{}]'), '');
    return variables![key]!;
  });
}

Future<void> launchUrlWa(String message) async {
  String text = Uri.encodeFull(message);

  // Construct the WhatsApp URL without specifying a recipient
  // var url = Uri(scheme: 'https',host: 'wa.me/?text=$text' );
  var url = Uri.parse('https://wa.me/?text=$text');
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}



