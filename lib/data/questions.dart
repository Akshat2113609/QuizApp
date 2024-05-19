import 'package:myapp/models/quiz_questions.dart';

const questions=[
  QuizQuestions('What are the main building blocks of flutter UI ?',
  [
    'Widgets',
    'Components',
    'Blocks',
    'Functions',
  ],
  ),
  QuizQuestions('How are Flutter UI built ?',
  [
    'by combining Widgets in code',
    'by combining Widgets in visual editor',
    'by defining Widgets in config files',
    'by using xcode for ios and Android studio for android',
  ],
  ),
  QuizQuestions('What is the purpose of StatefulWidget ?',
  [
    'Update UI as data changes',
    'Update data as UI changes',
    'Ignore data changes',
    'Render UI that does not depends on data',
  ],
  ),
  QuizQuestions('What Widget you should use more often?',
  [
    'StatelessWidget',
    'StatefulWidget',
    'Equally good',
    'Nota',
  ],
  ),
  QuizQuestions('What happens if you change data in a StatelessWidget?',
  [
    'UI not updated',
    'UI updates',
    'Closest StatefulWidget is updated',
    'Nested StatefulWidget will be updated',
  ],
  ),
];