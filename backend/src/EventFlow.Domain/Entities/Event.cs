namespace EventFlow.Domain.Entities;

public class Event
{
    public Guid Id { get; private set; }
    public string Name { get; private set; } = string.Empty;
    public DateTime StartDate { get; private set; }
    public DateTime EndDate { get; private set; }
    public string Location { get; private set; } = string.Empty;

    private Event() { }

    public Event(Guid id, string name, DateTime startDate, DateTime endDate, string location)
    {
        if (string.IsNullOrWhiteSpace(name))
            throw new ArgumentException("Event name cannot be empty.", nameof(name));

        if (endDate < startDate)
            throw new ArgumentException("End date cannot be before start date.", nameof(endDate));

        Id = id;
        Name = name;
        StartDate = startDate;
        EndDate = endDate;
        Location = location;
    }

    public void UpdateSchedule(DateTime startDate, DateTime endDate)
    {
        if (endDate < startDate)
            throw new ArgumentException("End date cannot be before start date.", nameof(endDate));

        StartDate = startDate;
        EndDate = endDate;
    }
}
