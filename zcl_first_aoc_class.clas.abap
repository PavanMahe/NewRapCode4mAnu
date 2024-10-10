CLASS zcl_first_aoc_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_FIRST_AOC_CLASS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    "write: 'chalga kya?'.
*    cl_numberrange_runtime=>number_get(
*          EXPORTING
*            nr_range_nr       = '01'
*            object            = CONV #( '/DMO/TRAVL' )
*            quantity          =  CONV #( 2 )
*          IMPORTING
*            number            = DATA(number_range_key)
*            returncode        = DATA(number_range_return_code)
*            returned_quantity = DATA(number_range_returned_quantity)
*        ).
    CL_SCAL_UTILS=>date_compute_day(
      EXPORTING
        iv_date           = sy-datum
      IMPORTING
*        ev_weekday_number =
        ev_weekday_name   = data(lv_dat)
    ).
    out->write( lv_dat ).
*    out->write( number_range_return_code ).
*    out->write( number_range_returned_quantity ).

  ENDMETHOD.
ENDCLASS.
