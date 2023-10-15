class Color {
  // 생성자
  constructor(r, g, b) {
    this.r = r;
    this.g = g;
    this.b = b;
  }

  innerRGB() {
    const { r, g, b } = this;
    return `${r}, ${g}, ${b}`;
  }

  // 인스턴스들이 모두 같은 함수를 사용하게 된다.
  rgb() {
    return `rgb(${this.innerRGB()})`;
  }

  hex() {
    const { r, g, b } = this;
    return "#" + ((1 << 24) + (r << 16) + (g << 8) + b).toString(16).slice(1);
  }
}

const c1 = new Color(1, 2, 3);
const c2 = new Color(1, 2, 3);
