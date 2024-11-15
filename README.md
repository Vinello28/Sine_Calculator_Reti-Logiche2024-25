# Funzione Seno in Virgola Fissa

## Introduzione
 Elaborato della Prova Finale di Reti Logiche del corso di laurea in Ingegneria Informatica del
 Politecnico di Milano. La prova prevedeva la realizzazione di un componente in VHDL con relativa documentazione
 tecnica in grado di calcolare il seno di un angolo espresso in gradi.

## Caratteristiche
 Il componente è perfettamente funzionante, sono stati condotti sufficienti test che stimolassero il più possibile
 il percorso critico. Il periodo di clock assegnato è di 40 ns; è importante sottolineare che con questa 
 implementazione non si hanno glitch o errori in output.

## Problematiche
 Codice VHDL non ottimizzato, i registri andrebbero entrambi sincronizzati sul rising edge; inoltre, si poteva realizzare un
 un sistema automatico di testing.

## Autori
 Gabriele Vianello, Vincenzo Zappia.
