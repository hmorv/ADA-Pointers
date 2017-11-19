with Ada.Integer_Text_Io;
use Ada.Integer_Text_Io;

--Este programa sirve para mostrar que los punteros pueden referenciar a variables estáticas.
procedure Punteros_Variables_Estaticas is

   --Este tipo servirá para crear punteros a partir de él. Lo destacable de esta declaración es la palabra "all",
   --lo cual permite que los punteros referencien a TODO tipo de variables: estáticas y dinámicas.
   type P_Integer is access all Integer;

   --Variables de tipo "integer" que podrán ser referenciadas por punteros. Para poder ser referenciadas se emplea
   --la palabra reservada "aliased".
   A : aliased Integer;

   --Punteros que referencian a enteros.
   P1 : P_Integer;

begin

   P1 := new Integer;

   --Ambos valores no tienen porqué coincidir, pues he hecho que P1 apunte a una variable NUEVA creada dinámicamente.
   --A no tiene ningún valor inicial, por lo que saldrá cualquier cosa (será muy difícil que ambas coincidan).
   Put(P1.All);
   Put(A);

   --Realizo la asignación. Ahora P1 apunta a la posición de memoria de A.
   P1 := A'access;

   --Asigno al puntero el valor "2407", pero como éste apunta a A, resultará que estaré asignando a A el mismo valor.
   P1.All := 2407;

   --Como ahora el puntero apunta a la variable, ambos puts mostrarán el mismo valor.
   Put(P1.All);
   Put(A);

   --La pregunta es ¿qué ha pasado con esa variable creada dinámicamente? ¿Puedo hacer uso de ella? ¿Qué nombre tiene?
   
end Punteros_Variables_Estaticas;