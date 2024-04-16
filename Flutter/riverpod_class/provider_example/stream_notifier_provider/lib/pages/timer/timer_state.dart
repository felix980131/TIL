sealed class TimerState {
  final int duration;

  const TimerState(this.duration);
}

final class TimerInitial extends TimerState {
  const TimerInitial(super.duration);

  @override
  String toString() => 'TimerInitial(duration: $duration)';
}

final class TimerRunner extends TimerState {
  const TimerRunner(super.duration);

  @override
  String toString() => 'TimerRunner(duration: $duration)';
}

final class TimerPaused extends TimerState {
  const TimerPaused(super.duration);

  @override
  String toString() => 'TimerPaused(duration: $duration)';
}

final class TimerFinished extends TimerState {
  const TimerFinished() : super(0);

  @override
  String toString() => 'TimerFinished()';
}
