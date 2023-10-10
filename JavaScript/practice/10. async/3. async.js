async function hello() {
  return "Hello";
}

const sing = async () => {
  return "Sing";
};

sing()
  .then((data) => {
    console.log(data);
  })
  .catch((error) => {
    console.log(error);
  });

const error = async () => {
  throw new Error("Problem");
};

error()
  .then((data) => {
    console.log(data);
  })
  .catch((error) => {
    console.log(error);
  });

const delayedColorChange = (newColor, delay) => {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      document.body.style.backgroundColor = newColor;
      resolve();
    }, delay);
  });
};

async function rainbow() {
  await delayedColorChange("red", 1000);
  await delayedColorChange("orange", 1000);
  await delayedColorChange("yellow", 1000);
}
