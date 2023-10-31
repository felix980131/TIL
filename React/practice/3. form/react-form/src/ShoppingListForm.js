import { useState } from "react";

function ShoppingListForm({ addItem }) {
  const [formData, setFormData] = useState({ product: "", quantity: 0 });
  const [productIsValid, setProductIsValid] = useState(false);

  const validate = (product) => {
    if (product.length === 0) {
      setProductIsValid(false);
    } else {
      setProductIsValid(true);
    }
  };

  const handleChange = (event) => {
    if (event.target.name === "product") {
      validate(event.target.value);
    }

    setFormData((current) => {
      return {
        ...current,
        [event.target.name]: event.target.value,
      };
    });
  };

  const handleSubmit = (e) => {
    e.preventDefault();

    if (productIsValid) {
      addItem(formData);

      setFormData({ product: "", quantity: 0 });
      setProductIsValid(false);
    }
  };

  return (
    <form onSubmit={handleSubmit}>
      <h1>
        Product is {formData.product} and quantity is {formData.quantity}
      </h1>
      <label htmlFor="product">Product Name</label>
      <input
        type="text"
        placeholder="product name"
        name="product"
        id="product"
        onChange={handleChange}
        value={formData.product}
      />

      {!productIsValid && (
        <p style={{ color: "red" }}>Product name cannot be empty</p>
      )}

      <label htmlFor="quantity">Quantity</label>
      <input
        type="number"
        placeholder="1"
        name="quantity"
        id="quantity"
        onChange={handleChange}
        value={formData.quantity}
      />
      <button>Add Item</button>
    </form>
  );
}

export default ShoppingListForm;
