from queue import Queue


class Labyrinth:
    def __init__(self, board: list):
        if board is not None:
            self.height = len(board)
            self.width = len(board[0])
            self.walls = set()
            self.box_states = []
            self.worker_state = (-1, -1)

            for i in range(self.height):
                for j in range(self.width):
                    if board[i][j] == 'W':
                        self.walls.add((i, j))
                    elif board[i][j] == 'K' or board[i][j] == '+':
                        self.worker_state = (i, j)
                    elif board[i][j] == 'B' or board[i][j] == '*':
                        self.box_states.append((i, j))

    def __str__(self) -> str:
        result = ''
        for i in range(self.height):
            for j in range(self.width):
                if (i, j) in self.walls:
                    result += "W"
                elif (i, j) in self.box_states:
                    result += 'B'
                elif (i, j) == self.worker_state:
                    result += 'K'
                else:
                    result += '.'
            result += '\n'
        return result

    def __eq__(self, other) -> bool:
        if not isinstance(other, Labyrinth):
            return NotImplemented
        return (self.worker_state == other.worker_state and set(self.box_states) == set(other.box_states))

    def __hash__(self):
        return hash((self.worker_state, tuple(self.box_states)))

    def finish_check(self, goals: list) -> bool:
        for state in self.box_states:
            if state not in goals:
                return False
        return True

    def __move_worker_by_coords(self, coords: tuple) -> None:
        curr_pos = self.worker_state
        new_pos = (curr_pos[0] + coords[0], curr_pos[1] + coords[1])

        if new_pos in self.walls:
            return
        if new_pos in self.box_states:
            new_new_pos = (new_pos[0] + coords[0], new_pos[1] + coords[1])
            if new_new_pos in self.box_states or new_new_pos in self.walls:
                return
            self.box_states.remove(new_pos)
            self.box_states.append(new_new_pos)
            self.worker_state = new_pos
        else:
            self.worker_state = new_pos

    def move_left(self) -> None:
        self.__move_worker_by_coords((0, -1))

    def move_right(self) -> None:
        self.__move_worker_by_coords((0, 1))

    def move_down(self) -> None:
        self.__move_worker_by_coords((1, 0))

    def move_up(self) -> None:
        self.__move_worker_by_coords((-1, 0))


def CopyLabyrinth(lab: Labyrinth) -> Labyrinth:
    newlab = Labyrinth(None)
    newlab.width = lab.width
    newlab.height = lab.height
    newlab.walls = lab.walls
    newlab.box_states = lab.box_states.copy()
    newlab.worker_state = (lab.worker_state[0], lab.worker_state[1])
    return newlab


def bfs(lab: Labyrinth, goals: list) -> list:
    queue = Queue()
    visited = set([lab])
    queue.put((lab, []))

    while not queue.empty():
        (curr_lab, path) = queue.get()

        if curr_lab.finish_check(goals):
            return path

        (l_lab, l_path) = (CopyLabyrinth(curr_lab), path + ['L'])
        (r_lab, r_path) = (CopyLabyrinth(curr_lab), path + ['R'])
        (d_lab, d_path) = (CopyLabyrinth(curr_lab), path + ['D'])
        (u_lab, u_path) = (CopyLabyrinth(curr_lab), path + ['U'])

        l_lab.move_left()
        r_lab.move_right()
        d_lab.move_down()
        u_lab.move_up()

        if l_lab not in visited:
            visited.add(l_lab)
            queue.put((l_lab, l_path))
        if r_lab not in visited:
            visited.add(r_lab)
            queue.put((r_lab, r_path))
        if d_lab not in visited:
            visited.add(d_lab)
            queue.put((d_lab, d_path))
        if u_lab not in visited:
            visited.add(u_lab)
            queue.put((u_lab, u_path))


board = []
goals = []
with open("zad_input.txt", "r") as input:
    for line in input:
        board.append([char for char in line.strip()])

for i in range(len(board)):
    for j in range(len(board[i])):
        if board[i][j] == 'G' or board[i][j] == '*' or board[i][j] == '+':
            goals.append((i, j))

lab = Labyrinth(board)

best_path = bfs(lab, goals)

with open("zad_output.txt", "w") as output:
    output.write(''.join(best_path))
