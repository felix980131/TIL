import { v4 as uuid } from "uuid";
import { useState } from "react";

function EmojiClicker() {
  const [emojis, setEmojis] = useState([{ id: uuid(), emoji: "😀" }]);

  const addEmoji = () => {
    setEmojis((oldEmojis) => {
      return [...oldEmojis, { id: uuid(), emoji: "🐶" }];
    });
  };

  const deleteEmoji = (id) => {
    setEmojis((oldEmojis) => {
      return oldEmojis.filter((e) => e.id != id);
    });
  };

  return (
    <div>
      {emojis.map((e) => (
        <span
          key={e.id}
          style={{ fontSize: "4rem" }}
          onClick={() => {
            deleteEmoji(e.id);
          }}
        >
          {e.emoji}
        </span>
      ))}
      <button onClick={addEmoji}>Add Emoji</button>
    </div>
  );
}

export default EmojiClicker;
