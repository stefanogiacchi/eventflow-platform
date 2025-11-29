using EventFlow.Application.Events.Queries;
using MediatR;
using Microsoft.Extensions.Logging;

namespace EventFlow.Application.Events.Queries;

public class GetEventByIdQueryHandler : IRequestHandler<GetEventByIdQuery, EventDto>
{
    private readonly ILogger<GetEventByIdQueryHandler> _logger;

    public GetEventByIdQueryHandler(ILogger<GetEventByIdQueryHandler> logger)
    {
        _logger = logger;
    }

    public Task<EventDto> Handle(GetEventByIdQuery request, CancellationToken cancellationToken)
    {
        // Placeholder: in real implementation, fetch from DB
        var dto = new EventDto(
            request.Id,
            "Sample Event",
            DateTime.UtcNow.AddDays(7),
            DateTime.UtcNow.AddDays(8),
            "Virtual");

        _logger.LogInformation("Returning sample event with Id {Id}", dto.Id);

        return Task.FromResult(dto);
    }
}
