import random
import sys
import math
import time
from collections import defaultdict as dd
from turtle import *
import queue

#####################################################
# turtle graphic
#####################################################
#tracer(0, 1)

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


def deepcopy_hist(lst):
    return [deepcopy(one_hist) for one_hist in lst]


class Node:
    def __init__(self, board, parent, move):
        self.board = board
        self.visits = 0
        self.val = 0
        self.parent = parent
        self.children = []
        self.move = move


class Board:
    dirs = [(0, 1), (1, 0), (-1, 0), (0, -1), (1, 1), (-1, -1), (1, -1), (-1, 1)]

    @staticmethod
    def is_corner(square):
        (x, y) = square
        if (x, y) in [(0, 0), (M-1, M-1), (0, M-1), (M-1, 0)]:
            return True
        return False

    @staticmethod
    def is_edge(square):
        (x, y) = square
        if x == 0 or x == M-1 or y == 0 or y == M-1:
            return True
        return False

    @staticmethod
    def is_2edge(square):
        (x, y) = square
        if x == 1 or x == M-2 or y == 1 or y == M-2:
            return True
        return False

    def __init__(self):
        self.board = initial_board()
        self.fields = set()
        self.move_list = []
        #self.history = []
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
        #new.move_list = list(self.move_list)
        #new.history = deepcopy_hist(self.history)
        new.move_list = []
        #new.history = []
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
        #self.history.append([x[:] for x in self.board])
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

    def simulation(self, player):
        new_state = Board()
        new_state.board = self.board.copy()
        new_state.fields = set(self.fields)
        new_state.move_list = []
        while not new_state.terminal():
            possib_moves = new_state.moves(player)
            if possib_moves[0] is None:
                break
            if player == 0:
                new_state.do_move(random.choice(possib_moves), 0)
                player = 1
                continue
            moves_to_2edges = list(filter(Board.is_2edge, possib_moves))
            moves_to_edges = list(
                filter(lambda tupl: Board.is_edge(tupl) and not Board.is_2edge(tupl), possib_moves))
            moves_to_corners = list(filter(Board.is_corner, moves_to_edges))

            if moves_to_corners:
                new_state.do_move(random.choice(moves_to_corners), player)
            elif moves_to_edges:
                new_state.do_move(random.choice(moves_to_edges), player)
            else:
                good_moves = [move for move in possib_moves if move not in moves_to_2edges]
                if good_moves:
                    new_state.do_move(random.choice(good_moves), player)
                else:
                    new_state.do_move(random.choice(possib_moves), player)
            player = 1-player

        res = new_state.result()
        return res

    def MCTS(self, player):
        root = Node(self, None, None)
        for _ in range(300):
            node = root
            while len(node.children) > 0 and not node.board.terminal():
                q = queue.PriorityQueue()
                ord = 0
                for child in node.children:
                    if child.visits == 0:
                        ucb = -1e10  # aka inf
                    else:
                        ucb = -1*(abs(child.val if player == 1 else (child.visits - child.val))/child.visits + 0.75 *
                                  math.sqrt(math.log(node.visits)/child.visits))
                    q.put((ucb, ord, child))
                    ord += 1
                node = q.get()[2]
                player = 1 - player
            if not node.board.terminal():
                for move in node.board.moves(player):
                    new_board = node.board.copy()
                    new_board.do_move(move, player)
                    node.children.append(Node(new_board, node, move))
                player = 1 - player
                sim_node = random.choice(node.children)
                sim_res = sim_node.board.simulation(player)
            else:
                sim_res = node.board.result()
            while node is not None:
                node.visits += 1
                node.val += 1 if sim_res > 0 else 0
                node = node.parent
        best_node = max(root.children, key=lambda node: node.val/node.visits)
        # for child in root.children:
        #     print(child.visits)
        # print(f"Chosen: {best_node.val}/{best_node.visits}")
        return best_node.move


losses = 0

for i in range(10):

    player = 0
    B = Board()
    start = time.time()
    while True:
        # B.draw()
        # B.show()
        if player == 0:
            m = B.random_move(player)
            B.do_move(m, player)
        else:
            best_move = B.MCTS(player)
            B.do_move(best_move, player)
        player = 1-player
        if B.terminal():
            break

    end = time.time()
    # B.draw()
    # B.show()
    res = B.result()
    print(f"Result {res}, time - {end-start}")
    if res < 0:
        losses += 1
    #input('Game over!')

print(f"Losses: {losses}")

sys.exit(0)
