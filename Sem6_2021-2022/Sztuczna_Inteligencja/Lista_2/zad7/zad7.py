from queue import PriorityQueue
import random


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
                    elif board[i][j] == 'S' or board[i][j] == 'B':
                        self.states.append((i, j))
            self.opt_lengths = {}

    def __str__(self) -> str:
        result = ''
        for i in range(self.height):
            for j in range(self.width):
                if (i, j) in self.walls:
                    result += "#"
                elif (i, j) in self.states:
                    result += 'S'
                else:
                    result += ' '
            result += '\n'
        return result

    def __eq__(self, other) -> bool:
        if not isinstance(other, Labyrinth):
            return NotImplemented
        return set(self.states) == set(other.states)

    def __hash__(self):
        return hash(tuple(self.states))

    def __lt__(self, other):
        if not isinstance(other, Labyrinth):
            return NotImplemented
        # return self.__hash__() < other.__hash__()
        return len(self.states) > len(other.states)

    def __bfs_for_square(self, i: int, j: int, goals: list) -> int:
        # returns length of the shortest path from (i,j) to any goal
        queue = PriorityQueue()
        visited = set([(i, j)])
        queue.put((0, (i, j)))

        while not queue.empty():
            (length, state) = queue.get()

            if state in goals:
                return length

            l_state = (state[0], state[1] - 1)
            r_state = (state[0], state[1] + 1)
            d_state = (state[0] + 1, state[1])
            u_state = (state[0] - 1, state[1])

            if l_state not in visited and l_state not in self.walls:
                visited.add(l_state)
                queue.put((length + 1, l_state))
            if r_state not in visited and r_state not in self.walls:
                visited.add(r_state)
                queue.put((length + 1, r_state))
            if d_state not in visited and d_state not in self.walls:
                visited.add(d_state)
                queue.put((length + 1, d_state))
            if u_state not in visited and u_state not in self.walls:
                visited.add(u_state)
                queue.put((length + 1, u_state))

    def opts_for_each_square(self, goals: list) -> None:
        for i in range(self.height):
            for j in range(self.width):
                if (i, j) in self.walls:
                    continue
                path_length = self.__bfs_for_square(i, j, goals)
                self.opt_lengths[(i, j)] = path_length

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

    def heuristic(self, num_of_maxs: int) -> int:
        lengths = [self.opt_lengths[state] for state in self.states]
        lengths.sort(reverse=True)
        sum_lengths = 0
        for i in range(min(num_of_maxs, len(lengths))):
            sum_lengths += lengths[i]
        return sum_lengths

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
    newlabopt.opt_lengths = labopt.opt_lengths
    return newlabopt


def bfs(labopt: Labyrinth, goals: list) -> list:
    heur_deg = 3
    queue = PriorityQueue()
    visited_locs = set([labopt])
    queue.put((0 + labopt.heuristic(heur_deg), labopt, []))

    while not queue.empty():
        (f_func, curr_lab, path) = queue.get()

        if curr_lab.finish_check(goals) is True:
            return path

        (l_lab, l_path) = (CopyLabyrinth(curr_lab), path + ['L'])
        (r_lab, r_path) = (CopyLabyrinth(curr_lab), path + ['R'])
        (d_lab, d_path) = (CopyLabyrinth(curr_lab), path + ['D'])
        (u_lab, u_path) = (CopyLabyrinth(curr_lab), path + ['U'])

        l_lab.move_left()
        r_lab.move_right()
        d_lab.move_down()
        u_lab.move_up()

        if l_lab not in visited_locs:
            visited_locs.add(l_lab)
            queue.put((len(l_path) + l_lab.heuristic(heur_deg), l_lab, l_path))
        if r_lab not in visited_locs:
            visited_locs.add(r_lab)
            queue.put((len(r_path) + r_lab.heuristic(heur_deg), r_lab, r_path))
        if d_lab not in visited_locs:
            visited_locs.add(d_lab)
            queue.put((len(d_path) + d_lab.heuristic(heur_deg), d_lab, d_path))
        if u_lab not in visited_locs:
            visited_locs.add(u_lab)
            queue.put((len(u_path) + u_lab.heuristic(heur_deg), u_lab, u_path))


board = []
goals = []
with open("zad_input.txt", "r") as input:
    for line in input:
        board.append([char for char in line.strip()])

for i in range(len(board)):
    for j in range(len(board[i])):
        if board[i][j] == 'B' or board[i][j] == 'G':
            goals.append((i, j))

lab = Labyrinth(board)
lab.opts_for_each_square(goals)

stub_path1 = lab.stubborn_walk('L')
stub_path2 = lab.stubborn_walk('U')
rand_path = lab.random_walk(10)

best_path = bfs(lab, goals)

with open("zad_output.txt", "w") as output:
    output.write(''.join(stub_path1 + stub_path2 + rand_path + best_path))

# print(lab)
# for char in best_path:
#     if char == 'L':
#         lab.move_left()
#     elif char == 'R':
#         lab.move_right()
#     elif char == 'D':
#         lab.move_down()
#     elif char == 'U':
#         lab.move_up()
#     print(lab)
