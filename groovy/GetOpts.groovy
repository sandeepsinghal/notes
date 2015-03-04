def cli = new CliBuilder()
cli.with {
     usage: 'Self'
     h longOpt:'help', 'usage information'
     i longOpt:'input', 'input file', args:1
     o longOpt:'output', 'output file, mandatory argument',args:1, required:true
     a longOpt:'action', 'action to invoke',args:1
     d longOpt:'directory','process all files of directory', args:1
}

def opt = cli.parse(args)

if( args.length == 0 || opt == null) {
    cli.usage()
    return
}


if( opt.i ) {
	println opt.i
}
