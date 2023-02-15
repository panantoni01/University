import random
from queue import deque


class Labyrinth:
    def __init__(self, board: list):
        if board is not None:
            self.height = len(board)
            self.width = len(board[0])
            self.states = []
            self.walls = set()
            for i in range(self.height):
                for j in range(self.width):
                    if board[i][j] == '#':
                        self.walls.add((i, j))
                    elif board[i][j] == 'S':
                        self.states.append((i, j))

    def __eq__(self, labopt) -> bool:
        if not isinstance(labopt, Labyrinth):
            return NotImplemented
        return set(self.states) == set(labopt.states)

    def __hash__(self):
        return hash(tuple(self.states))

    def finish_check(self, goals: list) -> bool:
        for state in self.states:
            if state not in goals:
                return False
        return True

    def __merge_states(self, newstates: list) -> bool:
        newstates = list(set(newstates))
        merged = True if len(newstates) < len(self.states) else False
        self.states = newstates
        return merged

    def __move_states_by_coords(self, coords) -> bool:
        newstates = []
        (up_down, left_right) = (coords[0], coords[1])
        for (i, j) in self.states:
            new_state = (i + up_down, j + left_right)
            if new_state not in self.walls:
                newstates.append(new_state)
            else:
                newstates.append((i, j))
        return self.__merge_states(newstates)

    def move_left(self) -> bool:
        return self.__move_states_by_coords((0, -1))

    def move_right(self) -> bool:
        return self.__move_states_by_coords((0, 1))

    def move_down(self) -> bool:
        return self.__move_states_by_coords((1, 0))

    def move_up(self) -> bool:
        return self.__move_states_by_coords((-1, 0))

    def random_walk(self, steps: int) -> str:
        path = []
        for i in range(steps):
            move = random.choice('ULDR')
            if move == 'U':
                self.move_up()
            elif move == 'D':
                self.move_down()
            elif move == 'L':
                self.move_left()
            elif move == 'R':
                self.move_right()
            path.append(move)
        return path

    def stubborn_walk(self, move: str) -> str:
        merged = True
        path = []
        while merged and move == 'U':
            merged = self.move_up()
            path += 'U'
        while merged and move == 'D':
            merged = self.move_down()
            path += 'D'
        while merged and move == 'L':
            merged = self.move_left()
            path += 'L'
        while merged and move == 'R':
            merged = self.move_right()
            path += 'R'
        return path


def CopyLabyrinth(labopt: Labyrinth) -> Labyrinth:
    newlabopt = Labyrinth(None)
    newlabopt.height = labopt.height
    newlabopt.width = labopt.width
    newlabopt.states = labopt.states.copy()
    newlabopt.walls = labopt.walls
    return newlabopt


def bfs(labopt: Labyrinth, goals: list) -> list:
    queue = deque()
    visited_locs = set([labopt])
    queue.append((labopt, []))

    while len(queue) > 0:
        (curr_lab, path) = queue.popleft()

        if curr_lab.finish_check(goals) is True:
            return path

        (l_lab, l_path) = (CopyLabyrinth(curr_lab), path + ['L'])
        (r_lab, r_path) = (CopyLabyrinth(curr_lab), path + ['R'])
        (d_lab, d_path) = (CopyLabyrinth(curr_lab), path + ['D'])
        (u_lab, u_path) = (CopyLabyrinth(curr_lab), path + ['U'])

        if l_lab.move_left() is True:
            return l_path + bfs(l_lab, goals)
        if r_lab.move_right() is True:
            return r_path + bfs(r_lab, goals)
        if d_lab.move_down() is True:
            return d_path + bfs(d_lab, goals)
        if u_lab.move_up() is True:
            return u_path + bfs(u_lab, goals)

        if l_lab not in visited_locs:
            visited_locs.add(l_lab)
            queue.append((l_lab, l_path))
        if r_lab not in visited_locs:
            visited_locs.add(r_lab)
            queue.append((r_lab, r_path))
        if d_lab not in visited_locs:
            visited_locs.add(d_lab)
            queue.append((d_lab, d_path))
        if u_lab not in visited_locs:
            visited_locs.add(u_lab)
            queue.append((u_lab, u_path))


board = []
goals = []
with open("zad_input.txt", "r") as input:
    for line in input:
        board.append([char for char in line.strip()])

for i in range(len(board)):
    for j in range(len(board[i])):
        if board[i][j] == 'B' or board[i][j] == 'G':
            goals.append((i, j))

(best_lab, best_rand_path) = (Labyrinth(board), [])
for i in range(30):
    lab = Labyrinth(board)
    path1 = lab.random_walk(20)
    path2 = lab.stubborn_walk('L')
    path3 = lab.stubborn_walk('U')
    if len(lab.states) < len(best_lab.states):
        (best_lab, best_rand_path) = (lab, path1 + path2 + path3)

best_path = bfs(best_lab, goals)

with open("zad_output.txt", "w") as output:
    output.write(''.join(best_rand_path + best_path))
