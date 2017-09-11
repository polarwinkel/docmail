# docmail
Document Management in your eMail-account

## Usage

* Edit the /etc/docmail.conf (i.e. `nano /etc/docmail.conf') and insert your eMail-account details (sorry, no user-dependend settings yet, may come in the future)
* Do a scan: ```docmail -s 'sender: some description or keywords for the eMail-subject'``` will promt for pages until you have all together and then send them as a multi-page pdf-document to yourself with embeddet text (im OCR was successful) to enable searching
* more command line options, like color-mode or other recipients, are available, just type `docmail -h` so check them out
