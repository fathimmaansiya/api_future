import 'dart:async';

void main() async {
  final myStream = NumberCreator().stream;
  // myStream.listen(
  //   (event) => print("data:$event"),
  // );
  print("main function");
}

class NumberCreator {
  int count = 1;
  final controllerSt = StreamController<int>();
  NumberCreator() {
    Timer.periodic(Duration(seconds: 2), (timer) {
      if (timer.tick <= 10) {
        controllerSt.sink.add(timer.tick);
        print(timer.tick);
        // count++;
      } else {
        Future.delayed(Duration(seconds: 13), () {
          print("after 13 sec");
        });

        timer.cancel();
      }
    });
  }
  Stream<int> get stream => controllerSt.stream;
}
