## Raport do zadania opt-binsearch

### Autor: Antoni Pokusinski
### Numer indeksu: 314942

Adres do raportu na hackmd.io:
https://hackmd.io/UiOay_56RZO65VHXLsyQ8A

Konfiguracja 
---

Informacje o systemie:

 * Dystrybucja: Ubuntu 18.04.3 LTS
 * Jądro systemu: 5.3.0-42-generic
 * Kompilator: gcc
 * Procesor: Intel(R) Core(TM) i5-8265U CPU @ 1.60GHz
 * Liczba rdzeni: 4

Pamięć podręczna:

 * L1d: 32 KiB, 8-drożny (per rdzeń), rozmiar linii 64B
 * L2: 256 KiB, 4-drożny (per rdzeń), rozmiar linii 64B
 * L3: 6144 KiB, 12-drożny (współdzielony), rozmiar linii 64B

Pamięć TLB:

 * L1d: 4KiB strony, 4-drożny, 64 wpisy
 * L2: 4KiB strony, 6-drożny, 1536 wpisów

Informacje o pamięciach podręcznych uzyskano na podstawie wydruku programu
`getconf -a | grep CACHE` , `lscpu | grep "cache"`.

Wyniki eksperymentów
---
* Lokalność czasowa: procedura <<linearize>> modyfikuje dane tak, że kolejne poziomy drzewa binarnego są w tablicy ułożone sekwencyjnie. Oznacza to, że najpierw mamy środkowy element tablicy, następnie środkowe elementy prawej i lewej podtablicy itd. Czyli nasza tablica jest "posortowana" od najczęściej do najrzadziej sprawdzanych elementów. Łatwo zauważyć, że dla dużej tablicy (takiej, która nie mieści się w całości w L1) jej pierwsza część, czyli ta z częściej używanymi elementami, znajduje się w L1, natomiast pozostała część - w dalszych poziomach cache. Inaczej mówiąc - w L1 są elementy o lepszej lokalności czasowej, a w dalszych poziomiach znajdują się te rzadziej używane. Tak więc lokalność czasowa została znacznie ulepszona.

* Wydajność obu funkcji została przedstawiona na poniższym wykresie:

![](https://i.imgur.com/07iEqxV.png)


Przyspieszenie algorytmu nastąpiło ponieważ, zwięszyliśmy lokalność czasową, a co za tym idzie - zmniejszyliśmy procent chybień w pamięci podręczne (oczywiście dla dużych tablic). Przykładowo dla n=16 (dla n takich, że tablica nie mieści się w cache uzyskujemy podobne zależności ) dostajemy następujące pomiary:

|    | bsearch0 | bsearch1 |
|----|----------|----------|
| L1 | 41,3%    | 14,8%    |
| L2 | 37,4%    | 10,5%    |
| L3 | 0,01%    | 0,01%    |

Co jasno pokazuje, że dla tablicy, która nie mieści się w całości w pamięci podręcznej, lepszym algorytmem jest binsearch1 (zoptymalizowany). Przyspieszenie zostało więc spowodowane zmniejszeniem procentu chybień w pamięci podręczne.

* Zmiana kolejności instrukcji w pętli nie ma dobrego wpływu na działanie naszego algorytmu. Zamieniając ze sobą w binsearch0 if(y == x) z if(y < x) dostajemy wyraźny spadek wskaźnika IPC, co ilustruje poniższy wykres:

![](https://i.imgur.com/9FLQqK3.png)


* Możemy jednak jeszcze przyspieszyć działanie naszego programu używając wbudowanych instrukcji kompilatora:
    
    - __builtin_expect() - ta funkcja "podpowiada" kompilatorowi jaki wynik jest spodziewamy i jak powinien przewidziany kolejny skok warunkowy
    - __builtin_prefetch() - dzięki tej funkcji możemy wcześniej ściągnąć do pamięci podręcznej dane, których spodziewamy się użyć

Okazuje się, że użycie tych funkcji zwiększa wydajność naszej funkcji, co ilustruje wykres:

![](https://i.imgur.com/hXWUmKD.png)


...

Wnioski
---

Dzięki odpowiedniemu ułożeniu danych w pamięci możemy zwiększyć efektywność naszego algorytmu. W szczególności - jeśli w najbliższych pamięciach podręcznych będą najczęściej używane elementy, a w dalszych te rzadziej używane, to wówczas osiągniemy bardzo korzystną lokalność czasową (temporal locality), dzięki której zwiększymy wydajność programu. Musimy także pamiętać o tym, że kolejność instrukcji ma znaczenie na czas działania algorytmu - na przykład w binseach'u należy najpierw sprawdzać równość, czyli if (y == x) powinno być pierwszym porównaniem w iteracji. Zaś oprócz tego warto znać niektóre wbudowane instrukcje kompilatora, które pozwolą nam na sprawniejsze zarządzanie danymi w pamięci i predykcjami procesora.
