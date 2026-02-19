export default function Place({ title, image }) {
  return (
    <li className="place-item">
      <button>
        <img src={image.src} alt={image.alt} />
        <h3>{title}</h3>
      </button>
    </li>
  );
}