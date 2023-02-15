import sys
from math import sqrt
from math import ceil

MAP_HEIGHT = 9000
MAP_WIDTH = 17630
mons_speed = 400
hero_speed = 800
attack_range = 800
guardpoints = [(5000, 5000), (6000, 2500), (2500, 6000)]


def mons2hero_dist(mons_x: int, mons_y: int, hero_x: int, hero_y: int) -> int:
    return ceil(sqrt((hero_x - mons_x)**2 + (hero_y - mons_y)**2))


def assign_heroes_to_monsters(heros_avail: list, threats: list, max_x: int, max_y: int) -> list:
    moves = []
    for i in range(min(len(heros_avail), len(threats))):
        min_moves, best_hero_idx = ceil(MAP_WIDTH/hero_speed), heros_avail[0]
        for j in range(len(heros_avail)):
            (num_moves, dir_x, dir_y) = threats[i].calc_meet(heros[heros_avail[j]].x, heros[heros_avail[j]].y)
            if num_moves < min_moves:
                min_moves = num_moves
                best_hero_idx = heros_avail[j]
        if abs(base_x - dir_x) < max_x or abs(base_y - dir_y) < max_y:
            moves.append((heros[best_hero_idx].id, dir_x, dir_y))
            heros_avail.remove(best_hero_idx)
    return moves


class Hero:
    def __init__(self, _id: int, x: int, y: int, guardpoint_x: int, guardpoint_y: int):
        self.id = _id
        self.x = x
        self.y = y
        self.guardpoint_x = guardpoint_x
        self.guardpoint_y = guardpoint_y


class Monster:
    def __init__(self, _id: int, health: int, x: int, y: int, dx: int, dy: int):
        self.id = _id
        self.x = x
        self.y = y
        self.dx = dx
        self.dy = dy
        self.health = health

    # calculate the next move of a hero with given coords (hero_x, hero_y)
    def calc_meet(self, hero_x: int, hero_y: int) -> tuple:
        if mons2hero_dist(self.x + self.dx, self.y + self.dy, hero_x, hero_y) < attack_range:
            return (0, -1, -1)

        for i in range(ceil(MAP_WIDTH/hero_speed) + 1):
            new_mons_x, new_mons_y = self.x + self.dx * i, self.y + self.dy * i
            hero_dist = hero_speed * i
            if mons2hero_dist(new_mons_x, new_mons_y, hero_x, hero_y) - attack_range < hero_dist:
                return (i, self.x, self.y)


# base_x, base_y: The corner of the map representing your base
base_x, base_y = [int(i) for i in input().split()]
heroes_per_player = int(input())  # Always 3
print(f"base_x = {base_x}, base_y = {base_y}", file=sys.stderr, flush=True)

# game loop
while True:
    for i in range(2):
        health, mana = [int(j) for j in input().split()]
    entity_count = int(input())  # Amount of heros and monsters you can see

    heros = []
    threats = []  # monsters targeting the base
    possib_threats = []  # monsters that will target the base in the future
    guardpoint_idx = 0
    for i in range(entity_count):
        _id, _type, x, y, shield_life, is_controlled, health, vx, vy, near_base, threat_for = [int(j) for j in input().split()]
        if _type == 1:
            heros.append(Hero(_id, x, y, guardpoints[guardpoint_idx][0], guardpoints[guardpoint_idx][1]))
            guardpoint_idx += 1
        elif threat_for == 1:
            monster = Monster(_id, health, x, y, vx, vy)
            if near_base == 1:
                threats.append(monster)
            else:
                possib_threats.append(monster)

    heros_avail = [i for i in range(heroes_per_player)]  # indices of heroes, that have no monster to attack
    moves = assign_heroes_to_monsters(heros_avail, threats, MAP_WIDTH, MAP_HEIGHT)
    moves += assign_heroes_to_monsters(heros_avail, possib_threats, 7500, 7500)

    for i in range(len(heros_avail)):
        curr_hero = heros[heros_avail[i]]
        if not threats:
            if curr_hero.x == curr_hero.guardpoint_x and curr_hero.y == curr_hero.guardpoint_y:
                moves.append((curr_hero.id, -1, -1))
            else:
                moves.append((curr_hero.id, curr_hero.guardpoint_x, curr_hero.guardpoint_y))
        else:
            moves.append((curr_hero.id, threats[0].x, threats[0].y))

    for i in range(heroes_per_player):
        for j in range(len(moves)):
            (id, dir_x, dir_y) = moves[j]
            if id == heros[i].id:
                if dir_x == -1 and dir_y == -1:
                    print("WAIT")
                else:
                    print(f"MOVE {dir_x} {dir_y}")
