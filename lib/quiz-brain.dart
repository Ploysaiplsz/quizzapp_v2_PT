import 'question.dart';
class QuizBrain {

  int _questionNumber = 0;

  //TODO 1: ปรับเปลี่ยนหรือเพิ่มชุดคำถามใน questionBank ให้มีอย่างน้อย 5 คำถาม
  List<Question> _questionBank=[
    Question(q: '1 - 1 = 2', a: false),
    Question(q: 'ทุเรียนเป็นผลไม้', a: true),
    Question(q: 'ดอกไม้ทะเลเป็นสัตว์', a: true),
    Question(q: 'KFC มีขายในประเทศไทย', a: true),
    Question(q: 'ธงชาติไทยมี 4 สี', a: false)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length) {
      _questionNumber++;
    }
  }
  int getQuestionNumber() {
    return _questionNumber;
  }
  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool? getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

}