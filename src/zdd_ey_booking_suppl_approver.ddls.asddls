@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking supplement processor'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZDD_EY_BOOKING_SUPPL_approver as projection on ZDD_EY_BOOKSUPPL
{
    key TravelId,
    key BookingId,
    key BookingSupplementId,
    SupplementId,
    Price,
    CurrencyCode,
    LastChangedAt,
    /* Associations */
    _Booking: redirected to parent ZDD_EY_BOOKING_approver,
    _Product,
    _SupplementText,
    _Travel: redirected to ZDD_EY_TRAVEL_approver
}
