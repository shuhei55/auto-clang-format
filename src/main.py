import commands

def auto_clang_format(script shell_command):
    return commands.getoutput('echo ' + script + ' ' + shell_command)
