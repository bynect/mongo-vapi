project('mongoc vapi', 'vala', 'c')

# compose vapis
python3 = find_program('python3', 'python')
compose = files('compose.py')

r = run_command(python3, compose)
if r.returncode() != 0
    error('Could not compose vapi files')
endif
