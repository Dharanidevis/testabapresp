@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking processor projection'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZDD_EY_BOOKING_approver as projection on ZDD_EY_BOOKING
{
    key TravelId,
    key BookingId,
    BookingDate,
    CustomerId,
    CarrierId,
    ConnectionId,
    FlightDate,
    FlightPrice,
    CurrencyCode,
    BookingStatus,
    LastChangedAt,
    /* Associations */
    _BookingStatus,
    _BookingSupplement: redirected to composition child ZDD_EY_BOOKING_SUPPL_approver,
    _Carrier,
    _Connection,
    _Customer,
    _Travel: redirected to parent ZDD_EY_TRAVEL_approver
}
