#
# $Id: Makefile.PL 3 2008-11-25 19:56:47Z gomor $
#
use ExtUtils::MakeMaker;

my $libs = qx{dnet-config --libs 2>/dev/null};
$libs ||= ['-L/lib -L/usr/lib -L/usr/local/lib -ldnet'];

my $inc = qx{dnet-config --cflags 2>/dev/null};
$inc ||= '-I/include -I/usr/include -I/usr/local/include';

WriteMakefile(
   NAME          => 'Net::Libdnet',
   VERSION_FROM  => 'lib/Net/Libdnet.pm',
   LICENSE       => 'bsd',
   ABSTRACT_FROM => 'lib/Net/Libdnet.pm',
   AUTHOR        => 'GomoR <perl@gomor.org>',
   LIBS          => $libs,
   INC           => $inc,
   DEFINE        => '',
   EXE_FILES     => [ @{[glob('bin/*.pl')]} ],
   PREREQ_PM     => {
      Class::Gomor => 0,
   },
);
