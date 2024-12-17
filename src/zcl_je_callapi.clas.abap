CLASS zcl_je_callapi DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
*    interfaces if_oo_adt_classrun.
    class-METHODS post
      IMPORTING is_requestbody TYPE zsc_journal_entry_bulk_create.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_je_callapi IMPLEMENTATION.
  METHOD post.
    data:
      lo_sys_exception TYPE REF TO cx_ai_system_fault.
    TRY.
        DATA(destination) = cl_soap_destination_provider=>create_by_comm_arrangement(
          comm_scenario  = 'ZCS_JOURNALENTRY'
         service_id     = 'ZOBS_JOURNALENTRY_SPRX'
*     comm_system_id = '<communication system identifier>'
        ).

        DATA(proxy) = NEW zsc_co_journal_entry_bulk_crea( destination = destination ).

        proxy->journal_entry_bulk_creation_re(
          EXPORTING
            input = is_requestbody
        ).

        " trigger async call
*        COMMIT WORK.
      CATCH cx_soap_destination_error.
        " handle error
      CATCH cx_ai_system_fault INTO lo_sys_exception..
        " handle error
    ENDTRY.
* METHOD if_oo_adt_classrun~main
*    try.
*    data(destination) = cl_soap_destination_provider=>create_by_comm_arrangement(
*      comm_scenario  = 'ZCS_JOURNALENTRY'
*     service_id     = 'ZOBS_JOURNALENTRY_SPRX'
**     comm_system_id = '<communication system identifier>'
*    ).
*
*    data(proxy) = new zsc_co_journal_entry_bulk_crea( destination = destination ).
*
*    " fill request
*    data(request) = value zsc_journal_entry_bulk_create(
*      journal_entry_bulk_create_requ = value zsc_journal_entry_create_req19(
*        message_header = value zsc_business_document_message3(
*          id = value zsc_business_document_message4( content = 'test' )
*          creation_date_time = '20240607013303.624'
*        )
*        journal_entry_create_request = value zsc_journal_entry_create_r_tab(
*          ( message_header = value zsc_business_document_message3(
*              id = value zsc_business_document_message4( content = 'test' )
**              uuid = value zsc_uuid( content = 'b8f61816-2681-d731-f073-a04c34f66330' )
*              creation_date_time = '20240607013303.624'
*            )
*            journal_entry = value zsc_journal_entry_create_req18(
*              original_reference_document_ty = 'BKPFF'
*              business_transaction_type = 'RFBU'
*              accounting_document_type = 'SA'
*              document_reference_id = '1234567890'
*              document_header_text = 'BTPABAPEnvRAP経由転記test'
*              created_by_user = 'CC0000000003'
*              company_code = '1510'
*              document_date = '20241126'
*              posting_date = '20241127'
*              tax_determination_date = '20241128'
*              item = value zsc_journal_entry_create__tab3(
*                (
*                  reference_document_item = '1'
*                  glaccount = value zsc_chart_of_accounts_item_co1( content = '10010000' )
*                  amount_in_transaction_currency = value zsc_amount( content = '100' currency_code = 'JPY' )
**                  account_assignment = value zsc_journal_entry_create_requ8( profit_center = '15100001' )
*                )
*                (
*                reference_document_item = '2'
*                glaccount = value zsc_chart_of_accounts_item_co1( content = '10010000' )
*                amount_in_transaction_currency = value zsc_amount( content = '-100' currency_code = 'JPY' )
**                account_assignment = value zsc_journal_entry_create_requ8( profit_center = '1144110190' )
*                )
*              )
*            )
*          )
*        )
*      )
*    ).
*
*
*    proxy->journal_entry_bulk_creation_re(
*      exporting
*        input = request
*    ).
*
*    " trigger async call
*    commit work.
*    out->write( 'OK!' ).
*  catch cx_soap_destination_error.
*    " handle error
*    out->write( 'error1' ).
*  catch cx_ai_system_fault.
*    " handle error
*    out->write( 'error2' ).
*endtry.
*
* ENDMETHOD.
  ENDMETHOD.
ENDCLASS.
