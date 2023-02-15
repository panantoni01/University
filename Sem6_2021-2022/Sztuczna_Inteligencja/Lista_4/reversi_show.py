import random
import sys
import math
import time
from collections import defaultdict as dd
from turtle import *

#####################################################
# turtle graphic
#####################################################
# tracer(0, 1)

BOK = 50
SX = -100
SY = 0
M = 8


def kwadrat(x, y, kolor):
    fillcolor(kolor)
    pu()
    goto(SX + x * BOK, SY + y * BOK)
    pd()
    begin_fill()
    for i in range(4):
        fd(BOK)
        rt(90)
    end_fill()


def kolko(x, y, kolor):
    fillcolor(kolor)

    pu()
    goto(SX + x * BOK + BOK/2, SY + y * BOK - BOK)
    pd()
    begin_fill()
    circle(BOK/2)
    end_fill()

#####################################################


def initial_board():
    B = [[None] * M for i in range(M)]
    B[3][3] = 1
    B[4][4] = 1
    B[3][4] = 0
    B[4][3] = 0
    return B


def deepcopy(lst):
    return [list(row) for row in lst]


explored_boards = dict()


class Board:
    dirs = [(0, 1), (1, 0), (-1, 0), (0, -1), (1, 1), (-1, -1), (1, -1), (-1, 1)]
    field_vals = [[4, -3, 2, 2, 2, 2, -3, 4], [-3, -4, -1, -1, -1, -1, -4, -3], [2, -1, 1, 0, 0, 1, -1, 2], [2, -1, 0, 1, 1, 0, -1, 2],
                  [2, -1, 0, 1, 1, 0, -1, 2], [2, -1, 1, 0, 0, 1, -1, 2], [-3, -4, -1, -1, -1, -1, -4, -3], [4, -3, 2, 2, 2, 2, -3, 4]]

    def __init__(self):
        self.board = initial_board()
        self.fields = set()
        self.move_list = []
        self.history = []
        for i in range(M):
            for j in range(M):
                if self.board[i][j] == None:
                    self.fields.add((j, i))

    def __eq__(self, other):
        if not isinstance(other, Board):
            return False
        return self.board == other.board

    def __hash__(self):
        list_of_tuples = [tuple(sublist) for sublist in self.board]
        return hash(tuple(list_of_tuples))

    def copy(self):
        new = Board()
        new.board = deepcopy(self.board)
        new.fields = set(self.fields)
        new.move_list = list(self.move_list)
        new.history = deepcopy(self.history)
        return new

    def draw(self):
        for i in range(M):
            res = []
            for j in range(M):
                b = self.board[i][j]
                if b == None:
                    res.append('.')
                elif b == 1:
                    res.append('#')
                else:
                    res.append('o')
            print(''.join(res))
        print('')

    def show(self):
        for i in range(M):
            for j in range(M):
                kwadrat(j, i, 'green')

        for i in range(M):
            for j in range(M):
                if self.board[i][j] == 1:
                    kolko(j, i, 'black')
                if self.board[i][j] == 0:
                    kolko(j, i, 'white')

    def moves(self, player):
        res = []
        for (x, y) in self.fields:
            if any(self.can_beat(x, y, direction, player) for direction in Board.dirs):
                res.append((x, y))
        if not res:
            return [None]
        return res

    # czy stawiając pionka na (x,y) wykonujemy bicie po kierunku d
    def can_beat(self, x, y, d, player):
        dx, dy = d
        x += dx
        y += dy
        cnt = 0
        while self.get(x, y) == 1-player:
            x += dx
            y += dy
            cnt += 1
        return cnt > 0 and self.get(x, y) == player

    # czyje jest pole (x,y)
    def get(self, x, y):
        if 0 <= x < M and 0 <= y < M:
            return self.board[y][x]
        return None

    def do_move(self, move, player):
        self.history.append([x[:] for x in self.board])
        self.move_list.append(move)

        if move == None:
            return
        x, y = move
        x0, y0 = move
        self.board[y][x] = player
        self.fields -= set([move])
        for dx, dy in self.dirs:
            x, y = x0, y0
            to_beat = []
            x += dx
            y += dy
            while self.get(x, y) == 1-player:
                to_beat.append((x, y))
                x += dx
                y += dy
            if self.get(x, y) == player:
                for (nx, ny) in to_beat:
                    self.board[ny][nx] = player

    def undo_last_move(self):
        self.board = self.history.pop(-1)
        (x, y) = self.move_list.pop(-1)
        self.fields.add((x, y))

    # różnica białych i czarnych pionków
    def result(self):
        res = 0
        for y in range(M):
            for x in range(M):
                b = self.board[y][x]
                if b == 0:
                    res -= 1
                elif b == 1:
                    res += 1
        return res

    def terminal(self):
        if not self.fields:
            return True
        if len(self.move_list) < 2:
            return False
        return self.move_list[-1] == self.move_list[-2] == None

    def random_move(self, player):
        ms = self.moves(player)
        if ms:
            return random.choice(ms)
        return [None]

    def heuristic_eval(self):
        # 1. zajęte rogi
        # 2. statyczne wartości z field_vals
        # 3. kto ma więcej pionków
        # waga powyżyszych w zależności od fazy partii
        curr_res = self.result()

        pieces_diff = 0
        for y in range(M):
            for x in range(M):
                b = self.board[y][x]
                if b == 0:
                    pieces_diff -= Board.field_vals[y][x]
                elif b == 1:
                    pieces_diff += Board.field_vals[y][x]

        corners = [self.board[y][x] for y in [0, M-1] for x in [0, M-1]]
        corner_diff = 0
        for corner in corners:
            if corner == 1:
                corner_diff += 1
            elif corner == 0:
                corner_diff -= 1

        if len(self.move_list) < 26:
            return 100*corner_diff + 20*pieces_diff

        if len(self.move_list) < 58:
            return 100*corner_diff + 10*pieces_diff + 20*curr_res

        return 100*curr_res

    def alpha_beta_search(self, maxdepth, alpha, beta, player):
        if self in explored_boards:
            (depth, value) = explored_boards[self]
            if depth >= maxdepth:
                return value

        if self.terminal():
            res = self.result()
            if res < 0:
                return -math.inf
            if res > 0:
                return math.inf
            return 0
        if maxdepth == 0:
            res = self.heuristic_eval()
            explored_boards[self] = (0, res)
            return self.heuristic_eval()

        pos_moves = self.moves(player)

        if player == 0:  # minimizingPlayer
            min_eval = math.inf
            for move in pos_moves:
                if move is None:
                    continue
                self.do_move(move, 0)
                eval = self.alpha_beta_search(maxdepth-1, alpha, beta, 1)
                self.undo_last_move()
                min_eval = min(min_eval, eval)
                beta = min(beta, eval)
                if beta <= alpha:
                    break
            explored_boards[self] = (maxdepth, min_eval)
            return min_eval

        else:  # maximizingPlayer
            max_eval = -math.inf
            for move in pos_moves:
                if move is None:
                    continue
                self.do_move(move, 1)
                eval = self.alpha_beta_search(maxdepth-1, alpha, beta, 0)
                self.undo_last_move()
                max_eval = max(max_eval, eval)
                alpha = max(alpha, eval)
                if beta <= alpha:
                    break
            explored_boards[self] = (maxdepth, max_eval)
            return max_eval


losses = 0

for i in range(1000):

    player = 0
    B = Board()

    while True:
        # B.draw()
        # B.show()
        m = B.random_move(player)
        B.do_move(m, player)
        player = 1-player
        if B.terminal():
            break
        best_move, best_val = None, -math.inf
        for move in B.moves(player):
            if move is None:
                continue
            B.do_move(move, player)
            eval = B.alpha_beta_search(0, -math.inf, math.inf, player)
            B.undo_last_move()
            if eval > best_val:
                best_val = eval
                best_move = move
        B.do_move(best_move, player)
        player = 1-player
        if B.terminal():
            break

    # B.draw()
    # B.show()
    res = B.result()
    print('Result', res)
    if res < 0:
        losses += 1
    # input('Game over!')

print(f"Losses: {losses}")

sys.exit(0)
