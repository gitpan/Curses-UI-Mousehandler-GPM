use 5.006;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Curses::UI::Mousehandler::GPM',
    VERSION_FROM      => 'lib/Curses/UI/Mousehandler/GPM.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Curses/UI/Mousehandler/GPM.pm', # retrieve abstract from module
       AUTHOR         => 'Marcus Thiesen <marcus@thiesen.org>') : ()),
    LIBS              => ['-lgpm '], # e.g., '-lm'
    DEFINE            => '', # e.g., '-DHAVE_SOMETHING'
    INC               => '-I.', # e.g., '-I. -I/usr/include/other'
    OBJECT            => 'handler-gpm.o GPM.o', # link all the C files too
);
