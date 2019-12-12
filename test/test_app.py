import os
import unittest
import sys
sys.path.append('../app')
import helloworld as hw


class TestOutput(unittest.TestCase):

    def test_main(self):
        test_message = 'Hello.'
        hw.print_txt_file(message=test_message)

        # check the text
        with open('../data/outfile.txt', 'r') as f:
            text_check = f.read()

        self.assertTrue(test_message == text_check)


if __name__ == '__main__':
    unittest.main()
