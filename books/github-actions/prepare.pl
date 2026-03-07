use strict;
use warnings;
use feature 'say';
use File::Copy qw(copy);

my $ROOT = "/home/gabor/github/github-actions";

my @pairs = (
    ["szabgab", "github-actions-minimal",         "ci.yml", "minimal.yml"],
    ["szabgab", "github-actions-minimal-ubuntu",  "ci.yml", "minimal_ubuntu.yml"],
    ["szabgab", "github-actions-minimal-windows", "ci.yml", "minimal_windows.yml"],
    ["szabgab", "github-actions-minimal-macos",   "ci.yml", "minimal_macos.yml"],
    ["szabgab", "github-actions-needs",           "ci.yaml", "needs.yml"],
    ["szabgab", "github-actions-needs",           "generate.yaml", "needs_generate.yml"],
    ["szabgab", "github-actions-reusable-workflow",  "reusable.yaml", "reusable_workflow.yml"],
    ["szabgab", "github-actions-reusable-workflow",  "reusing_other_workflow.yaml", "reusing_workflow.yml"],
    ["szabgab", "github-actions-reuse-public-workflow", "reusing_other_workflow.yaml", "reusing_other_workflow.yml"],
    ["szabgab", "github-actions-bash",     "ci.yml",  "bash.yml"],
    ["szabgab", "github-actions-crystal",  "ci.yml",  "crystal.yml"],
    ["szabgab", "github-actions-redis",    "ci.yml",  "redis.yml"],
    ["szabgab", "github-actions-solr",     "ci.yml",  "solr.yml"],
    ["szabgab", "github-actions-mysql",    "ci.yml",  "mysql.yml"],
    ["szabgab", "github-actions-postgresql", "ci.yml",  "postgresql.yml"],
    ["szabgab", "github-actions-rust", "default-macos.yml",  "rust-default-macos.yml"],
    ["szabgab", "github-actions-rust", "default-ubuntu.yml",  "rust-default-ubuntu.yml"],
    ["szabgab", "github-actions-rust", "default-windows.yml",  "rust-default-windows.yml"],
    ["szabgab", "github-actions-rust", "matrix-with-dtolnay-rust-toolchain.yml",  "matrix-with-dtolnay-rust-toolchain.yml"],
    ["szabgab", "github-actions-dont-run-in-forks",    "ci.yaml",  "dont-run-in-forks.yml"],
    ["szabgab", "github-actions-environment-variables", "ci.yml", "environment-variables.yml"],
    ["szabgab", "github-actions-restore-and-save",     "ci.yml", "cache.yml"],
    ["szabgab", "github-actions-run-code-if-files-change",     "ci.yml", "run-code-if-file-changes.yml"],
    ["szabgab", "github-actions-perl-build", "ci.yml", "perl-build-pl.yml"],
    ["szabgab", "github-actions-perldocker-perl-tester", "perl_makefile_tester.yml", "perl-perldocker-perl-tester.yml"],
    ["szabgab", "github-actions-perl-dist-zilla", "ci.yml", "perl-dist-zilla.yml"],
    ["szabgab", "github-actions-perl-with-test-coverage", "ci.yml", "perl-test-coverage.yml"],
    ["szabgab", "github-actions-with-parameters", "ci.yml", "with-parameters.yml"],
    ["szabgab", "github-actions-with-linode-s3", "ci.yml", "caching-s3-linode.yml"],
);

for my $pair (@pairs) {
    my ($owner, $repo, $remote, $local) = @$pair;
    if ($ENV{CI}) {
        system "curl --silent https://raw.githubusercontent.com/$owner/$repo/refs/heads/main/.github/workflows/$remote --output src/examples/workflows/$local";
    } else {
        my $from = "$ROOT/$repo/.github/workflows/$remote";
        my $to = "src/examples/workflows/$local";
        copy $from, $to or die "Could not copy '$from' to '$to'";
    }
}
