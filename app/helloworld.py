import os


def print_txt_file(message):
    with open('../data/outfile.txt', 'w') as f:
        f.write(message)


def sysout_print(message):
    print(message)


if __name__ == '__main__':
    text_out = 'Hello World!'

    print_txt_file(text_out)
    sysout_print(text_out)
