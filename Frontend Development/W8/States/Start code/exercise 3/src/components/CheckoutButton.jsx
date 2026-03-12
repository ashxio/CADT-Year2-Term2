export default function CheckoutButton({ total }) {
  return (
    <div className={`checkout-button ${total == 0 ? "disable" : ""}`}>
      <p>Checkout</p>
      <p className="right">{"$ " + total}</p>
    </div>
  );
}