CLASS zsimple_report DEFINITION INHERITING FROM ZREPORT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_data REDEFINITION.
    METHODS: print_data REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zsimple_report IMPLEMENTATION.
  METHOD get_data.
    data(lo_data) = new zdata_from_file(  ).
    lo_data->read_data( ).
  ENDMETHOD.                    "get_Data
  METHOD print_data.
    data(lo_print) = new zprint_simple(  ).
    lo_print->write_data( ).
  ENDMETHOD.                    "print_data
ENDCLASS.
