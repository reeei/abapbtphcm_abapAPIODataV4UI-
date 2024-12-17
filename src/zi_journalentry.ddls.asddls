@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '会計伝票ヘッダデータモデルビュー'
define root view entity ZI_JOURNALENTRY
  as select from zje_header
  composition [0..*] of ZI_JOURNALENTRYITEM as _Item
{
  key uuid as Uuid,
      companycode,
      accountingdocument,
      ledgergroup,
      documentreferenceid,
      documentheadertext,
      postingfiscalperiod,
      accountingdocumenttype,
      documentdate,
      postingdate,
      exchangeratedate,
      exchangerate,
      currencycode,

      messageid,
      messageno,
      message,
      
      @Semantics.user.createdBy: true
      created_by            as Created_By,
      @Semantics.systemDateTime.createdAt: true
      created_at            as Created_At,
      @Semantics.user.lastChangedBy: true
      last_changed_by       as Last_Changed_By,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as Last_Changed_At,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as Local_Last_Changed_At,
      _Item
}
