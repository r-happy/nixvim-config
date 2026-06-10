run:
	nix run .#

restart:
	git add :
	nix run .#
