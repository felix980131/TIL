import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier_provider/models/todo_model.dart';

class TodosNotifier extends StateNotifier<List<Todo>> {
  TodosNotifier() : super([]);

  // todo 추가
  void addTodo(String desc) {
    state = [...state, Todo.add(desc: desc)];
  }

  // todo 완료 변경
  void toggleTodo(String id) {
    state = [
      for (final todo in state)
        if (todo.id == id) todo.copyWith(completed: !todo.completed) else todo
    ];
  }

  // todo 삭제
  void removeTodo(String id) {
    state = [
      for (final todo in state)
        if (todo.id != id) todo
    ];
  }
}

final todosProvider = StateNotifierProvider<TodosNotifier, List<Todo>>((ref) {
  return TodosNotifier();
});
