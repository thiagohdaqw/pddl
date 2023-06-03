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
