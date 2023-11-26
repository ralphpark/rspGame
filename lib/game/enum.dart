const assetsPath = 'assets/images';
enum InputType{
  rock,
  paper,
  scissors;

  String get path => '$assetsPath/$name.png';
}

enum Result{
  win('Player Win!'),
  draw('무승부!'),
  lose('CPU Win!');

  const Result(this.displayString);
  final String displayString;
}

