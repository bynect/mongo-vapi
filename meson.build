project('mongoc vapi', 'vala', 'c')


# build options
verbose_opt = get_option('verbose')
onefile_opt = get_option('onefile')

verbose = ''
onefile = ''

if verbose_opt
    verbose = '--verbose'
endif

if onefile_opt
    onefile = '--onefile'
endif


# compose vapis
python3 = find_program('python3', 'python')
compose = files('compose.py')

r = run_command(python3, compose, verbose, onefile)
if r.returncode() != 0
    error('Could not compose vapi files')
endif
