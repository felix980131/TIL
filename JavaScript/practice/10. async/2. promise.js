// CallBack
const requestCallback = (url, success, fail) => {
  const delay = Math.floor(Math.random() * 4500) + 500;
  setTimeout(() => {
    if (delay > 4000) {
      fail();
    } else {
      success();
    }
  }, delay);
};

// requestCallback(
//   "test1.com",
//   function () {
//     console.log("success_test1");
//     requestCallback(
//       "test2.com",
//       function () {
//         console.log("success_test2");
//         requestCallback(
//           "test3.com",
//           function () {
//             console.log("success_test3");
//           },
//           function () {
//             console.log("fail_test3");
//           }
//         );
//       },
//       function () {
//         console.log("fail_test2");
//       }
//     );
//   },
//   function () {
//     console.log("fail_test1");
//   }
// );

// Promise
const requestPromise = (url) => {
  return new Promise((resolve, reject) => {
    const delay = Math.floor(Math.random() * 4500) + 500;
    setTimeout(() => {
      if (delay > 4000) {
        reject("Time Out");
      } else {
        resolve("Success");
      }
    }, delay);
  });
};

// requestPromise("test1.com")
//   .then(() => {
//     console.log("success_test1");

//     requestPromise("test2.com")
//       .then(() => {
//         console.log("success_test2");
//       })
//       .catch(() => {
//         console.log("fail_test2");
//       });
//   })
//   .catch(() => {
//     console.log("fail_test1");
//   });

requestPromise("test1.com")
  .then(() => {
    console.log("success_test1");

    return requestPromise("test2.com");
  })
  .then(() => {
    console.log("success_test2");

    return requestPromise("test3.com");
  })
  .then(() => {
    console.log("success_test3");
  })
  .catch(() => {
    console.log("Error");
  });
