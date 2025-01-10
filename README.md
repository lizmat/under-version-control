[![Actions Status](https://github.com/lizmat/under-version-control/actions/workflows/linux.yml/badge.svg)](https://github.com/lizmat/under-version-control/actions) [![Actions Status](https://github.com/lizmat/under-version-control/actions/workflows/macos.yml/badge.svg)](https://github.com/lizmat/under-version-control/actions) [![Actions Status](https://github.com/lizmat/under-version-control/actions/workflows/windows.yml/badge.svg)](https://github.com/lizmat/under-version-control/actions)

NAME
====

under-version-control - is an IO::Path under version control?

SYNOPSIS
========

```raku
use under-version-control;

say "current directory is under version control"
  if ".".IO.&under-version-control;

say "file 'foo.bar' is under version control"
  if under-version-control "foo.bar".IO;
```

DESCRIPTION
===========

under::version::control provides a subroutine that returns True if the argument appears to be under version control.

This is currently defined as it having a sibling ".git" directory, or any of its parents having a ".git" directory.

Intended to be used by CLI scripts before they do massive changes on a file system: being under version control provides a bigger chance of reversibility if something went wrong.

SEE ALSO
========

For more fine-grained control on whether a path is under version control, you can also use the [`Git::Files`](https://raku.land/zef:lizmat/Git::Files) distribution for that, or the git related functions in [`path-utils`](https://raku.land/zef:lizmat/path-utils).

AUTHOR
======

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/under-version-control . Comments and Pull Requests are welcome.

If you like this module, or what I’m doing more generally, committing to a [small sponsorship](https://github.com/sponsors/lizmat/) would mean a great deal to me!

COPYRIGHT AND LICENSE
=====================

Copyright 2022, 2025 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

