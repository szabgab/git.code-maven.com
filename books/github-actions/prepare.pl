use strict;
use warnings;
use feature 'say';
use Data::Dumper qw(Dumper);
use File::Copy qw(copy);
use List::Util qw(any);

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
    ["szabgab", "github-actions-perl-makefile-native", "ci.yml", "perl-makefile-native.yml"],
    ["szabgab", "github-actions-perldocker-perl-tester", "perl_makefile_tester.yml", "perl-perldocker-perl-tester.yml"],
    ["szabgab", "github-actions-perl-dist-zilla", "ci.yml", "perl-dist-zilla.yml"],
    ["szabgab", "github-actions-perl-with-test-coverage", "ci.yml", "perl-test-coverage.yml"],
    ["szabgab", "github-actions-with-parameters", "ci.yml", "with-parameters.yml"],
    ["szabgab", "github-actions-with-linode-s3", "ci.yml", "caching-s3-linode.yml"],
    ["szabgab", "github-actions-python", "ci.yml", "python_matrix.yml"],
    ["szabgab", "github-actions-minimal-docker-for-python", "ci.yml", "minimal-docker-for-python.yml"],
    ["szabgab", "github-actions-for-pr-branches", "ci.yml", "for-pr-branches.yml"],
    ["szabgab", "github-actions-demo-20260308",    "blank.yml", "demo-20260308.yml"],
    ["szabgab", "github-actions-demo-20201029",    "blank.yml",      "demo-20201029-blank.yml"],
    ["szabgab", "github-actions-demo-20201029",    "env_matrix.yml", "demo-20201029-env-matrix.yml"],
    ["szabgab", "github-actions-demo-20201029",    "linux.yml",      "demo-20201029-linux.yml"],
    ["szabgab", "github-actions-demo-20201029",    "mac.yml",        "demo-20201029-mac.yml"],
    ["szabgab", "github-actions-demo-20201029",    "windows.yml",    "demo-20201029-windows.yml"],
    ["szabgab", "github-actions-list-files-changed", "using_changed_files_action.yml", "list-files-changed.yml"],
    ["szabgab", "github-actions-list-files-changed", "manual.yml", "list-files-changed-manual.yml"],
    ["szabgab", "github-actions-parallel",           "ci.yml", "parallel-ci.yml"],
    ["szabgab", "github-actions-parallel",           "matrix.yml", "parallel-matrix.yml"],
    ["szabgab", "github-actions-rust-with-test-coverage", "default-ubuntu.yml", "rust-test-coverage-default-ubuntu.yml"],
    ["szabgab", "github-actions-rust-with-test-coverage", "matrix-with-dtolnay-rust-toolchain.yml", "rust-test-coverage-matrix-with-dtolnay-rust-toolchain.yml"],
    ["szabgab", "try-github-actions",           "experiment.yml", "experiment.yml"],
    ["szabgab", "github-actions-install-packages-on-ubuntu", "ci.yml", "install-linux-packages.yml"],
    ["szabgab", "github-actions-conditional", "ci.yml", "conditional.yml"],
    ["szabgab", "github-actions-scheduled", "ci.yml", "scheduled.yml"],
);

copy_files();
check_all();

sub check_all {
    say "Check all";
    my %map;
    for my $pair (@pairs) {
        my ($owner, $repo, $remote, $local) = @$pair;
        $map{$repo}{$remote} = 1;
    }
    # list all the repos and all the gha file
    # check if each on of them is in our list of pairs
    opendir my $dh, $ROOT or die;
    my @projects = grep {$_ ne '.' and $_ ne '..'} readdir $dh;
    closedir $dh or die;
    for my $repo (@projects) {
        die "$repo is not used" if not $map{$repo};
        opendir my $dh, "$ROOT/$repo/.github/workflows" or die;
        my @files = grep {$_ ne '.' and $_ ne '..'} readdir $dh;
        closedir $dh or die;
        for my $file (@files) {
            die "$file in $repo is not used" if not $map{$repo}{$file};
        }

        my @no_dependabot = qw(
            github-actions-demo-20201029
            github-actions-demo-20260308
        );
        if (not any {$repo eq $_} @no_dependabot) {
            die "no dependabot in $repo" if not -e "$ROOT/$repo/.github/dependabot.yml";
        }

        # TODO check the content of dependabot.


        #  has correct README.md?
        die "no README.md in $repo" if not -e "$ROOT/$repo/README.md";
        #open my $fh, "<", "$ROOT/$repo/README.md" or die;
        #my @lines = <$fh>;
        #close $fh;
        #die "Not 4 lines in README of $repo" if scalar (@lines) != 4;
    }

}


sub copy_files {
    say "Copy files";
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
}
