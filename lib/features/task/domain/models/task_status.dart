enum TaskStatus {
  pending,
  completed;

  bool get isPending => this == pending;
}
