enum Emotion { green, blue, red }

class Message {
  final String text;
  final bool isUser;
  final DateTime timestamp;
  final String? topic;
  final String? body;
  final Emotion? emotion;
  final double? temperature;
  final int? promptTokens;
  final int? completionTokens;
  final int? totalTokens;
  final bool? tokensEstimated;
  final int? maxContextTokens;
  final double? contextUsagePercent;

  Message({
    required this.text,
    required this.isUser,
    DateTime? timestamp,
    this.topic,
    this.body,
    this.emotion,
    this.temperature,
    this.promptTokens,
    this.completionTokens,
    this.totalTokens,
    this.tokensEstimated,
    this.maxContextTokens,
    this.contextUsagePercent,
  }) : timestamp = timestamp ?? DateTime.now();

  Message copyWith({
    String? text,
    bool? isUser,
    DateTime? timestamp,
    String? topic,
    String? body,
    Emotion? emotion,
    double? temperature,
    int? promptTokens,
    int? completionTokens,
    int? totalTokens,
    bool? tokensEstimated,
    int? maxContextTokens,
    double? contextUsagePercent,
  }) {
    return Message(
      text: text ?? this.text,
      isUser: isUser ?? this.isUser,
      timestamp: timestamp ?? this.timestamp,
      topic: topic ?? this.topic,
      body: body ?? this.body,
      emotion: emotion ?? this.emotion,
      temperature: temperature ?? this.temperature,
      promptTokens: promptTokens ?? this.promptTokens,
      completionTokens: completionTokens ?? this.completionTokens,
      totalTokens: totalTokens ?? this.totalTokens,
      tokensEstimated: tokensEstimated ?? this.tokensEstimated,
      maxContextTokens: maxContextTokens ?? this.maxContextTokens,
      contextUsagePercent: contextUsagePercent ?? this.contextUsagePercent,
    );
  }

  @override
  String toString() => 'Message(text: $text, isUser: $isUser, timestamp: $timestamp, topic: $topic, emotion: $emotion, temperature: $temperature, tokens: $totalTokens)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Message &&
        other.text == text &&
        other.isUser == isUser &&
        other.timestamp == timestamp &&
        other.topic == topic &&
        other.body == body &&
        other.emotion == emotion &&
        other.temperature == temperature &&
        other.promptTokens == promptTokens &&
        other.completionTokens == completionTokens &&
        other.totalTokens == totalTokens &&
        other.tokensEstimated == tokensEstimated &&
        other.maxContextTokens == maxContextTokens &&
        other.contextUsagePercent == contextUsagePercent;
  }

  @override
  int get hashCode => text.hashCode ^ 
      isUser.hashCode ^ 
      timestamp.hashCode ^ 
      topic.hashCode ^ 
      body.hashCode ^ 
      emotion.hashCode ^ 
      temperature.hashCode ^
      promptTokens.hashCode ^
      completionTokens.hashCode ^
      totalTokens.hashCode ^
      tokensEstimated.hashCode ^
      maxContextTokens.hashCode ^
      contextUsagePercent.hashCode;
}
