import testy2
import testy5
import unittest

loader = unittest.TestLoader()
suite = unittest.TestSuite()

suite.addTests(loader.loadTestsFromModule(testy2))
suite.addTests(loader.loadTestsFromModule(testy5))

unittest.TextTestRunner(verbosity=3).run(suite)
