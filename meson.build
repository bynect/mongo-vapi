project('mongoc vapi', 'vala', 'c')


dependencies = [
    dependency('glib-2.0'),
    dependency('gobject-2.0'),
    dependency('libmongoc-1.0')
]

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
else
    add_project_arguments(['-D', 'SEPARATED_VAPI'], language : 'vala')
    dependencies += dependency('libbson-1.0')
endif

vapi_dir = meson.current_source_dir() / 'vapi'
vapi_out = '--out ' + vapi_dir

add_project_arguments(['--vapidir', vapi_dir, '--pkg', 'posix'], language: 'vala')


test_opt = get_option('test')
sample_opt = get_option('example')

if test_opt
    subdir('test')
endif

if sample_opt
    subdir('samples')
endif


# compose vapis
python3 = find_program('python3', 'python')
compose = files('compose.py')

r = run_command(python3, compose, vapi_out, verbose, onefile)
if r.returncode() != 0
    error('Could not compose vapi files')
endif
