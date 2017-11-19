with Ada.Integer_Text_Io;
use Ada.Integer_Text_Io;

--Este programa sirve para mostrar que los punteros pueden referenciar a variables est�ticas.
procedure Punteros_Variables_Estaticas is

   --Este tipo servir� para crear punteros a partir de �l. Lo destacable de esta declaraci�n es la palabra "all",
   --lo cual permite que los punteros referencien a TODO tipo de variables: est�ticas y din�micas.
   type P_Integer is access all Integer;

   --Variables de tipo "integer" que podr�n ser referenciadas por punteros. Para poder ser referenciadas se emplea
   --la palabra reservada "aliased".
   A : aliased Integer;

   --Punteros que referencian a enteros.
   P1 : P_Integer;

begin

   P1 := new Integer;

   --Ambos valores no tienen porqu� coincidir, pues he hecho que P1 apunte a una variable NUEVA creada din�micamente.
   --A no tiene ning�n valor inicial, por lo que saldr� cualquier cosa (ser� muy dif�cil que ambas coincidan).
   Put(P1.All);
   Put(A);

   --Realizo la asignaci�n. Ahora P1 apunta a la posici�n de memoria de A.
   P1 := A'access;

   --Asigno al puntero el valor "2407", pero como �ste apunta a A, resultar� que estar� asignando a A el mismo valor.
   P1.All := 2407;

   --Como ahora el puntero apunta a la variable, ambos puts mostrar�n el mismo valor.
   Put(P1.All);
   Put(A);

   --La pregunta es �qu� ha pasado con esa variable creada din�micamente? �Puedo hacer uso de ella? �Qu� nombre tiene?
   
end Punteros_Variables_Estaticas;