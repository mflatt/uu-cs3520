#lang setup/infotab

;; Modify these definitions to enable & customize the tool.
;; (Detailed instructions are in the handin-server collection's docs.)
;; Also replace the "server-cert.pem" files.

;; Your course name (used for menus, button label, collection name etc)
(define name "CS 3520")

;; The handin tool is disabled by default, uncomment these three lines to
;; enable it
(define drracket-tools      `("client-gui.rkt"))
(define drracket-tool-names `(,name))
(define drracket-tool-icons `("icon.png"))
;; Modify the provided "icon.png" file to your school/lab/etc logo.

;; You must define a server:port for the client to be functional
(define server:port "cs3520.eng.utah.edu:4567")

;; The following are optional. Uncomment and fill in
;; the values to add a menu item under "Help" to open
;; the specified web page (using the user's chosen web
;; browser.)
(define web-menu-name "CS 3520 Homepage")
(define web-address "http://www.eng.utah.edu/~cs3520/")

;; Auto-updater section (see handin-server/doc.txt for details)
;(define enable-auto-update #t) ; enable auto-update?
;(define version-filename "handin-version")
;(define package-filename "handin.plt")

;; Multi-file submission section (see handin-server/doc.txt for details)
;(define enable-multifile-handin #t) ; enable multi-file?
;(define selection-mode 'extended) ; mode for file choose, usually 'extended
;(define selection-default ; suffixes to auto-choose (string or string-list)
;  '("*.rkt" "*.rkt;*.txt"))

;; Client configuration
;(define password-keep-minutes 5) ; client remembers entered password 5 mins
(define allow-submit-on-error? #t) ; include a "Submit even if server reports errors" option

;; Package dependencies
(define deps '("base"
               "drracket"
               "drracket-plugin-lib"
               "gui-lib"
               "net-lib"

               ;; Extra packages used by the course:
               "shplait"
               ["rhombus-prototype" #:version "0.16"]))
