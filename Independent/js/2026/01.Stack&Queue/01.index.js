// array로 stack 구현
class Stack {
  constructor() {
    this.array = [];
  }

  push(value) {
    this.array.push(value);
  }

  pop() {
    return this.array.pop();
  }

  peek() {
    return this.array[this.array.length - 1];
  }
}

const stack = new Stack();

stack.push(1);
stack.push(2);
stack.push(3);
console.log(stack);
const pop = stack.pop();
console.log(pop);
console.log(stack);
console.log(stack.peek());
console.log(stack);

// Queue
class Queue {
  constructor() {
    this.array = [];
  }

  enqueue(value) {
    this.array.push(value);
  }
  dequeue() {
    return this.array.shift();
  }
  peek() {
    return this.array[0];
  }
}

const queue = new Queue();

queue.enqueue("a");
queue.enqueue("b");
queue.enqueue("c");
console.log("queue ::: ", queue);
queue.dequeue();
console.log("queue ::: ", queue);
