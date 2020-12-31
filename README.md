# figASM

`figasm x86_64` è una semplice port in Assembly del celebre [figa](github.com/crisbal/kslf.git), celebre pacchetto per Arch Linux, una volta disponibile nella AUR ma bannato dal mantenitore @il\_muflone per comprensibili ragioni politically correct:

![](https://i.imgur.com/1TQXOgX.png)

Ad ogni modo, i più grandi fan di `figa` si sono prontamente forkati il repo, pronti a ripubblicare `figa` sulla AUR, eccetto che il maestro @il\_muflone disse:

![](https://i.imgur.com/P8er7Uw.png)

![](https://i.imgur.com/GFcVpPD.png)

Ma noi non lo pensavamo. A ben vedere, neanche lui stesso lo pensava:

![](https://i.imgur.com/PgENsLm.png)

Questa volta, invece, il profeta @il\_muflone ci vide giusto. Perché la `figa` avrebbe fatto il suo ritorno di botto. Ma questa volta in pieno stile arch: nessun lentissimo script interpretato. Tutto Assembly. Nativo. Super ottimizzato per l'unica architettura supportata da Arch Linux, ossia x86\_64.

Ma anche il venerando @chic\_luke si sbagliava, perché la `figasm` era scritto per x86. Questo vuol dire che non è veramente ottimizzato per x86\_64, qui sono arrivato io. 

## Perché dovrei usare `figasm x86_64` anziché `figa x86`?

Perché la matematica non è un'opinione e i numeri parlano chiaro:

![](https://i.imgur.com/PZQVmv1.png)

# Come faccio a compilare `figasm x86_64` da sorgente?

```bash
as -o figa.o figa.s
ld -o figa figa.o
```

O, più semplicemente:

```bash
make
```
