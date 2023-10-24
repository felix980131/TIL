function ColorList({ colors }) {
  return (
    <div>
      <p>Color List</p>
      <ul>
        {colors.map((color) => (
          <li style={{ color: color }}>{color}</li>
        ))}
      </ul>
    </div>
  );
}

export default ColorList;
