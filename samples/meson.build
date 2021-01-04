bcon_sample = files('BconDoc.vala')
cruds_sample = files('Cruds.vala')
hello_sample = files('HelloMongo.vala')

bcon_deps = dependencies
bcon_deps += dependency('json-glib-1.0')

executable(
    'BconDoc',
    bcon_sample,
    dependencies: bcon_deps
)

executable(
    'Cruds',
    cruds_sample,
    dependencies: dependencies
)

executable(
    'HelloMongo',
    hello_sample,
    dependencies: dependencies
)
