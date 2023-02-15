from random import sample

blotkarz_hand = []
figurant_hand = []
hand_size = 5
FIG = 0
COL = 1

figures = {
    2: '2',
    3: '3',
    4: '4',
    5: '5',
    6: '6',
    7: '7',
    8: '8',
    9: '9',
    10: '10',
    11: 'J',
    12: 'Q',
    13: 'K',
    14: 'A'
}
colors = {
    0: '♥',
    1: '♦',
    2: '♣',
    3: '♠'
}


blotkarz_deck = [
    (2, 0), (2, 1), (2, 2), (2, 3),
    (3, 0), (3, 1), (3, 2), (3, 3),
    (4, 0), (4, 1), (4, 2), (4, 3),
    (5, 0), (5, 1), (5, 2), (5, 3),
    (6, 0), (6, 1), (6, 2), (6, 3),
    (7, 0), (7, 1), (7, 2), (7, 3),
    (8, 0), (8, 1), (8, 2), (8, 3),
    (9, 0), (9, 1), (9, 2), (9, 3),
    (10, 0), (10, 1), (10, 2), (10, 3)
]
figurant_deck = [
    (11, 0), (11, 1), (11, 2), (11, 3),
    (12, 0), (12, 1), (12, 2), (12, 3),
    (13, 0), (13, 1), (13, 2), (13, 3),
    (14, 0), (14, 1), (14, 2), (14, 3)
]


# ========================================================

def is_straight_flush(hand: list) -> bool:
    return (is_flush(hand) and is_straight(hand))


def is_four_kind(hand: list) -> bool:
    (fig1, count1) = (0, 0)
    (fig2, count2) = (0, 0)
    for (fig, col) in hand:
        if fig1 == 0 or fig1 == fig:
            (fig1, count1) = (fig, count1 + 1)
        elif fig2 == 0 or fig2 == fig:
            (fig2, count2) = (fig, count2 + 1)
        else:
            return False
    if count1 == 4 or count2 == 4:
        return True
    return False


def is_full_house(hand: list) -> bool:
    cards = sorted(hand)
    is_pair, is_three = False, False
    prev_fig = hand[0][FIG]
    count = 1
    for (fig, col) in cards[1:]:
        if fig == prev_fig:
            count += 1
        else:
            if count == 3:
                is_three = True
            if count == 2:
                is_pair = True
            count = 1
        prev_fig = fig
    return (is_pair and is_three or is_pair and count == 3 or is_three and count == 2)


def is_flush(hand: list) -> bool:
    first_col = hand[0][COL]
    for (fig, col) in hand[1:]:
        if col != first_col:
            return False
    return True


def is_straight(hand: list) -> bool:
    cards = sorted(hand)
    prev_fig = hand[0][FIG]
    for (fig, col) in cards[1:]:
        if fig != prev_fig + 1:
            return False
        prev_fig = fig
    return True


def is_three_kind(hand: list) -> bool:
    cards = sorted(hand)
    prev_fig, prev_prev_fig = cards[1][FIG], cards[0][FIG]
    for (fig, col) in cards[2:]:
        if fig == prev_fig and fig == prev_prev_fig:
            return True
        prev_prev_fig = prev_fig
        prev_fig = fig
    return False


def is_two_pairs(hand: list) -> bool:
    cards = sorted(hand)
    prev_fig = cards[0][FIG]
    count = 0
    for (fig, col) in cards[1:]:
        if fig == prev_fig:
            count += 1
        prev_fig = fig
    if count >= 2:
        return True
    return False


def is_pair(hand: list) -> bool:
    cards = sorted(hand)
    prev_fig = cards[0][FIG]
    for (fig, col) in cards[1:]:
        if fig == prev_fig:
            return True
        prev_fig = fig
    return False


def gen_hand(person: str) -> None:
    global blotkarz_hand, figurant_hand
    my_hand = blotkarz_hand if person == "blotkarz" else figurant_hand
    my_deck = blotkarz_deck if person == "blotkarz" else figurant_deck
    card_nums = sample(range(len(my_deck)), 5)
    for idx in card_nums:
        my_hand.append(my_deck[idx])


def print_hand(person: str) -> None:
    print(f"{person} hand:")
    hand = blotkarz_hand if person == 'blotkarz' else figurant_hand
    for (fig, col) in hand:
        print(f"{figures[fig]}{colors[col]}")


def play_game() -> bool:
    global blotkarz_hand, figurant_hand
    blotkarz_hand = []
    figurant_hand = []
    gen_hand('blotkarz')
    gen_hand('figurant')

    test_funcs = [is_straight_flush, is_four_kind, is_full_house, is_flush, is_straight, is_three_kind, is_two_pairs, is_pair]

    for func in test_funcs:
        blotkarz_result = func(blotkarz_hand)
        figurant_result = func(figurant_hand)
        if figurant_result and not blotkarz_result:
            return True
        if not figurant_result and blotkarz_result:
            return False
        if blotkarz_result and figurant_result:
            return True
    return True


blotkarz_win = 0
for i in range(10000):
    if play_game() is False:
        blotkarz_win += 1
print(f"blotkarz win rate = {blotkarz_win/10000 * 100}%")
