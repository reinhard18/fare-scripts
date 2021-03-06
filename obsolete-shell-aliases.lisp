;; Slowly migrating my zsh aliases here...

(uiop:define-package :fare-scripts/obsolete-shell-aliases
  (:use :cl :fare-utils :uiop :inferior-shell :optima :optima.ppcre :cl-launch/dispatch :cl-scripting))

(in-package :fare-scripts/obsolete-shell-aliases)

(exporting-definitions

(defun tcdr (&rest args) (run/i `(cdrecord -v dev=4,0,0 speed=32 ,@args)))
(defun tdao (cmd &rest args) (run/i `(cdrdao ,cmd --device 4,0,0 --driver generic-mmc --speed 32 ,@args)))
);exporting-definitions

(register-commands :fare-scripts/obsolete-shell-aliases)
