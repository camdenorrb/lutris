test:
	rm tests/fixtures/pga.db -f
	rm tests/coverage/ -rf
	nosetests --with-coverage --cover-package=lutris --cover-html --cover-html-dir=tests/coverage

deb:
	debuild -S

changelog-add:
	dch -i

changelog-edit:
	dch -e
