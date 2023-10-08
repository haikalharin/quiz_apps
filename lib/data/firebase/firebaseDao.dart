import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quiz_apps/data/model/questioner_model/questioner_model.dart';
import 'package:random_string/random_string.dart';

import '../../common/remote_utils.dart';

Future<List<Map<String, dynamic>>> fetchQuizQuestions() async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference quizCollection = firestore.collection('questioner');
  QuerySnapshot querySnapshot = await quizCollection.get();

  List<Map<String, dynamic>> quizData = [];

  querySnapshot.docs.forEach((doc) {
    quizData.add(doc.data() as Map<String, dynamic>);
  });

  return quizData;
}

Future<List<QuestionerModel>> getQuizQuestionsByCategory(
    String category) async {
  List<QuestionerModel> listQustioner = [];
  QuestionerModel? questionerModel;
  FirebaseFirestore.instance
      .collection('questioner')
      .where('category', isEqualTo: category)
      .get()
      .then((querySnapshot) {
    if (querySnapshot.docs.isNotEmpty) {
      if (querySnapshot.docs.isNotEmpty) {
        List<QueryDocumentSnapshot> listData = querySnapshot.docs;
        listData.forEach((element) {
          final data = getDataValue(element.data());
          questionerModel = QuestionerModel.fromJson(data);
          listQustioner.add(questionerModel!);
        });
      }
    }
  }).catchError((onError) => print(onError));
  return listQustioner;
}
//
// ArticleModel? articleModel;
// await FirebaseFirestore.instance
//     .collection('INFOS')
// .where('Condition', isEqualTo: condition)
// .get()
//     .then((querySnapshot) {
//
// if (querySnapshot != null && querySnapshot.docs.isNotEmpty) {
// if (querySnapshot.docs.isNotEmpty) {
// List<QueryDocumentSnapshot> listData = querySnapshot.docs;
// listData.forEach((element) {
// final data = getDataValue(element.data());
// articleModel = ArticleModel.fromJson(data);
// listArticle.add(articleModel!);
// });
// }
// }
// }
// ).catchError((onError) => print(onError));
// return listArticle;

Future<void> submitQuizAnswers(List<String> userAnswers) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference answersCollection = firestore.collection('user_answers');

  // Replace 'userId' with the actual user's ID or a unique identifier

  String generateRandomUserId() {
    return randomAlphaNumeric(
        10); // Generates a 10-character alphanumeric string
  }

// Example usage:
  String userId = generateRandomUserId();

  await answersCollection.doc(userId).set({
    'user_answers': userAnswers,
    'timestamp': FieldValue.serverTimestamp(),
  });
}

Future<List<String>> getUserAnswers(String userId) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference answersCollection = firestore.collection('user_answers');

  DocumentSnapshot userAnswersDoc = await answersCollection.doc(userId).get();

  if (userAnswersDoc.exists) {
    // The document exists, so you can access the user's answers.
    Map<String, dynamic> data = userAnswersDoc.data() as Map<String, dynamic>;
    List<String> userAnswers = List<String>.from(data['user_answers']);
    return userAnswers;
  } else {
    // The document does not exist, handle accordingly (e.g., return an empty list).
    return [];
  }
}

// Sample list of quiz questions
List<Map<String, dynamic>> quizQuestions = [
  {
    'question': 'Question 1',
    'category': 'Science',
    // ...
  },
  {
    'question': 'Question 2',
    'category': 'History',
    // ...
  },
  {
    'question': 'Question 3',
    'category': 'Science',
    // ...
  },
  // Add more questions with categories
];

// Function to filter questions by category
List<Map<String, dynamic>> filterQuestionsByCategory(
    List<Map<String, dynamic>> questions, String category) {
  return questions
      .where((question) => question['category'] == category)
      .toList();
}

// Example usage:
String desiredCategory = 'Science'; // Replace with the desired category
List<Map<String, dynamic>> filteredQuestions =
    filterQuestionsByCategory(quizQuestions, desiredCategory);

// Now, 'filteredQuestions' contains only the questions in the 'Science' category.
