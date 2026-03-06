use strict;
use warnings;
use feature 'say';
use File::Copy qw(copy);

my $ROOT = "/home/gabor/github/github-actions";

my @pairs = (
    ["szabgab", "github-actions-minimal",         "ci.yml", "minimal.yml"],
    ["szabgab", "github-actions-minimal-ubuntu",  "ci.yml", "minimal_ubuntu.yml"],
    ["szabgab", "github-actions-minimal-windows", "ci.yml", "minimal_windows.yml"],
);

for my $pair (@pairs) {
    my ($owner, $repo, $remote, $local) = @$pair;
    if ($ENV{CI}) {
        system "curl --silent https://raw.githubusercontent.com/$owner/$repo/refs/heads/main/.github/workflows/$remote --output src/examples/workflows/$local";
    } else {
        copy "$ROOT/$repo/.github/workflows/$remote", "src/examples/workflows/$local";
    }
}
