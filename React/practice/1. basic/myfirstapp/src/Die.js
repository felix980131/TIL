import styles from "./Die.module.css";

function Die({ numSize = 6 }) {
  const roll = Math.floor(Math.random() * numSize) + 1;
  return (
    <h1 className={styles.Die}>
      {numSize} size Die Roll : {roll}
    </h1>
  );
}

export default Die;
