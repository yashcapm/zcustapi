@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'JournalEntryItem'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_JournalEntryItem 
as select from I_JournalEntryItem
{
    key SourceLedger,
    key CompanyCode,
    key FiscalYear,
    key AccountingDocument,
    key LedgerGLLineItem,
    key Ledger,
    BalanceTransactionCurrency,
  @Aggregation.default: #SUM
@Semantics: { amount : {currencyCode: 'BalanceTransactionCurrency'} }
  AmountInBalanceTransacCrcy,
  CompanyCodeCurrency,
  @Aggregation.default: #SUM
@Semantics: { amount : {currencyCode: 'CompanyCodeCurrency'} }
  AmountInCompanyCodeCurrency,
  GlobalCurrency,
  @Aggregation.default: #SUM
@Semantics: { amount : {currencyCode: 'GlobalCurrency'} }
  AmountInGlobalCurrency,
  FunctionalCurrency,
  @Aggregation.default: #SUM
@Semantics: { amount : {currencyCode: 'FunctionalCurrency'} }
  AmountInFunctionalCurrency,
  FreeDefinedCurrency1,
  @Aggregation.default: #SUM
@Semantics: { amount : {currencyCode: 'FreeDefinedCurrency1'} }
  AmountInFreeDefinedCurrency1,
  PostingDate,
  Customer,
  Supplier,
  GLAccount,
  DocumentDate,
  ClearingDate,
  ClearingJournalEntry,
  ClearingJournalEntryFiscalYear,
  NetDueDate
} 
  
where SourceLedger = '2L'
  and IsReversed != 'X'
  and IsReversal != 'X'
    
