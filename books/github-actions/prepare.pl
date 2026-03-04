use strict;
use warnings;
use feature 'say';
use File::Copy qw(copy);

my $ROOT = "/home/gabor/github/github-actions";

my @pairs = (
    ["github-actions-minimal-ubuntu", "minimal_ubuntu.yml"]
);

for my $pair (@pairs) {
    my ($repo, $filename, $owner) = @$pair;
    $owner //= "szabgab";
    #https://raw.githubusercontent.com/szabgab/github-actions-minimal-ubuntu/refs/heads/main/.github/workflows/minimal_ubuntu.yml
    system "curl --silent https://raw.githubusercontent.com/$owner/$repo/refs/heads/main/.github/workflows/$filename --output src/examples/workflows/$filename";
    #copy "$ROOT/$repo/.github/workflows/$filename", "src/examples/workflows/$filename";
}
