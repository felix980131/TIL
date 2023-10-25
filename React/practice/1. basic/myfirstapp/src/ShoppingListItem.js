function ShoppingListItem({ obj }) {
  return (
    <li
      key={obj.id}
      style={{
        color: obj.completed ? "grey" : "red",
        textDecoration: obj.completed ? "line-through" : "none",
      }}
    >
      {obj.item} - {obj.quantity}
    </li>
  );
}

export default ShoppingListItem;
