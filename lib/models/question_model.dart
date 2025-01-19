class QuizModel {
  final int? id;
  final String? name;
  final String? title;
  final String? description;
  final String? difficultyLevel;
  final String? topic;
  final DateTime? time;
  final bool? isPublished;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? duration;
  final DateTime? endTime;
  final String? negativeMarks;
  final String? correctAnswerMarks;
  final bool? shuffle;
  final bool? showAnswers;
  final bool? lockSolutions;
  final bool? isForm;
  final bool? showMasteryOption;
  final dynamic readingMaterial;
  final String? quizType;
  final bool? isCustom;
  final dynamic bannerId;
  final dynamic examId;
  final bool? showUnanswered;
  final DateTime? endsAt;
  final dynamic lives;
  final String? liveCount;
  final int? coinCount;
  final int? questionsCount;
  final String? dailyDate;
  final int? maxMistakeCount;
  final List<dynamic>? readingMaterials;
  final List<Question>? questions;
  final int? progress;

  QuizModel({
    this.id,
    this.name,
    this.title,
    this.description,
    this.difficultyLevel,
    this.topic,
    this.time,
    this.isPublished,
    this.createdAt,
    this.updatedAt,
    this.duration,
    this.endTime,
    this.negativeMarks,
    this.correctAnswerMarks,
    this.shuffle,
    this.showAnswers,
    this.lockSolutions,
    this.isForm,
    this.showMasteryOption,
    this.readingMaterial,
    this.quizType,
    this.isCustom,
    this.bannerId,
    this.examId,
    this.showUnanswered,
    this.endsAt,
    this.lives,
    this.liveCount,
    this.coinCount,
    this.questionsCount,
    this.dailyDate,
    this.maxMistakeCount,
    this.readingMaterials,
    this.questions,
    this.progress,
  });

  factory QuizModel.fromJson(Map<String, dynamic> json) {
    return QuizModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      difficultyLevel: json['difficulty_level'] ?? '',
      topic: json['topic'] ?? '',
      time:
          json['time'] != null ? DateTime.parse(json['time']) : DateTime.now(),
      isPublished: json['is_published'] ?? false,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : DateTime.now(),
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : DateTime.now(),
      duration: json['duration'] ?? 0,
      endTime: json['end_time'] != null
          ? DateTime.parse(json['end_time'])
          : DateTime.now(),
      negativeMarks: json['negative_marks'] ?? '0.0',
      correctAnswerMarks: json['correct_answer_marks'] ?? '0.0',
      shuffle: json['shuffle'] ?? false,
      showAnswers: json['show_answers'] ?? false,
      lockSolutions: json['lock_solutions'] ?? false,
      isForm: json['is_form'] ?? false,
      showMasteryOption: json['show_mastery_option'] ?? false,
      readingMaterial: json['reading_material'] ?? ReadingMaterial(),
      quizType: json['quiz_type'] ?? '',
      isCustom: json['is_custom'] ?? false,
      bannerId: json['banner_id'],
      examId: json['exam_id'],
      showUnanswered: json['show_unanswered'] ?? false,
      endsAt: json['ends_at'] != null
          ? DateTime.parse(json['ends_at'])
          : DateTime.now(),
      lives: json['lives'],
      liveCount: json['live_count'] ?? 'Free Test',
      coinCount: json['coin_count'] ?? -1,
      questionsCount: json['questions_count'] ?? 0,
      dailyDate: json['daily_date'] ?? '',
      maxMistakeCount: json['max_mistake_count'] ?? 0,
      readingMaterials: json['reading_materials'] ?? [],
      questions: json['questions'] != null
          ? List<Question>.from(
              json['questions'].map((x) => Question.fromJson(x)))
          : [],
      progress: json['progress'] ?? 0,
    );
  }
}

class Question {
  final int? id;
  final String? description;
  final String? difficultyLevel;
  final String? topic;
  final bool? isPublished;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? detailedSolution;
  final String? type;
  final bool? isMandatory;
  final bool? showInFeed;
  final String? pyqLabel;
  final int? topicId;
  final int? readingMaterialId;
  final DateTime? fixedAt;
  final String? fixSummary;
  final dynamic createdBy;
  final String? updatedBy;
  final dynamic quizLevel;
  final String? questionFrom;
  final dynamic language;
  final String? photoUrl;
  final String? photoSolutionUrl;
  final bool? isSaved;
  final String? tag;
  final List<Option>? options;
  final ReadingMaterial? readingMaterial;

  Question({
    this.id,
    this.description,
    this.difficultyLevel,
    this.topic,
    this.isPublished,
    this.createdAt,
    this.updatedAt,
    this.detailedSolution,
    this.type,
    this.isMandatory,
    this.showInFeed,
    this.pyqLabel,
    this.topicId,
    this.readingMaterialId,
    this.fixedAt,
    this.fixSummary,
    this.createdBy,
    this.updatedBy,
    this.quizLevel,
    this.questionFrom,
    this.language,
    this.photoUrl,
    this.photoSolutionUrl,
    this.isSaved,
    this.tag,
    this.options,
    this.readingMaterial,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'] ?? 0,
      description: json['description'] ?? '',
      difficultyLevel: json['difficulty_level'] ?? '',
      topic: json['topic'] ?? '',
      isPublished: json['is_published'] ?? false,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : DateTime.now(),
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : DateTime.now(),
      detailedSolution: json['detailed_solution'] ?? '',
      type: json['type'] ?? '',
      isMandatory: json['is_mandatory'] ?? false,
      showInFeed: json['show_in_feed'] ?? false,
      pyqLabel: json['pyq_label'] ?? '',
      topicId: json['topic_id'] ?? 0,
      readingMaterialId: json['reading_material_id'] ?? 0,
      fixedAt: json['fixed_at'] != null
          ? DateTime.parse(json['fixed_at'])
          : DateTime.now(),
      fixSummary: json['fix_summary'] ?? '',
      createdBy: json['created_by'],
      updatedBy: json['updated_by'] ?? '',
      quizLevel: json['quiz_level'],
      questionFrom: json['question_from'] ?? '',
      language: json['language'],
      photoUrl: json['photo_url'] ?? '',
      photoSolutionUrl: json['photo_solution_url'] ?? '',
      isSaved: json['is_saved'] ?? false,
      tag: json['tag'] ?? '',
      options: json['options'] != null
          ? List<Option>.from(json['options'].map((x) => Option.fromJson(x)))
          : [],
      readingMaterial: json['reading_material'] != null
          ? ReadingMaterial.fromJson(json['reading_material'])
          : ReadingMaterial(),
    );
  }
}

class Option {
  final int? id;
  final String? description;
  final int? questionId;
  final bool? isCorrect;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final bool? unanswered;
  final String? photoUrl;

  Option({
    this.id,
    this.description,
    this.questionId,
    this.isCorrect,
    this.createdAt,
    this.updatedAt,
    this.unanswered,
    this.photoUrl,
  });

  factory Option.fromJson(Map<String, dynamic> json) {
    return Option(
      id: json['id'] ?? 0,
      description: json['description'] ?? '',
      questionId: json['question_id'] ?? 0,
      isCorrect: json['is_correct'] ?? false,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : DateTime.now(),
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : DateTime.now(),
      unanswered: json['unanswered'] ?? false,
      photoUrl: json['photo_url'] ?? '',
    );
  }
}

class ReadingMaterial {
  final int? id;
  final List<String>? keywords;
  final dynamic content;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<String>? contentSections;
  final PracticeMaterial? practiceMaterial;

  ReadingMaterial({
    this.id,
    this.keywords,
    this.content,
    this.createdAt,
    this.updatedAt,
    this.contentSections,
    this.practiceMaterial,
  });

  factory ReadingMaterial.fromJson(Map<String, dynamic> json) {
    return ReadingMaterial(
      id: json['id'] ?? 0,
      keywords:
          json['keywords'] != null ? List<String>.from(json['keywords']) : [],
      content: json['content'],
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : DateTime.now(),
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : DateTime.now(),
      contentSections: json['content_sections'] != null
          ? List<String>.from(json['content_sections'])
          : [],
      practiceMaterial: json['practice_material'] != null
          ? PracticeMaterial.fromJson(json['practice_material'])
          : PracticeMaterial(),
    );
  }
}

class PracticeMaterial {
  final List<String>? content;
  final List<String>? keywords;

  PracticeMaterial({
    this.content,
    this.keywords,
  });

  factory PracticeMaterial.fromJson(Map<String, dynamic> json) {
    return PracticeMaterial(
      content:
          json['content'] != null ? List<String>.from(json['content']) : [],
      keywords:
          json['keywords'] != null ? List<String>.from(json['keywords']) : [],
    );
  }
}
