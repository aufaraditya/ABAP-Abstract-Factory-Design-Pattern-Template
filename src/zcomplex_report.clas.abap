CLASS zcomplex_report DEFINITION INHERITING FROM ZREPORT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
   METHODS: get_data REDEFINITION.
    METHODS: print_data REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcomplex_report IMPLEMENTATION.
METHOD get_data.
    DATA(lo_data) = new zdata_from_db(  ).
    lo_data->read_data( ).
  ENDMETHOD.                    "get_data
  METHOD print_data.
    data(lo_print) = new zprint_alv(  ).
    lo_print->write_data( ).
  ENDMETHOD.                    "print_data
ENDCLASS.
