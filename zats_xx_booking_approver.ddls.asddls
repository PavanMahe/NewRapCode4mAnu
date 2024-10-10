@EndUserText.label: 'My Travel processor projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZATS_XX_BOOKING_APPROVER as projection on ZATS_XX_BOOKING
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
    _Carrier,
    _Connection,
    _Customer,
    _Travel: redirected to parent ZATS_XX_TRAVEL_APPROVER
}
