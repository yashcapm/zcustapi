@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
define view entity ZC_JOURNALENTRYITEM
  as select from ZI_JOURNALENTRYITEM
{
  key SourceLedger,
  key CompanyCode,
  key FiscalYear,
  key AccountingDocument,
  key LedgerGLLineItem,
  key Ledger,
  BalanceTransactionCurrency,
  AmountInBalanceTransacCrcy,
  CompanyCodeCurrency,
  AmountInCompanyCodeCurrency,
  GlobalCurrency,
  AmountInGlobalCurrency,
  FunctionalCurrency,
  AmountInFunctionalCurrency,
  FreeDefinedCurrency1,
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
