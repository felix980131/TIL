import { Link } from "react-router-dom";

const DUMMY_EVENTS = [
  { id: "e1", title: "Some Event1" },
  { id: "e2", title: "Some Event2" },
  { id: "e3", title: "Some Event3" },
];

function EventsPage() {
  return (
    <>
      <h1>EventsPage</h1>
      <ul>
        {DUMMY_EVENTS.map((event) => (
          <li key={event.id}>
            <Link to={event.id}>{event.title}</Link>
          </li>
        ))}
      </ul>
    </>
  );
}

export default EventsPage;
