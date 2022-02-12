import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  //TODO 2/: ปรับเปลี่ยนหรือเพิ่มชุดคำถามใน questionBank
  List<Question> _questionBank = [
    Question(q: 'คนเขียนโปรแกรมหล๊อหล่อ', a: true),
    Question(q: 'การบ้านเยอะเกิน', a: true),
    Question(q: 'วันวาเลนไทน์นี้ต้องอยู่ตัวคนเดียว', a: true),
    Question(q: 'แมลงสาบน่ารัก', a: false),
    Question(q: 'ลุงตู่ทำงานดี', a: false),
    Question(q: 'สีแดง + สีฟ้า  = สีลม', a: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool? getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
