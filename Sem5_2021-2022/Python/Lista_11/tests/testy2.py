import unittest
import context
from zad2 import pierwiastek


class testy_pierwiastek(unittest.TestCase):

    def test_invalid(self):
        self.assertRaises(ValueError, pierwiastek, -1)
        self.assertRaises(ValueError, pierwiastek, "zero")

    def test_roots(self):
        values = [(0, 0), (1, 1), (4, 2), (10000, 100)]
        for arg, val in values:
            self.assertEqual(pierwiastek(arg), val)

    def test_nonroots(self):
        values = [(2, 1), (5, 2), (37, 6), (48, 6)]
        for arg, val in values:
            self.assertEqual(pierwiastek(arg), val)


if __name__ == "__main__":
    unittest.main()
