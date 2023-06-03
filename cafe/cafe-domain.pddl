(define (domain meucafebistro)
  (:requirements :strips :typing :negative-preconditions)

  (:types capsula cafeteira - objeto)

  (:predicates 
               (tem-capsula ?c - cafeteira ?cap - capsula)
               (capsula-usada ?c - cafeteira ?cap - capsula)
               (alguma-capsula ?c - cafeteira)
               (cafe-pronto ?c - cafeteira ?cap - capsula))

  (:functions (cafeteira-nivel ?c - cafeteira)
              (cafeteira-capacidade ?c - cafeteira)
              (cafeteira-rate ?c - cafeteira)
              (capsula-cafe ?cap - capsula)
              (capsula-cafe-nivel ?cap - capsula)
              (canecas-livres)
              (cafe-servidos ?cap - capsula)
  ) 


  (:action COLOCARAGUA
    :parameters (?c - cafeteira)
    :precondition (< (+ (cafeteira-nivel ?c) (cafeteira-rate ?c)) (cafeteira-capacidade ?c))
    :effect (increase (cafeteira-nivel ?c) (cafeteira-rate ?c)))



  (:action TIRARCAPSULA
    :parameters (?c - cafeteira ?cap - capsula)
    :precondition (and
                    (tem-capsula ?c ?cap)
                    (not (capsula-usada ?c ?cap)))
    :effect (and
              (not (tem-capsula ?c ?cap))
              (not (alguma-capsula ?c))
              (not (capsula-usada ?c ?cap))
              (increase (capsula-cafe ?cap) 1)))


  (:action TIRARCAPSULAUSADA
    :parameters (?c - cafeteira ?cap - capsula)
    :precondition (and
                    (tem-capsula ?c ?cap)
                    (capsula-usada ?c ?cap))
    :effect (and
                (not (alguma-capsula ?c))
                (not (capsula-usada ?c ?cap))
                (not (tem-capsula ?c ?cap))))


  (:action COLOCARCAPSULA
    :parameters (?c - cafeteira ?cap - capsula)
    :precondition (and
                   (> (capsula-cafe ?cap) 0)
                   (not (alguma-capsula ?c)))
    :effect (and (alguma-capsula ?c)
                 (decrease (capsula-cafe ?cap) 1)
                 (tem-capsula ?c ?cap)))


  (:action COLOCARCANECA
    :parameters (?c - cafeteira)
    :precondition (and
                  (not (tem-caneca ?c))
                  (> (canecas-livres) 0))
    :effect (and
              (decrease (canecas-livres) 1)
              (tem-caneca ?c)))


  (:action TIRARCANECA
    :parameters (?c - cafeteira)
    :precondition (tem-caneca ?c)
    :effect (and
              (increase (canecas-livres) 1)
              (not (tem-caneca ?c))))


  (:action SERVIRCAFE
    :parameters (?c - cafeteira ?cap - capsula)
    :precondition (cafe-pronto ?c ?cap)
    :effect (and 
                (not (cafe-pronto ?c ?cap))
                (increase (cafe-servidos ?cap) 1)))

  (:action FAZERCAFE
    :parameters (?c - cafeteira ?cap - capsula)
    :precondition (and
                    (> (nivel-atual ?c) (capsula-cafe-nivel ?cap))
                    (tem-capsula ?c ?cap)
                    (tem-caneca ?c))
    :effect (and
              (decrease (nivel-atual ?c) (capsula-cafe-nivel ?cap))
              (not (tem-capsula ?c ?cap))
              (not (alguma-capsula ?c))
              (capsula-usada ?c ?cap)
              (cafe-pronto ?can ?cap)))
)
