#!/bin/bash

# Script um docmail-deb-file zu bauen
# Bitte passende Version eintragen:
version="0_5_1"

# altes paket löschen:
rm docmail_$version.deb
echo "=== baue "docmail" version "$version" ==="

# Dateirechte setzen:
chown -R dirk:dirk dev/
chmod -R =0755 dev/
chmod =0755 dev/usr/bin/docmail
chmod =0644 dev/DEBIAN/*

# zu packende dateien packen:
gzip -9 -n dev/usr/share/doc/docmail/changelog.Debian
gzip -9 -n dev/usr/share/doc/docmail/readme.txt
gzip -9 -n dev/usr/share/man/man1/*
chmod =0644 dev/usr/share/doc/docmail/*
chmod =0644 dev/usr/share/man/man1/*
chmod =0644 dev/etc/*

# md5sum-file automatisch erstellen:
rm dev/DEBIAN/md5sums
cd dev # TODO: schöner machen
find . -type f ! -regex '.*.hg.*' ! -regex '.*?debian-binary.*' ! -regex '.*?DEBIAN.*' -printf '%P ' | xargs md5sum >DEBIAN/md5sums
chmod =0644 DEBIAN/md5sums
cd ..

# paket bauen als fakeroot:
fakeroot dpkg --build dev
mv dev.deb docmail_$version.deb

# aufräumen: Dateien wieder entpacken:
chmod -R =0755 dev/
gzip -d dev/usr/share/doc/docmail/changelog.Debian
gzip -d dev/usr/share/doc/docmail/readme.txt
gzip -d dev/usr/share/man/man1/*

# test ob es dem Standart entspricht:
echo "=== War ich erfolgreich? Ich teste (keine Ausgabe = OK): ==="
lintian docmail_$version.deb

echo "=== Wenn alles ok ist (keine Ausgabe beim Test): Herzlichen Glückwunsch! ==="
