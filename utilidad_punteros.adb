with Ada.Integer_Text_Io;
use Ada.Integer_Text_Io;

--Con este procedimiento lo que pretendo es probar que los punteros permiten definir funciones cuyos par�metros
--son pasados por referencia; es decir, que se pueden modificar los par�metros pese a pertenecer a una funci�n.
procedure Utilidad_Punteros is


   --Creo un tipo "access" que apuntar� a variables de tipo integer.
   type P_Integer is access Integer;

   --Variables de tipo entero.
   A,
   B : Integer := 5;

   --Punteros de tipo p_integer.
   I,
   J : P_Integer;

   --Esta funci�n simplemente suma los valores de A y B referenciados por punteros;
   --tiene de peculiar que permitir� modificar el valor de un par�metro, cosa impensable en las funciones.
   function Sumar (
         X,
         Y : P_Integer)
     return Integer is

   begin

      --Asignaci�n a todas luces ilegal, si no se tiene en cuenta que los par�metros son pasados por referencia.
      X.All := 0;
      return X.All+Y.All;
   end Sumar;

begin

   --Inicializamos los punteros (hasta este punto tienen valor "null"). Ahora I y J apuntan a variables nuevas creadas
   --din�micamente (en tiempo de ejecuci�n del programa).
   I := new Integer;
   J := new Integer;

   --Asigno a las posiciones de memoria los valores de A y de B.
   I.All := A;
   J.All := B;

   --Sumamos.
   Put(Sumar(I, J));

   --I dever�a contener un 5.
   Put(I.All);

end Utilidad_Punteros;