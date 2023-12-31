const redux = require("redux");

// 리듀서 함수
const counterReducer = (state = { counter: 0 }, action) => {
  if (action.type === "increment") {
    return {
      counter: state.counter + 1,
    };
  }

  if (action.type === "decrement") {
    return {
      counter: state.counter - 1,
    };
  }

  return state;
};

// 리덕스 저장소 생성
const store = redux.createStore(counterReducer);

// console.log(store.getState());

const counterSubscriber = () => {
  const lastestState = store.getState();
  console.log(lastestState);
};

// 리덕스 저장소 구독
store.subscribe(counterSubscriber);

// 액션 발송
store.dispatch({ type: "increment" });
store.dispatch({ type: "increment" });
store.dispatch({ type: "decrement" });
store.dispatch({ type: "decrement" });
