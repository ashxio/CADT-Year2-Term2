import React from "react";
import OrderCard from "./components/OrderCard";
import CheckoutButton from "./components/CheckoutButton";

const ORDERS = [
  { product: "Banana", price: 69, quantity: 3 },
  { product: "Computer", price: 167, quantity: 4 },
  { product: "Table", price: 6769, quantity: 3 },
];

export default function App() {
  const [orders, setOrders] = React.useState(ORDERS);

  function updateQuantity(index, change) {
    setOrders((prevOrders) =>
      prevOrders.map((order, i) =>
        i === index
          ? { ...order, quantity: Math.max(order.quantity + change, 0) }
          : order
      )
    );
  }

  function total() {
    return orders.reduce((sum, order) => sum + order.price * order.quantity, 0);
  }

  return (
    <>
      <header>
        <h1>Your orders</h1>
      </header>

      <div className="order-list">
        {orders.map((order, index) => (
          <OrderCard
            key={index}
            product={order.product}
            price={order.price}
            quantity={order.quantity}
            onIncrease={() => updateQuantity(index, 1)}
            onDecrease={() => updateQuantity(index, -1)}
          />
        ))}
      </div>

      <CheckoutButton total={total().toFixed(2)} />
    </>
  );
}