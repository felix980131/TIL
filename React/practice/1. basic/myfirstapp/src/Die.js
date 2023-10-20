import styles from "./Die.module.css";

function Die() {
  const roll = Math.floor(Math.random() * 6) + 1;
  return <h1 className={styles.Die}>Die Roll : {roll}</h1>;
}

export default Die;
