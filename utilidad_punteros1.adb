with Ada.Integer_Text_Io;
use Ada.Integer_Text_Io;

--Este programa es un complemento de "Utilidad_punteros". Con este c�digo, se prueba que en una funci�n no se pueden tener
--par�metros de salida.
procedure Utilidad_Punteros1 is

   A,
   B : Integer := 5;

   function Sumar (
         X,
         Y : Integer)
     return Integer is
   begin
      X:=0;
      return X+Y;
   end Sumar;

begin
   Put(Sumar(A,B));
end Utilidad_Punteros1;
