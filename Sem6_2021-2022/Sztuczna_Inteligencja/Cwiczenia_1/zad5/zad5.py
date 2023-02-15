from itertools import combinations

blotkarz_hand = []
figurant_hand = []
hand_size = 5
FIG = 0
COL = 1

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

# ===================================================


def count_combinations(deck: list) -> list:
    test_funcs = [is_straight_flush, is_four_kind, is_full_house, is_flush, is_straight, is_three_kind, is_two_pairs, is_pair]
    result = [0 for i in range(len(test_funcs))]
    total_cnt = 0
    for comb in combinations(deck, hand_size):
        total_cnt += 1
        cnt = 0
        for func in test_funcs:
            if func(comb) is True:
                result[cnt] += 1
                break
            cnt += 1
    result.append(total_cnt - sum(result))
    return result


# ===================================================

blotkarz_combs = count_combinations(blotkarz_deck)
figurant_combs = count_combinations(figurant_deck)

total_possibilities = sum(blotkarz_combs) * sum(figurant_combs)
figurant_wins = 0
for i in range(len(figurant_combs)):
    figurant_wins += figurant_combs[i] * sum(blotkarz_combs[i:])

print(f"Figurant wins {figurant_wins} out of {total_possibilities} games")
print(f"Blotkarz wins {total_possibilities - figurant_wins} out of {total_possibilities} games")
print(f"Prob. of blotkarz win: {(total_possibilities - figurant_wins) / total_possibilities}")
