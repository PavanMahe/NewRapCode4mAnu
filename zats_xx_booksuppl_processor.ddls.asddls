@EndUserText.label: 'My Travel processor projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZATS_XX_BOOKSUPPL_PROCESSOR 
    as projection on ZATS_XX_BOOKSUPPL
{
    key TravelId,
    key BookingId,
    key BookingSupplementId,
    SupplementId,
    Price,
    CurrencyCode,
    LastChangedAt,
    /* Associations */
    _Booking: redirected to parent ZATS_XX_BOOKING_PROCESSOR,
    _Travel: redirected to ZATS_XX_TRAVEL_PROCESSOR
}
