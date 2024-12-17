CLASS lhc_ZI_JOURNALENTRY DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    TYPES: BEGIN OF ty_journalentry,
*           　ヘッダ項目
             companycode                   TYPE zi_journalentry-companycode,
             accountingdocumenttype        TYPE zi_journalentry-accountingdocument,
             ledgergroup                   TYPE zi_journalentry-ledgergroup,
             documentreferenceid           TYPE zi_journalentry-documentreferenceid,
             documentheadertext            TYPE zi_journalentry-documentheadertext,
             documentdate                  TYPE zi_journalentry-documentdate,
             postingdate                   TYPE zi_journalentry-postingdate,
             exchangeratedate              TYPE zi_journalentry-exchangeratedate,
             exchangerate                  TYPE zi_journalentry-exchangerate,
*            明細項目
             referencedocumentitem         TYPE zi_journalentryitem-referencedocumentitem,
             glaccount                     TYPE zi_journalentryitem-glaccount,
             amountintransactioncurrency   TYPE zi_journalentryitem-amountintransactioncurrency,
             taxamount                     TYPE zi_journalentryitem-taxamount,
             currencycode                  TYPE zi_journalentry-currencycode,
             taxcode                       TYPE zi_journalentryitem-taxcode,
             valuedate                     TYPE zi_journalentryitem-valuedate,
             documentitemtext              TYPE zi_journalentryitem-documentitemtext,
             assignmentreference           TYPE zi_journalentryitem-assignmentreference,
             costcenter                    TYPE zi_journalentryitem-costcenter,
             profitcenter                  TYPE zi_journalentryitem-profitcenter,
             wbselement                    TYPE zi_journalentryitem-wbselement,
             orderid                       TYPE zi_journalentryitem-orderid,
             segment                       TYPE zi_journalentryitem-segment,
             functionalarea                TYPE zi_journalentryitem-functionalarea,
             personnelnumber               TYPE zi_journalentryitem-personnelnumber,
             housebank                     TYPE zi_journalentryitem-housebank,
             housebankaccount              TYPE zi_journalentryitem-housebankaccount,
             reference1idbybusinesspartner TYPE zi_journalentryitem-reference1idbybusinesspartner,
             reference2idbybusinesspartner TYPE zi_journalentryitem-reference2idbybusinesspartner,
             reference3idbybusinesspartner TYPE zi_journalentryitem-reference3idbybusinesspartner,
             customer_copa                 TYPE zi_journalentryitem-customer_copa,
             customergroup_copa            TYPE zi_journalentryitem-customergroup_copa,
             customerindustry_copa         TYPE zi_journalentryitem-customerindustry_copa,
             customercountry_copa          TYPE zi_journalentryitem-customercountry_copa,
             salesdistrict_copa            TYPE zi_journalentryitem-salesdistrict_copa,
             soldmaterial_copa             TYPE zi_journalentryitem-soldmaterial_copa,
             soldmaterialgroup_copa        TYPE zi_journalentryitem-soldmaterialgroup_copa,
             salesorganization_copa        TYPE zi_journalentryitem-salesorganization_copa,
             distributionchannel_copa      TYPE zi_journalentryitem-distributionchannel_copa,
             wbselement_copa               TYPE zi_journalentryitem-wbselement_copa,
             functionalarea_copa           TYPE zi_journalentryitem-functionalarea_copa,
             salesorder_copa               TYPE zi_journalentryitem-salesorder_copa,
             salesorderitem_copa           TYPE zi_journalentryitem-salesorderitem_copa,
             plant_copa                    TYPE zi_journalentryitem-plant_copa,
             costcenter_copa               TYPE zi_journalentryitem-costcenter_copa,
             profitcenter_copa             TYPE zi_journalentryitem-profitcenter_copa,
             customer                      TYPE zi_journalentryitem-customer,
             duecalculationbasedate        TYPE zi_journalentryitem-duecalculationbasedate,
             cashdiscount1days             TYPE zi_journalentryitem-cashdiscount1days,
             cashdiscount1percent          TYPE zi_journalentryitem-cashdiscount1percent,
             cashdiscount2days             TYPE zi_journalentryitem-cashdiscount2days,
             cashdiscount2percent          TYPE zi_journalentryitem-cashdiscount2percent,
             paymentterms                  TYPE zi_journalentryitem-paymentterms,
             paymentmethod                 TYPE zi_journalentryitem-paymentmethod,
             paymentblockingreason         TYPE zi_journalentryitem-paymentblockingreason,
             statecentralbankpaymentreason TYPE zi_journalentryitem-statecentralbankpaymentreason,
             specialglcode                 TYPE zi_journalentryitem-specialglcode,
             supplier                      TYPE zi_journalentryitem-supplier,
             bpbankaccountinternalid       TYPE zi_journalentryitem-bpbankaccountinternalid,
             name_onetime                  TYPE zi_journalentryitem-name_onetime,
             name3_onetime                 TYPE zi_journalentryitem-name3_onetime,
             cityname_onetime              TYPE zi_journalentryitem-cityname_onetime,
             bankcountry_onetime           TYPE zi_journalentryitem-bankcountry_onetime,
             bankaccount_onetime           TYPE zi_journalentryitem-bankaccount_onetime,
             bankcontrolkey_onetime        TYPE zi_journalentryitem-bankcontrolkey_onetime,
             banknumber_onetime            TYPE zi_journalentryitem-banknumber_onetime,
             datamediumexchangekey_onetime TYPE zi_journalentryitem-datamediumexchangekey_onetime,
             languageisocode_onetime       TYPE zi_journalentryitem-languageisocode_onetime,
             withholdingtaxtype            TYPE zi_journalentryitem-withholdingtaxtype,
             withholdingtaxcode            TYPE zi_journalentryitem-withholdingtaxcode,
             withholdingtaxbaseamount      TYPE zi_journalentryitem-withholdingtaxbaseamount,
             withholdingtaxamount          TYPE zi_journalentryitem-withholdingtaxamount,
           END OF ty_journalentry.
    TYPES: BEGIN OF ty_journalentry_header,
*           　ヘッダ項目
             companycode                   TYPE string,
             accountingdocumenttype        TYPE string,
             ledgergroup                   TYPE string,
             documentreferenceid           TYPE string,
             documentheadertext            TYPE string,
             documentdate                  TYPE string,
             postingdate                   TYPE string,
             exchangeratedate              TYPE string,
             exchangerate                  TYPE string,
*            明細項目
             referencedocumentitem         TYPE string,
             glaccount                     TYPE string,
             amountintransactioncurrency   TYPE string,
             taxamount                     TYPE string,
             currencycode                  TYPE string,
             taxcode                       TYPE string,
             valuedate                     TYPE string,
             documentitemtext              TYPE string,
             assignmentreference           TYPE string,
             costcenter                    TYPE string,
             profitcenter                  TYPE string,
             wbselement                    TYPE string,
             orderid                       TYPE string,
             segment                       TYPE string,
             functionalarea                TYPE string,
             personnelnumber               TYPE string,
             housebank                     TYPE string,
             housebankaccount              TYPE string,
             reference1idbybusinesspartner TYPE string,
             reference2idbybusinesspartner TYPE string,
             reference3idbybusinesspartner TYPE string,
             customer_copa                 TYPE string,
             customergroup_copa            TYPE string,
             customerindustry_copa         TYPE string,
             customercountry_copa          TYPE string,
             salesdistrict_copa            TYPE string,
             soldmaterial_copa             TYPE string,
             soldmaterialgroup_copa        TYPE string,
             salesorganization_copa        TYPE string,
             distributionchannel_copa      TYPE string,
             wbselement_copa               TYPE string,
             functionalarea_copa           TYPE string,
             salesorder_copa               TYPE string,
             salesorderitem_copa           TYPE string,
             plant_copa                    TYPE string,
             costcenter_copa               TYPE string,
             profitcenter_copa             TYPE string,
             customer                      TYPE string,
             duecalculationbasedate        TYPE string,
             cashdiscount1days             TYPE string,
             cashdiscount1percent          TYPE string,
             cashdiscount2days             TYPE string,
             cashdiscount2percent          TYPE string,
             paymentterms                  TYPE string,
             paymentmethod                 TYPE string,
             paymentblockingreason         TYPE string,
             statecentralbankpaymentreason TYPE string,
             specialglcode                 TYPE string,
             supplier                      TYPE string,
             bpbankaccountinternalid       TYPE string,
             name_onetime                  TYPE string,
             name3_onetime                 TYPE string,
             cityname_onetime              TYPE string,
             bankcountry_onetime           TYPE string,
             bankaccount_onetime           TYPE string,
             bankcontrolkey_onetime        TYPE string,
             banknumber_onetime            TYPE string,
             datamediumexchangekey_onetime TYPE string,
             languageisocode_onetime       TYPE string,
             withholdingtaxtype            TYPE string,
             withholdingtaxcode            TYPE string,
             withholdingtaxbaseamount      TYPE string,
             withholdingtaxamount          TYPE string,
           END OF ty_journalentry_header.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zi_journalentry RESULT result.

    METHODS post FOR DETERMINE ON SAVE
      IMPORTING keys FOR zi_journalentry~post.

    METHODS fileupload FOR MODIFY
      IMPORTING keys FOR ACTION zi_journalentry~fileupload.

    METHODS downloadfile FOR MODIFY
      IMPORTING keys FOR ACTION zi_journalentry~downloadfile RESULT result.

*    METHODS outputresult FOR MODIFY
*      IMPORTING keys FOR ACTION zi_journalentry~outputresult RESULT result.

    METHODS convert_price IMPORTING i_price        TYPE ty_journalentry-amountintransactioncurrency
                                    i_currency     TYPE ty_journalentry-currencycode
                          RETURNING VALUE(r_price) TYPE ty_journalentry-amountintransactioncurrency.

ENDCLASS.

CLASS lhc_ZI_JOURNALENTRY IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD Post.
*    data:
*      ls_requestbody type zsc_journal_entry_bulk_create.
*
*    ls_requestbody = zcl_je_transaction_handler=>get_instance( )->get_requestbody( ).
*    zcl_je_callAPI=>post( is_requestbody = ls_requestbody ).

  ENDMETHOD.

  METHOD fileupload.
*    DATA: lt_entry    TYPE TABLE FOR ACTION IMPORT i_journalentrytp~post,
*          ls_entry    LIKE LINE OF lt_entry,
*          ls_glitem   LIKE LINE OF ls_entry-%param-_glitems,
*          ls_amount   LIKE LINE OF ls_glitem-_currencyamount,
*          lt_temp_key TYPE zgje_transaction_handler=>tt_temp_key,
*          ls_temp_key LIKE LINE OF lt_temp_key.
    DATA lt_journalentry TYPE STANDARD TABLE OF ty_journalentry.
*    DATA lt_journalentry_c TYPE TABLE FOR CREATE zr_generaljournalentry.
*    DATA lt_journalentryitem_c TYPE TABLE FOR CREATE zr_generaljournalentry\_item.
*
    READ TABLE keys ASSIGNING FIELD-SYMBOL(<ls_keys>) INDEX 1.
    CHECK sy-subrc = 0.
    DATA(lv_filecontent) = <ls_keys>-%param-filecontent.
*
    "XCOライブラリを使用したExcelファイルの読み取り
    DATA(lo_read_access) = xco_cp_xlsx=>document->for_file_content( lv_filecontent )->read_access(  ).
    DATA(lo_worksheet) = lo_read_access->get_workbook( )->worksheet->at_position( 1 ).

    DATA(lo_selection_pattern) = xco_cp_xlsx_selection=>pattern_builder->simple_from_to(
                                   )->from_column( xco_cp_xlsx=>coordinate->for_alphabetic_value( 'A' )
                                   )->to_column( xco_cp_xlsx=>coordinate->for_alphabetic_value( 'BT' )
                                   )->from_row( xco_cp_xlsx=>coordinate->for_numeric_value( 2 )
                                   )->get_pattern( ).

    lo_worksheet->select( lo_selection_pattern )->row_stream(
                    )->operation->write_to( REF #( lt_journalentry )
                    )->if_xco_xlsx_ra_operation~execute( ).

*    sort lt_journalentry
    zcl_je_transaction_handler=>get_instance( )->set_inputdata( lt_journalentry ).

    "create new entity
    DATA(lv_headercount) = 0.
    DATA(lv_itemcount) = 0.

    LOOP AT lt_journalentry INTO DATA(ls_journalentry) GROUP BY ( key1 = ls_journalentry-companycode
                                                                  key2 = ls_journalentry-accountingdocumenttype
                                                                  key3 = ls_journalentry-documentheadertext
                                                                  key4 = ls_journalentry-documentdate
                                                                  key5 = ls_journalentry-postingdate
                                                                  key6 = ls_journalentry-currencycode
                                                                  key7 = ls_journalentry-documentreferenceid
                                                                  key8 = ls_journalentry-ledgergroup ).
*     ヘッダ単位処理
      lv_headercount += 1.
      DATA:
        ls_requestbody type zsc_journal_entry_bulk_create,
        ls_bulkcreate type zsc_journal_entry_create_req19,
        ls_messageheader type zsc_business_document_message3,
        lt_jecreate type zsc_journal_entry_create_r_tab,
        ls_jecreate type ZSC_JOURNAL_ENTRY_CREATE_REQUE,
        ls_je type zsc_journal_entry_create_req18.

      if lv_headercount = 1.
        ls_messageheader = value #( id = value zsc_business_document_message4( content = 'test' )
                                    creation_date_time = |{ cl_abap_context_info=>get_system_date( ) }{ cl_abap_context_info=>get_system_time( ) }| ).
        ls_bulkcreate-message_header = ls_messageheader.
      endif.
      clear:
        ls_messageheader,
        ls_jecreate,
        ls_je,
        lv_itemcount.

      ls_messageheader = value #( id = value zsc_business_document_message4( content = |'test_'{ lv_headercount }| )
                                  creation_date_time = |{ cl_abap_context_info=>get_system_date( ) }{ cl_abap_context_info=>get_system_time( ) }| ).
      data(lv_test)  = cl_abap_context_info=>get_system_date( ).
      data(lv_test2) = |{ cl_abap_context_info=>get_system_date( ) }{ cl_abap_context_info=>get_system_time( ) }|.

      ls_je = value #( original_reference_document_ty = 'BKPFF'
                       business_transaction_type = 'RFBU'
                       accounting_document_type = ls_journalentry-accountingdocumenttype
                       document_reference_id = ls_journalentry-documentreferenceid
                       document_header_text = ls_journalentry-documentheadertext
                       created_by_user = sy-uname
                       company_code = ls_journalentry-companycode
                       document_date = '20241127'
                       posting_date = '20241127'
                       tax_determination_date = '20241127' ).
*                       document_date = ls_journalentry-documentdate
*                       posting_date = ls_journalentry-postingdate
*                       tax_determination_date = ls_journalentry-postingdate ).

      LOOP AT GROUP ls_journalentry INTO DATA(ls_journalentryitem).
*       明細単位処理
        data:
          lt_item type zsc_journal_entry_create__tab3,
          ls_item type ZSC_JOURNAL_ENTRY_CREATE_REQU9.
        clear:
          ls_item.
        lv_itemcount += 10.
        ls_item = value #( reference_document_item = ls_journalentryitem-referencedocumentitem
                           glaccount = value zsc_chart_of_accounts_item_co1( content = ls_journalentryitem-glaccount )
                           amount_in_transaction_currency = value zsc_amount( content = ls_journalentryitem-amountintransactioncurrency
                                                                              currency_code = ls_journalentryitem-currencycode ) ).
        append ls_item to lt_item.
      endloop.
      ls_je-item = lt_item.
      ls_jecreate = value #( message_header = ls_messageheader
                             journal_entry = ls_je ).
      append ls_jecreate to lt_jecreate.
    endloop.

    ls_bulkcreate-journal_entry_create_request = lt_jecreate.
    ls_requestbody-journal_entry_bulk_create_requ = ls_bulkcreate.

*    zcl_je_callAPI=>post( is_requestbody = ls_requestbody ).

    zcl_je_transaction_handler=>get_instance( )->set_requestbody( ls_requestbody ).

**********************************************************************
 DATA:
          lt_temp_key TYPE zcl_je_transaction_handler=>tt_temp_key,
          ls_temp_key LIKE LINE OF lt_temp_key.
    DATA lt_journalentry_c TYPE TABLE FOR CREATE zi_journalentry.
    DATA lt_journalentryitem_c TYPE TABLE FOR CREATE zi_journalentry\_item.


    "create new entity
    lv_headercount = 0.
    lv_itemcount = 0.

    LOOP AT lt_journalentry INTO ls_journalentry GROUP BY ( key1 = ls_journalentry-companycode
                                                                  key2 = ls_journalentry-accountingdocumenttype
                                                                  key3 = ls_journalentry-documentheadertext
                                                                  key4 = ls_journalentry-documentdate
                                                                  key5 = ls_journalentry-postingdate
                                                                  key6 = ls_journalentry-currencycode
                                                                  key7 = ls_journalentry-documentreferenceid
                                                                  key8 = ls_journalentry-ledgergroup ).
*     ヘッダ単位処理
      lv_headercount += 1.
      DATA:
        ls_journalentry_c            LIKE LINE OF lt_journalentry_c,
        ls_journalentryitem_c        LIKE LINE OF lt_journalentryitem_c,
        ls_journalentryitem_c_target LIKE LINE OF ls_journalentryitem_c-%target,
        lt_journalentryitem_c_target LIKE ls_journalentryitem_c-%target.

      ls_journalentry_c = CORRESPONDING #( ls_journalentry ).
      ls_journalentry_c-%cid = lv_headercount.
      ls_journalentry_c-created_by = sy-uname.
      ls_journalentry_c-created_at = cl_abap_context_info=>get_system_date( ).
      APPEND ls_journalentry_c TO lt_journalentry_c.

      LOOP AT GROUP ls_journalentry INTO ls_journalentryitem.
*       明細単位処理
        lv_itemcount += 10.
        ls_journalentryitem_c_target = CORRESPONDING #( ls_journalentryitem ).
        ls_journalentryitem_c_target-amountintransactioncurrency = convert_price( i_price    = ls_journalentryitem-amountintransactioncurrency
                                                                                  i_currency = ls_journalentryitem-currencycode ).
        ls_journalentryitem_c_target-taxamount = convert_price( i_price    = ls_journalentryitem-taxamount
                                                                i_currency = ls_journalentryitem-currencycode ).
        ls_journalentryitem_c_target-%cid = |{ lv_headercount }_{ lv_itemcount }|.
        ls_journalentryitem_c_target-item_created_by = sy-uname.
        ls_journalentryitem_c_target-item_created_at = cl_abap_context_info=>get_system_date( ).

        APPEND ls_journalentryitem_c_target TO lt_journalentryitem_c_target.
      ENDLOOP.

      ls_journalentryitem_c = VALUE #( %cid_ref = lv_headercount
                                       %target = lt_journalentryitem_c_target ).
      APPEND ls_journalentryitem_c TO lt_journalentryitem_c.

      CLEAR:
        ls_journalentry_c,
        ls_journalentryitem_c,
        ls_journalentryitem_c_target,
        lt_journalentryitem_c_target,
        lv_itemcount.

    ENDLOOP.
    MODIFY ENTITIES OF zi_journalentry IN LOCAL MODE
    ENTITY zi_journalentry
    CREATE FIELDS (
             companycode
             accountingdocumenttype
             ledgergroup
             documentreferenceid
             documentheadertext
             documentdate
             postingdate
             exchangeratedate
             exchangerate
             currencycode
             created_by
             created_at ) WITH lt_journalentry_c
     CREATE BY \_item FIELDS (
             referencedocumentitem
             glaccount
             amountintransactioncurrency
             taxamount
             currencycode
             taxcode
             valuedate
             documentitemtext
             assignmentreference
             costcenter
             profitcenter
             wbselement
             orderid
             segment
             functionalarea
             personnelnumber
             housebank
             housebankaccount
             reference1idbybusinesspartner
             reference2idbybusinesspartner
             reference3idbybusinesspartner
             customer_copa
             customergroup_copa
             customerindustry_copa
             customercountry_copa
             salesdistrict_copa
             soldmaterial_copa
             soldmaterialgroup_copa
             salesorganization_copa
             distributionchannel_copa
             wbselement_copa
             functionalarea_copa
             salesorder_copa
             salesorderitem_copa
             plant_copa
             costcenter_copa
             profitcenter_copa
             customer
             duecalculationbasedate
             cashdiscount1days
             cashdiscount1percent
             cashdiscount2days
             cashdiscount2percent
             paymentterms
             paymentmethod
             paymentblockingreason
             statecentralbankpaymentreason
             specialglcode
             supplier
             bpbankaccountinternalid
             name_onetime
             name3_onetime
             cityname_onetime
             bankcountry_onetime
             bankaccount_onetime
             bankcontrolkey_onetime
             banknumber_onetime
             datamediumexchangekey_onetime
             languageisocode_onetime
             withholdingtaxtype
             withholdingtaxcode
             item_created_by
             item_created_at ) WITH lt_journalentryitem_c
    MAPPED DATA(lt_mapped_create_header)
    REPORTED DATA(lt_mapped_reported_header)
    FAILED DATA(lt_failed_create_header).


**********************************************************************

  ENDMETHOD.

  METHOD downloadfile.
    DATA lt_journalentry TYPE STANDARD TABLE OF ty_journalentry_header WITH DEFAULT KEY.
*    DATA lt_journalentryitem type standard table of ty_journalentry_item with default key.

    "XCOライブラリを使用したExcelファイルの書き込み
    "Header情報
    DATA(lo_write_access) = xco_cp_xlsx=>document->empty( )->write_access( ).
    DATA(lo_worksheet) = lo_write_access->get_workbook( )->worksheet->at_position( 1 ).

    DATA(lo_selection_pattern) = xco_cp_xlsx_selection=>pattern_builder->simple_from_to(
                               )->from_column( xco_cp_xlsx=>coordinate->for_alphabetic_value( 'A' )
                               )->to_column( xco_cp_xlsx=>coordinate->for_alphabetic_value( 'BT' )
                               )->from_row( xco_cp_xlsx=>coordinate->for_numeric_value( 1 )
                               )->get_pattern( ).

    "ヘッダの設定（すべての項目はstring型）
    lt_journalentry = VALUE #( (  companycode = '会社コード'
                                  accountingdocumenttype = '会計伝票タイプ'
                                  ledgergroup = '元帳グループ'
                                  documentreferenceid = '参照ID'
                                  documentheadertext = 'ヘッダテキスト'
                                  documentdate = '伝票日付'
                                  postingdate = '転記日付'
                                  exchangeratedate = '換算日付'
                                  exchangerate = '換算レート'
                                  referencedocumentitem = '明細番号'
                                  glaccount = 'GL勘定コード'
                                  amountintransactioncurrency = '取引通貨額'
                                  taxamount = '税額'
                                  currencycode = '取引通貨'
                                  taxcode = '税コード'
                                  documentitemtext = '明細テキスト'
                                  assignmentreference = 'ソートキー'
                                  valuedate = '起算日'
                                  costcenter = '原価センタ'
                                  profitcenter = '利益センタ'
                                  wbselement = 'WBS要素'
                                  orderid = '指図'
                                  segment = 'セグメント'
                                  functionalarea = '機能領域'
                                  personnelnumber = '従業員番号'
                                  housebank = '取引銀行'
                                  housebankaccount = '取引銀行口座'
                                  reference1idbybusinesspartner = '参照キー1'
                                  reference2idbybusinesspartner = '参照キー2'
                                  reference3idbybusinesspartner = '参照キー3'
                                  customer_copa = '得意先(収益性分析)'
                                  customergroup_copa = '得意先グループ(収益性分析)'
                                  customerindustry_copa = '顧客業界(収益性分析)'
                                  customercountry_copa = '顧客国(収益性分析)'
                                  salesdistrict_copa = '販売地域(収益性分析)'
                                  soldmaterial_copa = '販売済み品目(収益性分析)'
                                  soldmaterialgroup_copa = '販売済み品目グループ(収益性分析)'
                                  salesorganization_copa = '販売組織(収益性分析)'
                                  distributionchannel_copa = '流通チャネル(収益性分析)'
                                  wbselement_copa = 'WBS要素(収益性分析)'
                                  functionalarea_copa = '機能領域(収益性分析)'
                                  salesorder_copa = '受注(収益性分析)'
                                  salesorderitem_copa = '受注明細(収益性分析)'
                                  plant_copa = 'プラント(収益性分析)'
                                  costcenter_copa = '原価センタ(収益性分析)'
                                  profitcenter_copa = '利益センタ(収益性分析)'
                                  customer = '得意先'
                                  duecalculationbasedate = '期日計算基準日'
                                  cashdiscount1days = '現金割引期間 1'
                                  cashdiscount1percent = '現金割引率 1'
                                  cashdiscount2days = '現金割引期間 2'
                                  cashdiscount2percent = '現金割引率 2'
                                  paymentterms = '支払条件'
                                  paymentmethod = '支払方法'
                                  paymentblockingreason = '支払保留'
                                  statecentralbankpaymentreason = '中央銀行コード'
                                  specialglcode = '特殊仕訳コード'
                                  supplier = '仕入先'
                                  bpbankaccountinternalid = 'パートナ銀行タイプ'
                                  name_onetime = '名称(ワンタイム)'
                                  name3_onetime = '名称3(ワンタイム)'
                                  cityname_onetime = '市区町村(ワンタイム)'
                                  bankcountry_onetime = '銀行の国/地域(ワンタイム)'
                                  bankaccount_onetime = '口座番号(ワンタイム)'
                                  bankcontrolkey_onetime = '預金種別(ワンタイム)'
                                  banknumber_onetime = '銀行コード(ワンタイム)'
                                  datamediumexchangekey_onetime  = '手数料負担Code(ワンタイム)'
                                  languageisocode_onetime = '言語キー(ワンタイム)'
                                  withholdingtaxtype = '源泉徴収税タイプ'
                                  withholdingtaxcode = '源泉徴収税コード'
                                  withholdingtaxbaseamount = '源泉徴収税基準額'
                                  withholdingtaxamount = '源泉徴収税額' ) ).

    lo_worksheet->select( lo_selection_pattern
        )->row_stream(
        )->operation->write_from( REF #( lt_journalentry )
        )->execute( ).

    DATA(lv_file_content) = lo_write_access->get_file_content( ).

    result = VALUE #( FOR key IN keys (
                        %cid = key-%cid
                        %param = VALUE #(  filecontent = lv_file_content
                                           filename = 'journalentryTemplate'
                                           fileextension = 'xlsx'
                                           mimetype = 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' )
                       ) ).

  ENDMETHOD.

  METHOD convert_price.
* https://userapps.support.sap.com/sap/support/knowledge/en/2973787
    SELECT SINGLE * FROM i_currency
    WHERE currency = @i_currency
    INTO @DATA(ls_curx).

    CHECK sy-subrc IS INITIAL.
    r_price = i_price * ( 10 ** ls_curx-decimals / 100 ).
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZI_JOURNALENTRY DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS save_modified REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZI_JOURNALENTRY IMPLEMENTATION.

  METHOD save_modified.
  data:
      ls_requestbody type zsc_journal_entry_bulk_create.

    ls_requestbody = zcl_je_transaction_handler=>get_instance( )->get_requestbody( ).
    zcl_je_callAPI=>post( is_requestbody = ls_requestbody ).
  ENDMETHOD.

  METHOD cleanup_finalize.
    zcl_je_transaction_handler=>get_instance( )->clean_up( ).
  ENDMETHOD.

ENDCLASS.
