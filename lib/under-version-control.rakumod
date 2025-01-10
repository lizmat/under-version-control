my sub under-version-control(IO::Path:D $io is copy --> Bool:D) is export {
    $io .= resolve;
    (my $parent := $io.parent.resolve) eqv $io
      ?? (return False)
      !! ($io = $parent)
      until $io.add(".git").d;
    True
}

# vim: expandtab shiftwidth=4
