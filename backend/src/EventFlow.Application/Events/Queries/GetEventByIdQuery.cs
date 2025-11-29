using MediatR;

namespace EventFlow.Application.Events.Queries;

public sealed record GetEventByIdQuery(Guid Id) : IRequest<EventDto>;

public sealed record EventDto(Guid Id, string Name, DateTime StartDate, DateTime EndDate, string Location);
