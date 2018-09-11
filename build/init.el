

;; http://ergoemacs.org/emacs/emacs_package_system.html
;; M-x list-packages
(when (>= emacs-major-version 25)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))



(shell)

