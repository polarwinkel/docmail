DocMailer README file
=====================

THIS IS A BRIEF INTRODUCTION IN THE USAGE OF DOCMAILER. I RECOMMEND THAT
YOU READ IT CAREFULLY!


What is DocMailer for?
----------------------
DocMailer is a very simple tool to get your paper documents organized.

It scans your paper documents, extracts the text with OCR from it to put
it in an eMail, makes a text-embedded, low-size pdf from it and eMails 
it to a given eMail-adress. Furthermore it can handle almost any image 
file and pdf (scan or photograph of a document).

You can choose the subject of the eMail manually, so that you can search
for it also if the OCR was not successful. The pdf (if scanned) or 
image-file (if a file is given to it) is attached to the eMail and it is
send to an eMail-adress you set in the config - most likely your own 
one.

That way all your documents will be in an archive you have in your 
everyday workflow, archived and searchable in your favorite eMail-
client.


How do I use DocMailer?
-----------------------
First make sure that the file 'docmail.py' is executable:
chmod +x docmail.py

Now open 'config.conf' in a texteditor and make the necessary 
adjustments.

Then make sure that the dependencies are installed (see below).

You can use DocMailer from the command line by entering
./docmail.py

For all options, please type
./docmail.py -h
to get an overview of all arguments DocMailer will handle.

Example: Scan a document with 4 pages and send it to test@docmail.org:
./docmail.py -s 'This is the mail-subject' -n 4 -t 'test@docmail.org'

What are the System Requirements?
-------------------------------------------
DocMailer should work on any Linux-distribution. You can't use it in 
Windows or MacOSX.

It is written in Python, so make sure it is installed.

You can install all dependencies by typing the following in the console 
(Debian/Ubuntu):

sudo apt-get install imagemagick sane-utils cuneiform exactimage python-argparse pdftk


Licence
-------
Copyright 2011 - 2018 Dirk Winkel

    This file is part of DocMailer.

    DocMailer is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with DocMailer.  If not, see <http://www.gnu.org/licenses/>.
