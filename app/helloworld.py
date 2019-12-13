import os


def print_txt_file(message):
    """Prints message to .txt file
    
    :param message: [description]
    :type message: [type]
    """    
    with open('../data/outfile.txt', 'w') as f:
        f.write(message)


def sysout_print(message):
    """Prints message to sysout
    
    :param message: [description]
    :type message: [type]
    """    
    print(message)


if __name__ == '__main__':
    text_out = 'Hello World!'

    print_txt_file(text_out)
    sysout_print(text_out)
