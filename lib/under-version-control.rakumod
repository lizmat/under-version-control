my sub under-version-control(IO::Path:D $io is copy --> Bool:D) is export {
    $io .= resolve;
    (my $parent := $io.parent.resolve) eqv $io
      ?? (return False)
      !! ($io = $parent)
      until $io.add(".git").d;
    True
}

=begin pod

=head1 NAME

under-version-control - is an IO::Path under version control?

=head1 SYNOPSIS

=begin code :lang<raku>

use under-version-control;

say "current directory is under version control"
  if ".".IO.&under-version-control;

say "file 'foo.bar' is under version control"
  if under-version-control "foo.bar".IO;

=end code

=head1 DESCRIPTION

under::version::control provides a subroutine that returns True if
the argument appears to be under version control.

This is currently defined as it having a sibling ".git" directory,
or any of its parents having a ".git" directory.

Intended to be used by CLI scripts before they do massive changes on a
file system: being under version control provides a bigger chance of
reversibility if something went wrong.

=head1 AUTHOR

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/under-version-control .
Comments and Pull Requests are welcome.

If you like this module, or what I’m doing more generally, committing to a
L<small sponsorship|https://github.com/sponsors/lizmat/>  would mean a great
deal to me!

=head1 COPYRIGHT AND LICENSE

Copyright 2022 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod

# vim: expandtab shiftwidth=4
