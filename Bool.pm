package Bool;
our $VERSION = 0.02;
sub new {
	my $self = shift;
	my ($bool) = @_;
	my $this = {};
	$this->{bool} = $bool;
	bless($this, $self);
}
################################################
### value() return the value of a Bool object
################################################
sub value {
	my ($this, $self) = @_;
	return $this->{bool};
}

#############################################################
### ftot() change the value of a False Bool object to True
#############################################################
sub ftot {
	my ($this, $self) = @_;
	if ($this->{bool} eq "False") {
		$this->{bool} = "True";
	}
}
#############################################################
### ttof() change the value of a True Bool object to False
#############################################################
sub ttof {
	my ($this, $self) = @_;
	if ($this->{bool} eq "True") {
		$this->{bool} = "False";
	}
}
################################################################################
### isTrue() return 1 (true) if Bool object is True and nothing if it's False
################################################################################
sub isTrue {
	my ($this, $self) = @_;
	if ($this->{bool} eq "True") {
		return 1;
	}
}
################################################################################
### isFalse() return 1 (true) if Bool object is False and nothing if it's True
################################################################################
sub isFalse {
	my ($this, $self) = @_;
	if ($this->{bool} eq "False") {
		return 1;
	}
}
1;

__END__


=head1 NAME

Bool - Simple implementation of boolean

=head1 SYNOPSIS
	
	use bool;

	my $bool = Bool->new("True");
	$bool->ttof(); #now $bool is False
	if ($bool->isFalse()) {
		print("Stuff\n");
        } # print Stuff
	$bool->ftot(); #now $bool is True
	if ($bool->isTrue()) {
		print("Stuff\n");
	} # print Stuff
	print($bool->value()); # print "True"

	exit(0);

=head1 DESCRIPTION

This module gives you the methods needed to work with booleans.

=head1 METHODS

The methods are listed here:


isTrue() return 1 (true) if Bool object is True and nothing if it's False.

isFalse() return 1 (true) if Bool object is False and nothing if it's True.

value() return the value of a Bool object.

ftot() change the value of a False Bool object to True.

ttof() change the value of a True Bool object to False.


=head1 LICENSE

This module is released under the GNU GPL Version 3 or later.

=head1 AUTHOR

Sandro CAZZANIGA <cazzaniga.sandro@gmail.com>
