void main() {
  Stopwatch watch = Stopwatch();
  int counter = 0;
  if (counter == 0) {
    watch.start();
    print(watch.isRunning);
    print(watch.elapsed);
    print("Watch is running");
    watch.stop();
    print(watch.isRunning);
    print(watch.elapsed);
  }
  // watch.start();
  // print(watch.elapsed);
  // watch.stop();
  // print(watch.elapsedTicks);
  //  watch.start();
  // print(watch.elapsed);
  // watch.stop();
  // print(watch.elapsed);
  // watch.reset();
  // print(watch.elapsed);
}
