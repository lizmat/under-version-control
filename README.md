[![Actions Status](https://github.com/lizmat/under-version-control/actions/workflows/test.yml/badge.svg)](https://github.com/lizmat/under-version-control/actions)

NAME
====

under::version::control - is an IO::Path under version control?

SYNOPSIS
========

```raku
use under::version::control;
```

DESCRIPTION
===========

under::version::control provides a subroutine that returns True if the argument appears to be under version control.

This is currently defined as it having a sibling ".git" directory, or any of its parents having a ".git" directory.

Intended to be used by CLI scripts before they do massive changes on a file system: being under version control provides a bigger chance of reversibility if something went wrong.

AUTHOR
======

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/under-version-control . Comments and Pull Requests are welcome.

If you like this module, or what I’m doing more generally, committing to a [small sponsorship](https://github.com/sponsors/lizmat/) would mean a great deal to me!

COPYRIGHT AND LICENSE
=====================

Copyright 2022 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

