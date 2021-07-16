# Raport do zadania opt-texture

### Autor: Antoni Pokusinski
### Numer indeksu: 314942


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

* Zmiana organizacji spowodowała, że dane są ułożone w pamięci po kolei kafelkami, a nie rzędami jak w niezoptymalizowanej funkcji. Z treści zadania wiemy, że z tablicy 2-wymiarowej (o której możemy tu myśleć jako o kwadracie) losujemy dwa punkty, prowadzimy między nimi linię, po czym zliczamy wartości punktów na tej linii. Łatwo więc zauważyć, że z punktu widzenia lokalności lepiej będzie jeśli będziemy trzymać w pamięci podręcznej całe kafelki, czyli mniejsze "podkwadraty" naszej tekstury zamiast trzymać tam rzędy/kolumny. Dzięki zasadzie lokalności przestrzennej będziemy częściej trafiać w elementy, które już są w pamięci podręcznej, ponieważ należą one do ściągniętego wcześniej kafelka. Gdybyśmy zamiast kafelka mieli ściągnięty rząd - wówczas kolejne dostępy do "okolicznych" elementów generowałyby chybienia (poza szczególnym przypadkiem, w którym poprowadzona linia jest pozioma/pionowa).

* Poniższy wykres ilustruje, jaki wpływ ma rozmiar kafla na czas działania programu: (pomiary przeprowadzono dla rozmiaru tekstury $N=2^{13}$)

![](https://i.imgur.com/6GTL5PV.png)

Tak więc optymalny rozmiar kafla to $2^6$, co widać na    wykresie. Warto jeszcze dodać, że późniejszy wzrost czasu działanie algorytmu wynika z przekroczenia pojemności pamięci podręcznej, co generuje nam coraz więcej chybień. W dalszej części raportu będziemy więc zakładać, że rozmiar kafla jest równy właśnie $2^6$.

* Translacja adresów w teksturze i sposób ułożenia kafelków w pamięci, a także ich rozmiar mają znaczący wpływ na wydajność przeglądania. Czas działania niezoptymalizowanej funkcji to 2.98s . Patrząc na powyższy wykres można zauważyć, że w zależności od rozmiaru kafla translacja adresów ma pozytywny bądź negatywny wpływ na wydajność algorytmu. Najbardziej zauważalne przyspieszenie mamy dla rozmiaru kafla $2^6$ (poprzedni podpkt.), zaś największe spowolnienie następuje dla rozmiaru $2^{11}$.

* Liczba wykonanych instrukcji na 1 skanowany element:
    - dla *index_0*: 16.158 
    - dla *index_1*: 25.235
Czyli jak się okazuje, funkcja zoptymalizowana wykonuje więcej instrukcji na 1 element.

* Spójrzmy jeszcze na IPC dla obu funkcji:
    - dla *index_0*: 0.838
    - dla *index_1*: 1.992
Obserwujemy więc bardzo znaczącą zmianę w IPC na korzyść zoptymalizowanej funkcji.


Wnioski
---

Dzięki metodzie kafelkowania mogliśmy znacznie usprawnić działanie naszego programu. Układając w pamięci dane w odpowiedniej kolejności zmniejszyliśmy procent chybień, a co za tym idzie - zwiększyliśmy wydajność algorytmu. Należy jednak pamiętać o optymalnym dobraniu rozmiaru kafla, aby nie był on zbyt mały ani zbyt duży, ponieważ chcemy jak najlepiej wykorzystać pojemność pamięci podręcznej. Co ciekawe, tak zoptymalizowana funkcja wykonuje więcej instrukcji na 1 skanowany element, jednak wskaźnik IPC dla tej funkcji jest zdecydowanie korzystniejszy niż dla wersji niezoptymalizowanej.