*&---------------------------------------------------------------------*
*& Report ZOT_29_P_OOP
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsy_009_p_oop.

TABLES: mcha.

INCLUDE ZSY_009_I_OOP_SEL.
INCLUDE ZSY_009_I_OOP_TOP.

INITIALIZATION.

  CREATE OBJECT go_alv
    EXPORTING
      v_matnr = p_malzm.                " Malzeme numarası

AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_malzm.

  go_alv->search_help(  ).

START-OF-SELECTION.

  go_alv->iv_matnr = p_malzm.

  go_alv->display_alv( )."classın içindeki display_alv methodunu çağırıyorum
