import 'package:json_annotation/json_annotation.dart';
// command --> flutter packages pub run build_runner build
part 'message.g.dart';

@JsonSerializable()
class Message {
  final subject;
  final body;

  Message(this.subject, this.body);
  // this constructor will tell dart , if you get a Map, here's the instruction to make it a message
  // here's Map<String because Map it can hold key of String and int
  // changes it to make less boiler code
  // Here factory says that it returns value from function
  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
  // take the key of subject and assign it to subject(above)
  // : subject = json['subject'],
  // same
  // body = json['body'];
}

// yooooooo made it, it's showing on the screen
