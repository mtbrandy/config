(global-set-key "\M-s" 'speedbar)

;(defun scroll-up-five (event)
;  "Scroll up five lines."
;  (interactive "e")
;  (scroll-up 5)
;  )
;(defun scroll-down-five (event)
;  "Scroll down five lines."
;  (interactive "e")
;  (scroll-down 5)
;  )
;(global-set-key 'button5 'scroll-up-five)
;(global-set-key 'button4 'scroll-down-five)

(defun mtb-c-mode-common-hook ()
  (c-set-style "k&r")
  (setq c-basic-offset 4)
  (setq-default indent-tabs-mode nil))

(add-hook 'c-mode-common-hook 'mtb-c-mode-common-hook)
(add-hook 'c-mode-common-hook 'turn-on-font-lock)

(setq vm-use-toolbar nil)
(setq mail-archive-file-name "~/OUTBOX")

; allow .*\.[cCh]\..* files to have c-style syntax highlighting
(setq auto-mode-alist (cons '("\\.[cCh].*\\'" . c-mode) auto-mode-alist))
; do the same for assembly and m4 files
(setq auto-mode-alist (cons '("\\.s\\'" . c-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.m4\\'" . c-mode) auto-mode-alist))

(setq-default default-tab-width 8)

;; Make ediff split side-by-side by default
(setq ediff-split-window-function 'split-window-horizontally)

