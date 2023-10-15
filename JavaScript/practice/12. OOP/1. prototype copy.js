String.prototype.hello = function () {
  console.log(this);
};

const a = "a";

// 모든 문자열 객체에서 hello 메서드를 사용할 수 있다.
a.hello();
