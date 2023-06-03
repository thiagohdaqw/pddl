(define (problem cafe)
  (:domain meucafebistro)
  (:objects
    cafeteira1 cafeteira2 cafeteira3 - cafeteira
    chococino ristreto pingado - capsula
  )
  (:init 
    (= (cafeteira-nivel cafeteira1) 0)
    (= (cafeteira-nivel cafeteira2) 0)
    (= (cafeteira-nivel cafeteira3) 100)

    (= (cafeteira-capacidade cafeteira1) 500)
    (= (cafeteira-capacidade cafeteira2) 200)
    (= (cafeteira-capacidade cafeteira3) 300)

    (= (cafeteira-rate cafeteira1) 50)
    (= (cafeteira-rate cafeteira2) 100)
    (= (cafeteira-rate cafeteira3) 50)
    
    (= (capsula-cafe chococino) 2)
    (= (capsula-cafe ristreto) 10)
    (= (capsula-cafe pingado) 5)

    (= (capsula-cafe-nivel chococino) 40)
    (= (capsula-cafe-nivel ristreto) 50)
    (= (capsula-cafe-nivel pingado) 60)

    (= (canecas-livres) 10)

    (= (cafe-servidos chococino) 0)
    (= (cafe-servidos ristreto) 0)
    (= (cafe-servidos pingado) 0)
  )
  (:goal (and
            (= (cafe-servidos chococino) 1)
            (= (cafe-servidos ristreto) 2)
            (= (cafe-servidos pingado) 3)
        )
  )
)


; (colocaragua cafeteira1)
; (colocarcapsula cafeteira3 pingado)
; (colocarcaneca cafeteira1)
; (colocarcaneca cafeteira3)
; (colocarcapsula cafeteira1 ristreto)
; (fazercafe cafeteira1 ristreto)
; (colocarcapsula cafeteira2 chococino)
; (colocarcaneca cafeteira2)
; (colocaragua cafeteira2)
; (fazercafe cafeteira2 chococino)
; (servircafe cafeteira2 chococino)
; (fazercafe cafeteira3 pingado)
; (tirarcapsulausada cafeteira2 chococino)
; (colocarcapsula cafeteira2 ristreto)
; (colocarcaneca cafeteira2)
; (fazercafe cafeteira2 ristreto)
; (servircafe cafeteira2 ristreto)
; (servircafe cafeteira1 ristreto)
; (colocaragua cafeteira3)
; (colocaragua cafeteira2)
; (tirarcapsulausada cafeteira2 ristreto)
; (colocarcapsula cafeteira2 pingado)
; (colocarcaneca cafeteira2)
; (fazercafe cafeteira2 pingado)
; (servircafe cafeteira3 pingado)
; (colocarcaneca cafeteira3)
; (fazercafe cafeteira3 pingado)
; (servircafe cafeteira2 pingado)
; (servircafe cafeteira3 pingado)