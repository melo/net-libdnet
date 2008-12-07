#
# $Id: Makefile.PL 3 2008-11-25 19:56:47Z gomor $
#
use ExtUtils::MakeMaker;

WriteMakefile(
   NAME          => 'Net::Libdnet',
   VERSION_FROM  => 'lib/Net/Libdnet.pm',
   LICENSE       => 'bsd',
   ABSTRACT_FROM => 'lib/Net/Libdnet.pm',
   AUTHOR        => 'GomoR <perl@gomor.org>',
   LIBS          => ['-L/lib -L/usr/lib -L/usr/local/lib -ldnet'],
   INC           => '-I/include -I/usr/include -I/usr/local/include',
   DEFINE        => '',
   EXE_FILES     => [ @{[glob('bin/*.pl')]} ],
   PREREQ_PM     => {
      Class::Gomor => 0,
   },
);
