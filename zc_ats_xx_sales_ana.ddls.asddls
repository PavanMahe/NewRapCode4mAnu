@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Analytics Consumption view'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Analytics.query: true
define view entity ZC_ATS_XX_SALES_ANA 
as select from ZI_ATS_XX_SALES_CUBE
{
    @AnalyticsDetails.query.axis: #ROWS
    key _BusinessPartner.CompanyName,
    @AnalyticsDetails.query.axis: #ROWS
    key _BusinessPartner.CountryName,
    @Aggregation.default: #SUM
    @Semantics.amount.currencyCode: 'CurrencyCode'
    @AnalyticsDetails.query.axis: #COLUMNS
    GrossAmount,
    @AnalyticsDetails.query.axis: #ROWS
    @Consumption.filter.selectionType: #SINGLE
    CurrencyCode,
    @Semantics.quantity.unitOfMeasure: 'UnitOfMeasure'
    @AnalyticsDetails.query.axis: #COLUMNS
    Quantity,
    @AnalyticsDetails.query.axis: #ROWS
    UnitOfMeasure
}
