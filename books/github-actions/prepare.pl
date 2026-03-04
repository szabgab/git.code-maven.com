use strict;
use warnings;
use feature 'say';
use File::Copy qw(copy);

my $ROOT = "/home/gabor/github/github-actions";

my @pairs = (
    ["github-actions-minimal-ubuntu", "minimal_ubuntu.yml"]
);

for my $pair (@pairs) {
    my ($repo, $filename) = @$pair;
    copy "$ROOT/$repo/.github/workflows/$filename", "src/examples/workflows/$filename";
}
