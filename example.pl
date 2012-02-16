#!/usr/bin/perl -I ./
use strict;
use warnings;
use Bool;
my $bool = Bool->new("False");
my $bool2 = Bool->new("True");
if ($bool->value() eq "False") { 
	print("value():\tOK\n");
}
$bool->ftot();
if ($bool->value() eq "True") {
	print("ftot():\t\tOK\n");
}
$bool->ttof();
if ($bool->value() eq "False") {
	print("ttof():\t\tOK\n");
}
if ($bool->isFalse()) {
	print("isFalse():\tOK\n");
}
if ($bool2->isTrue()) {
	print("isTrue():\tOK\n");
}
exit(0);
