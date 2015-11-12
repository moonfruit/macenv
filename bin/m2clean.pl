#!/usr/bin/perl
use strict;
use warnings;
use feature "say";
use File::Basename;
use File::Path;

my %ignore;

main();

sub main {
	my $real = 0;

	if (@ARGV > 0 and $ARGV[0] eq "-y") {
		$real = 1;
	}

	loadIgnore("$ENV{ENV}/etc/m2ignore.txt");

	chdir("$ENV{HOME}/.m2/repository");

	my @libs;

	open(FILE, "find -name '*.jar' -exec dirname {} \\; | sort -u |")
		or die("find: $!");

	while (<FILE>) {
		chomp();
		push(@libs, $_);
	}

	close(FILE);

	@libs = sort {
		my $da = dirname($a);
		my $db = dirname($b);

		my $ret = $da cmp $db;

		return $ret while $ret != 0;

		my @va = split(/\./, basename($a));
		my @vb = split(/\./, basename($b));

		while (@va and @vb) {
			my $va = shift(@va);
			my $vb = shift(@vb);

			no warnings 'numeric';
			$ret = $va <=> $vb;
			return $ret while $ret != 0;
		}

		return @va <=> @vb;
	} (@libs);

	my ($dir, $lastDir, $lastLib);

	$lastDir = $lastLib = "";

	foreach (@libs) {
		$dir = dirname($_);

		if ($dir eq $lastDir) {
			if (defined($ignore{$lastLib})) {
				say("IGNORE $lastLib");
			} else {
				say("DELETE $lastLib");
				if ($real) {
					rmtree("$lastLib");
				}
			}
		}

		$lastLib = $_;
		$lastDir = $dir;
	}
}

sub loadIgnore {
	my ($file) = @_;

	open(FILE, $file) or return;

	while (<FILE>) {
		chomp();
		$ignore{$_} = 1;
	}

	close(FILE);
}
