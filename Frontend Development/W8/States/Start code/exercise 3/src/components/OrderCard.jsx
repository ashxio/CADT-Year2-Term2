export default function OrderCard({ product, price, quantity, onIncrease, onDecrease }) {
  return (
    <div className="order">
      <div>
        <h4>{product}</h4>
        <small>${price.toFixed(2)}</small>
      </div>

      <div className="order-quantity">
        <div
          className={`order-button ${quantity === 0 ? "disable" : ""}`}
          onClick={quantity > 0 ? onDecrease : null} // disabled when 0
        >
          -
        </div>
        <h4>{quantity}</h4>
        <div className="order-button" onClick={onIncrease}>
          +
        </div>
      </div>
    </div>
  );
}