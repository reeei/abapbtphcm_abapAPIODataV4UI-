@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '会計伝票ヘッダプロジェクションビュー'
@Metadata.allowExtensions: true
define root view entity ZC_JournalEntry
  provider contract transactional_query
  as projection on ZI_JOURNALENTRY
{
  key Uuid,
      companycode,
      accountingdocument,
      documentreferenceid,
      postingfiscalperiod,
      accountingdocumenttype,
      ledgergroup,
      documentheadertext,
      documentdate,
      postingdate,
      exchangeratedate,
      exchangerate,
      currencycode,
      @Semantics.user.createdBy: true
      Created_By,
      @Semantics.systemDateTime.createdAt: true
      Created_At,
      @Semantics.user.lastChangedBy: true
      Last_Changed_By,
      @Semantics.systemDateTime.lastChangedAt: true
      Last_Changed_At,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      Local_Last_Changed_At,
      _Item : redirected to composition child ZC_JournalEntryItem
}
