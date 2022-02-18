import unittest
import context
from zad5 import kompresja, dekompresja


class testy_de_kompresja(unittest.TestCase):

    def test_invalid(self):
        self.assertRaises(ValueError, kompresja, 0)
        self.assertRaises(ValueError, kompresja, True)
        self.assertRaises(ValueError, dekompresja, 0.0)
        self.assertRaises(ValueError, dekompresja, False)

    def test_kompresja_prosty(self):
        values = [('heeelloooooo!!!', 'he3llo6!3'), ('hello   world', 'hello 3world')]
        for arg, val in values:
            self.assertEqual(kompresja(arg), val)

    def test_kompresja_id(self):
        values = [("", ""), ("hello world", "hello world")]
        for arg, val in values:
            self.assertEqual(kompresja(arg), val)

    def test_dekompresja_prosty(self):
        values = [('he3llo6!3', 'heeelloooooo!!!'), ('hello 3world', 'hello   world')]
        for arg, val in values:
            self.assertEqual(dekompresja(arg), val)

    def test_dekompresja_id(self):
        values = [("", ""), ("hello world", "hello world")]
        for arg, val in values:
            self.assertEqual(dekompresja(arg), val)


if __name__ == "__main__":
    unittest.main()
