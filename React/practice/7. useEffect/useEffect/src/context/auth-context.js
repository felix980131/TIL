import React, { useState, useEffect } from "react";

// 기본 컨텍스트 생성
const AuthContext = React.createContext({
  isLoggedIn: false,
  onLogout: () => {},
  onLogin: (email, password) => {},
});

export const AuthContextProvider = (props) => {
  const [isLoggedIn, setIsLoggedIn] = useState(false);

  useEffect(() => {
    // 로컬 스토리지에 있는 데이터를 확인한 후, 데이터가 LOGGED_IN하면 로그인 상태로 전환
    const storedLoggedIn = localStorage.getItem("isLoggedIn");

    if (storedLoggedIn === "LOGGED_IN") {
      setIsLoggedIn(true);
    }
  }, []);

  const loginHandler = () => {
    // 로컬 스토리지에 데이터 저장
    localStorage.setItem("isLoggedIn", "LOGGED_IN");
    setIsLoggedIn(true);
  };

  const logoutHandler = () => {
    // 로컬 스토리지 데이터 삭제
    localStorage.removeItem("isLoggedIn");
    setIsLoggedIn(false);
  };

  return (
    <AuthContext.Provider
      value={{
        isLoggedIn: isLoggedIn,
        onLogout: logoutHandler,
        onLogin: loginHandler,
      }}
    >
      {props.children}
    </AuthContext.Provider>
  );
};

export default AuthContext;
