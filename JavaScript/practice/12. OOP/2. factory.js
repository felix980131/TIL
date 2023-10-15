function hex(r, g, b) {
  return "#" + ((1 << 24) + (r << 16) + (g << 8) + b).toString(16).slice(1);
}

function rgb(r, g, b) {
  return `rgb(${r}, ${g}, ${b})`;
}

// 팩토리 함수
function makeColor(r, g, b) {
  const color = {};
  color.r = r;
  color.g = g;
  color.b = b;

  color.rgb = function () {
    const { r, g, b } = this;
    return `rgb(${r}, ${g}, ${b})`;
  };

  color.hex = function () {
    const { r, g, b } = this;
    return "#" + ((1 << 24) + (r << 16) + (g << 8) + b).toString(16).slice(1);
  };

  return color;
}

const color = makeColor(12, 2, 31);

// 생성자 함수
function Color(r, g, b) {
  this.r = r;
  this.g = g;
  this.b = b;

  // 각 객체마다 다른 함수를 지정하게 됨
  // this.rgb = function () {
  //   const { r, g, b } = this;
  //   return `rgb(${r}, ${g}, ${b})`;
  // };
}

// 각 객체마다 같은 함수를 지정하게 됨
Color.prototype.rgb = function () {
  const { r, g, b } = this;
  return `rgb(${r}, ${g}, ${b})`;
};

const color2 = new Color(255, 40, 10);
const color3 = new Color(123, 2, 110);
