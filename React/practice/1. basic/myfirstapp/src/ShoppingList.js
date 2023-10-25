import ShoppingListItem from "./ShoppingListItem";

function ShoppingList({ items }) {
  return (
    <ul>
      {items.map((item) => (
        <ShoppingListItem obj={item} />
      ))}
    </ul>
  );
}

export default ShoppingList;
