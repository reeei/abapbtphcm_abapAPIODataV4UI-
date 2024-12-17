class ZSC_CO_JOURNAL_ENTRY_BULK_CREA definition
  public
  inheriting from CL_PROXY_CLIENT
  create public .

public section.

  methods CONSTRUCTOR
    importing
      !DESTINATION type ref to IF_PROXY_DESTINATION optional
      !LOGICAL_PORT_NAME type PRX_LOGICAL_PORT_NAME optional
    preferred parameter LOGICAL_PORT_NAME
    raising
      CX_AI_SYSTEM_FAULT .
  methods JOURNAL_ENTRY_BULK_CREATION_RE
    importing
      !INPUT type ZSC_JOURNAL_ENTRY_BULK_CREATE
    raising
      CX_AI_SYSTEM_FAULT .
protected section.
private section.
ENDCLASS.



CLASS ZSC_CO_JOURNAL_ENTRY_BULK_CREA IMPLEMENTATION.


  method CONSTRUCTOR.

  super->constructor(
    class_name          = 'ZSC_CO_JOURNAL_ENTRY_BULK_CREA'
    logical_port_name   = logical_port_name
    destination         = destination
  ).

  endmethod.


  method JOURNAL_ENTRY_BULK_CREATION_RE.

  data(lt_parmbind) = value abap_parmbind_tab(
    ( name = 'INPUT' kind = '0' value = ref #( INPUT ) )
  ).
  if_proxy_client~execute(
    exporting
      method_name = 'JOURNAL_ENTRY_BULK_CREATION_RE'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.
ENDCLASS.
