with Ada.Integer_Text_Io;
use Ada.Integer_Text_Io;

--Este programa es un complemento de "Utilidad_punteros". Con este código, se prueba que en una función no se pueden tener
--parámetros de salida.
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
