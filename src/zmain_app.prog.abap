*&---------------------------------------------------------------------*
*& Report zmain_app
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmain_app.



*===
CLASS lcl_main_app DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS: run.
ENDCLASS.                    "lcl_main_app DEFINITION
*


CLASS lcl_main_app IMPLEMENTATION.
  METHOD run.


*   Simple report (FILE + write)
    data(lo_report1) = new zsimple_report(  ).
    lo_report1->get_data( ).
    lo_report1->print_data( ).


*   report for DB in ALV
    data(lo_report2) = new zcomplex_report(  ).
    lo_report2->get_data( ).
    lo_report2->print_data( ).

  ENDMETHOD.                    "run

ENDCLASS.                    "lcl_main_app IMPLEMENTATION

START-OF-SELECTION.
 lcl_main_app=>run( ).
