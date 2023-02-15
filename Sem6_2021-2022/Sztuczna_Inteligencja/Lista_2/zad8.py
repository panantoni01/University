from queue import Queue

DEBUG = False
COL = 0
ROW = 1


class Position:
    def __init__(self, turn: str, w_king: str, w_rook: str, b_king: str):
        self.turn = turn
        self.w_king = w_king
        self.w_rook = w_rook
        self.b_king = b_king

    def __eq__(self, pos):
        if not isinstance(pos, Position):
            return NotImplemented
        return (self.turn == pos.turn and
                self.w_king == pos.w_king and
                self.w_rook == pos.w_rook and
                self.b_king == pos.b_king)

    def __hash__(self):
        return hash((self.turn, self.w_king, self.w_rook, self.b_king))

    def is_checkmate(self) -> bool:
        w_king, w_rook, b_king = self.w_king, self.w_rook, self.b_king
        if not (b_king[COL] == 'a' or b_king[COL] == 'h'
                or b_king[ROW] == '1' or b_king[ROW] == '8'):
            return False

        if ((b_king[COL] == w_rook[COL] == 'a' or b_king[COL] == w_rook[COL] == 'h')
                and abs(ord(b_king[ROW]) - ord(w_rook[ROW])) > 1):
            if b_king[COL] == 'a' and w_king[COL] == 'c' or b_king[COL] == 'h' and w_king[COL] == 'f':
                if (w_king[ROW] == b_king[ROW] or
                        b_king[ROW] == '1' and w_king[ROW] == '2' or b_king[ROW] == '8' and w_king[ROW] == '7'):
                    return True

        if ((b_king[ROW] == w_rook[ROW] == '1' or b_king[ROW] == w_rook[ROW] == '8')
                and abs(ord(b_king[COL]) - ord(w_rook[COL])) > 1):
            if b_king[ROW] == '1' and w_king[ROW] == '3' or b_king[ROW] == '8' and w_king[ROW] == '6':
                if (w_king[COL] == b_king[COL] or
                        b_king[COL] == 'a' and w_king[COL] == 'b' or b_king[COL] == 'h' and w_king[COL] == 'g'):
                    return True
        return False

    def all_king_moves(self, col: str) -> list:
        moves = []
        if col == 'white':
            king = self.w_king
        elif col == 'black':
            king = self.b_king

        x, y = ord(king[COL]), ord(king[ROW])
        for i in [x-1, x, x+1]:
            for j in [y-1, y, y+1]:
                if not((i == x and j == y) or i < ord('a') or i > ord('h') or j < ord('1') or j > ord('8')):
                    moves.append(f"{chr(i)}{chr(j)}")
        return moves

    def possible_king_moves(self, col: str) -> list:
        moves = []
        w_king_moves = self.all_king_moves('white')
        b_king_moves = self.all_king_moves('black')
        rook_moves = self.possible_rook_moves()

        if col == 'white':
            for move in w_king_moves:
                if move not in b_king_moves and move != self.w_rook:
                    moves.append(move)
        elif col == 'black':
            for move in b_king_moves:
                if move not in w_king_moves and move not in rook_moves and move != self.w_rook:
                    moves.append(move)
        return moves

    def possible_rook_moves(self) -> list:
        moves = []
        rook = self.w_rook
        king = self.w_king
        x, y = ord(rook[COL]), ord(rook[ROW])

        for i in range(x+1, ord('h')+1):
            if ord(king[ROW]) == y and ord(king[COL]) == i:
                break
            moves.append(f"{chr(i)}{rook[ROW]}")
        for i in range(x-1, ord('a')-1, -1):
            if ord(king[ROW]) == y and ord(king[COL]) == i:
                break
            moves.append(f"{chr(i)}{rook[ROW]}")
        for i in range(y+1, ord('8')+1):
            if ord(king[COL]) == x and ord(king[ROW]) == i:
                break
            moves.append(f"{rook[COL]}{chr(i)}")
        for i in range(y-1, ord('1')-1, -1):
            if ord(king[COL]) == x and ord(king[ROW]) == i:
                break
            moves.append(f"{rook[COL]}{chr(i)}")
        return moves

    def possible_moves(self) -> list:
        moves = []
        if self.turn == 'black':
            b_king_moves = self.possible_king_moves('black')
            for move in b_king_moves:
                moves.append('K' + move)
        elif self.turn == 'white':
            rook_moves = self.possible_rook_moves()
            w_king_moves = self.possible_king_moves('white')
            for move in rook_moves:
                moves.append('R' + move)
            for move in w_king_moves:
                moves.append('K' + move)
        return moves


def make_move(pos: Position, move: str) -> Position:
    square = move[1:]
    newturn = 'black' if pos.turn == 'white' else 'white'
    newpos = Position(newturn, pos.w_king, pos.w_rook, pos.b_king)

    if pos.turn == 'black':
        newpos.b_king = square
    elif pos.turn == 'white' and move[0] == 'R':
        newpos.w_rook = square
    elif pos.turn == 'white' and move[0] == 'K':
        newpos.w_king = square
    return newpos


def bfs(pos: Position, known_positions: set) -> list:
    queue = Queue()
    known_positions.add(pos)
    queue.put([pos])

    while not queue.empty():
        pos_list = queue.get()
        pos = pos_list[-1]
        moves = pos.possible_moves()

        for move in moves:
            new_pos = make_move(pos, move)
            if new_pos.is_checkmate():
                pos_list.append(new_pos)
                return pos_list
            if new_pos not in known_positions:
                known_positions.add(new_pos)
                new_list = pos_list.copy()
                new_list.append(new_pos)
                queue.put(new_list)


def get_move(pos1: Position, pos2: Position) -> str:
    if pos1.b_king != pos2.b_king:
        return pos1.b_king+pos2.b_king
    elif pos1.w_king != pos2.w_king:
        return pos1.w_king+pos2.w_king
    return pos1.w_rook+pos2.w_rook


def print_moves(positions: list) -> None:
    string = ""
    for i in range(1, len(positions)):
        string += get_move(positions[i-1], positions[i]) + " "
    print(string.rstrip())


who, w_king, w_rook, b_king = input().split()
pos = Position(who, w_king, w_rook, b_king)
if not pos.possible_moves() or pos.is_checkmate():
    print("INF")
else:
    positions = bfs(pos, set())
    print_moves(positions)
