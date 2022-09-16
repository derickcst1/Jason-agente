estou(esquerdo).
sujo(direito).
sujo(esquerdo).
!limpar_ambiente(esquerdo).
+!limpar_ambiente(esquerdo) : estou(esquerdo) & sujo(esquerdo) <- .print("limpei ", esquerdo);-sujo(esquerdo);!mover.
+!limpar_ambiente(esquerdo) : estou(esquerdo) & not(sujo(esquerdo)) <- .print("nao limpei ", esquerdo);!mover.
+!limpar_ambiente(direito) : estou(direito) & sujo(direito) <- .print("limpei ", direito);-sujo(direito);!mover.
+!limpar_ambiente(direito) : estou(direito) & not(sujo(direito)) <- .print("nao limpei ", direito);!mover.
+!mover : sujo(esquerdo) & estou(direito)<- -estou(direito);+estou(esquerdo);.print("me movi para ", esquerdo); !limpar_ambiente(esquerdo).
+!mover : sujo(direito) & estou(esquerdo)<- -estou(esquerdo);+estou(direito);.print("me movi para ", direito); !limpar_ambiente(direito).
+!mover : not(sujo(direito)) & not(sujo(esquerdo))<- .print("cabo ").

