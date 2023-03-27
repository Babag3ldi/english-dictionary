import 'package:flutter/cupertino.dart';

class Question {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option  {
  final Image imageModel;
  final bool isCorrect;

  const Option({
    required this.imageModel,
    required this.isCorrect,
  });
}


final questions = [
  Question(text: 'Bee', 
    options: [
       Option(imageModel: Image.asset('assets/animal/bee.jpg'), isCorrect: true),
       Option(imageModel: Image.asset('assets/animal/camel.jpg'), isCorrect: false),
    ]),

     Question(text: "Dog", 
    options: [
       Option(imageModel: Image.asset('assets/animal/dog.jpg'), isCorrect: true),
       Option(imageModel: Image.asset('assets/animal/gazelle.jpg'), isCorrect: false),
    ]),
    Question(text: "Horse", 
    options: [
       Option(imageModel: Image.asset('assets/animal/horse.jpg'), isCorrect: true),
       Option(imageModel: Image.asset('assets/animal/elephant.jpg'), isCorrect: false),
    ]),
    Question(text: "Crocodile", 
    options: [
       Option(imageModel: Image.asset('assets/animal/turtle.jpg'), isCorrect: false),
       Option(imageModel: Image.asset('assets/animal/crocodile.jpg'), isCorrect: true),
    ]),
    Question(text: "Bird", 
    options: [
       Option(imageModel: Image.asset('assets/animal/bird.jpg'), isCorrect: true),
       Option(imageModel: Image.asset('assets/animal/giraffe.jpg'), isCorrect: false),
    ]),
    Question(text: "Frog", 
    options: [
       Option(imageModel: Image.asset('assets/animal/tiger.jpg'), isCorrect: false),
       Option(imageModel: Image.asset('assets/animal/frog.jpg'), isCorrect: true),
    ]),
    Question(text: "Sheep", 
    options: [
       Option(imageModel: Image.asset('assets/animal/sheep.jpg'), isCorrect: true),
       Option(imageModel: Image.asset('assets/animal/elephant.jpg'), isCorrect: false),
    ]),
    Question(text: "Goat", 
    options: [
       Option(imageModel: Image.asset('assets/animal/goat.jpg'), isCorrect: true),
       Option(imageModel: Image.asset('assets/animal/horse.jpg'), isCorrect: false),
    ]),
    Question(text: "Tiger", 
    options: [
       Option(imageModel: Image.asset('assets/animal/bee.jpg'), isCorrect: false),
       Option(imageModel: Image.asset('assets/animal/tiger.jpg'), isCorrect: true),
    ]),
    Question(text: "Donkey", 
    options: [
       Option(imageModel: Image.asset('assets/animal/donkey.jpg'), isCorrect: true),
       Option(imageModel: Image.asset('assets/animal/frog.jpg'), isCorrect: false),
    ]),
    Question(text: "Camel", 
    options: [
       Option(imageModel: Image.asset('assets/animal/chicken.jpg'), isCorrect: false),
       Option(imageModel: Image.asset('assets/animal/camel.jpg'), isCorrect: true),
    ]),
    Question(text: "Fish", 
    options: [
       Option(imageModel: Image.asset('assets/animal/lion.jpg'), isCorrect: false),
       Option(imageModel: Image.asset('assets/animal/fish.jpg'), isCorrect: true),
    ]),
    Question(text: "Cow", 
    options: [
       Option(imageModel: Image.asset('assets/animal/cow.jpg'), isCorrect: true),
       Option(imageModel: Image.asset('assets/animal/gazelle.jpg'), isCorrect: false),
    ]),
    Question(text: "Chicken", 
    options: [
       Option(imageModel: Image.asset('assets/animal/snake.jpg'), isCorrect: false),
       Option(imageModel: Image.asset('assets/animal/chicken.jpg'), isCorrect: true),
    ]),
    Question(text: "Elephant", 
    options: [
       Option(imageModel: Image.asset('assets/animal/elephant.jpg'), isCorrect: true),
       Option(imageModel: Image.asset('assets/animal/crocodile.jpg'), isCorrect: false),
    ]),
    Question(text: "Gazelle", 
    options: [
       Option(imageModel: Image.asset('assets/animal/horse.jpg'), isCorrect: false),
       Option(imageModel: Image.asset('assets/animal/gazelle.jpg'), isCorrect: true),
    ]),
    Question(text: "Lion", 
    options: [
       Option(imageModel: Image.asset('assets/animal/fish.jpg'), isCorrect: false),
       Option(imageModel: Image.asset('assets/animal/lion.jpg'), isCorrect: true),
    ]),
    Question(text: "Giraffe", 
    options: [
       Option(imageModel: Image.asset('assets/animal/giraffe.jpg'), isCorrect: true),
       Option(imageModel: Image.asset('assets/animal/dog.jpg'), isCorrect: false),
    ]),
    Question(text: "Snake", 
    options: [
       Option(imageModel: Image.asset('assets/animal/snake.jpg'), isCorrect: true),
       Option(imageModel: Image.asset('assets/animal/cow.jpg'), isCorrect: false),
    ]),
    Question(text: "Turtle", 
    options: [
       Option(imageModel: Image.asset('assets/animal/donkey.jpg'), isCorrect: false),
       Option(imageModel: Image.asset('assets/animal/turtle.jpg'), isCorrect: true),
    ]),
];