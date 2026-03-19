export default function Entity({ name, health}) {
  return (
    <section className="container">
      <h2>{name} Health</h2>
      <p>{health}</p>
    </section>
  );
}