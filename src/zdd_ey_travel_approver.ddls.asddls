@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Processor projection layer'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define root view entity ZDD_EY_TRAVEL_approver as projection on ZZ_DD_EY_TRAVEL_ROOT
{
    key TravelId,
    AgencyId,
    CustomerId,
    BeginDate,
    EndDate,
    BookingFee,
    TotalPrice,
    CurrencyCode,
    Description,
    OverallStatus,
    AgencyName,
    CustomerName,
    StatusText,
    Criticality,    
    /* Associations */
    _Agency,
    _Booking: redirected to composition child ZDD_EY_BOOKING_approver,
    _Currency,
    _Customer,
    _OverallStatus
}
