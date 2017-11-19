with Ada.Integer_Text_Io;
use Ada.Integer_Text_Io;

--Con este procedimiento lo que pretendo es probar que los punteros permiten definir funciones cuyos parámetros
--son pasados por referencia; es decir, que se pueden modificar los parámetros pese a pertenecer a una función.
procedure Utilidad_Punteros is


   --Creo un tipo "access" que apuntará a variables de tipo integer.
   type P_Integer is access Integer;

   --Variables de tipo entero.
   A,
   B : Integer := 5;

   --Punteros de tipo p_integer.
   I,
   J : P_Integer;

   --Esta función simplemente suma los valores de A y B referenciados por punteros;
   --tiene de peculiar que permitirá modificar el valor de un parámetro, cosa impensable en las funciones.
   function Sumar (
         X,
         Y : P_Integer)
     return Integer is

   begin

      --Asignación a todas luces ilegal, si no se tiene en cuenta que los parámetros son pasados por referencia.
      X.All := 0;
      return X.All+Y.All;
   end Sumar;

begin

   --Inicializamos los punteros (hasta este punto tienen valor "null"). Ahora I y J apuntan a variables nuevas creadas
   --dinámicamente (en tiempo de ejecución del programa).
   I := new Integer;
   J := new Integer;

   --Asigno a las posiciones de memoria los valores de A y de B.
   I.All := A;
   J.All := B;

   --Sumamos.
   Put(Sumar(I, J));

   --I devería contener un 5.
   Put(I.All);

end Utilidad_Punteros;