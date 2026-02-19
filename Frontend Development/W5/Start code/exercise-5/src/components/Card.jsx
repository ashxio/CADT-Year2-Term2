export default function Card ({ name, image, hobbies }){
    return (
    <div className="card">
        <img src={image.src} alt={image.alt} />
        <h4>{name}</h4>
        <p>{hobbies}</p>
    </div>
  );
}