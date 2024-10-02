void main() {
  int n = 10; // Change this value to generate more numbers in the series
  printFibonacci(n);
}

void printFibonacci(int n) {
  int a = 0, b = 1;

  for (int i = 1; i < n; i++) {
    print(a);
    int next = a + b;
    a = b;
    b = next;
  }
}
