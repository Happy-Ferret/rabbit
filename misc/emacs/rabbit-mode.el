;;; -*- Emacs-Lisp -*-
;;; rabbit-mode.el
;;  Emacs major mode for Rabbit
;;; Copyright (c) 2006 �����ƻ� <tkdats@kono.cis.iwate-u.ac.jp>
;;; $Date$

;;; Install
;;
;; (autoload 'rabbit-mode "rabbit-mode" "major mode for Rabbit" t)
;; (add-to-list 'auto-mode-alist '("\\.\\(rbt\\|rab\\)$" . rabbit-mode))

;;; �ѿ�
;;
;; rabbit-author - ���
;; rabbit-institution - ��°
;; rabbit-theme - �ơ���(�ǥե���Ȥ�rabbit)
;; rabbit-heading-face - ���饤��(= hoge)�Υե�����
;; rabbit-emphasis-face - ((* ... *))�Υե�����
;; rabbit-verbatim-face - ((' ... '))�Υե�����
;; rabbit-term-face -  ((: ... :))�Υե�����
;; rabbit-footnote-face - ((- ... -))�Υե�����
;; rabbit-link-face - ((< ... >))�Υե�����
;; rabbit-code-face - (({ ... }))�Υե�����
;; rabbit-description-face - ��٥��դ��ꥹ��(:hoge)�Υե�����
;; rabbit-comment-face - �����ȤΥե�����(# hoge)

;;; ��ǽ
;;
;; rabbit-run-rabbit - Rabbit��ư
;; rabbit-insert-title-template - �����ȥ�Υƥ�ץ졼�Ȥ�����
;; rabbit-insert-image-template - �����Υƥ�ץ졼�Ȥ�����
;; rabbit-insert-slide - ���饤�ɤ�����

;;; �����ǥ���
;;
;; * ������yatex�Τ褦��C-b SPC �����ƥ�̾�ǥ����Х���ɤ�ޤȤ��
;;   * �����Ǥ��륢���ƥ�����䤹
;;     * ɽ
;;     * ����
;; * Emacs��ǥ��饤�ɤΰ�ư
;; * ���饤��ñ�̤ΰ�ư
;; * �����Хåե�������
;;   * ���饤��
;;   * image
;; * �۾ｪλ�Υ�å�������Хåե��˽Ф�

(require 'rd-mode)

(defvar rabbit-mode-hook nil
  "Hooks run when entering `rabbit-mode' major mode")
(defvar rabbit-command "rabbit")
(defvar rabbit-output-buffer nil)
(defvar rabbit-author "���")
(defvar rabbit-institution "��°")
(defvar rabbit-theme "rabbit")
(defvar rabbit-title-template 
"= %s

: author
   %s
: institution
   %s
: theme
   %s
\n")

(defvar rabbit-image-template 
" # image
 # src = %s
 # caption = 
 # width = 100
 # height = 100
# # normalized_width = 50
# # normalized_height = 50
# # relative_width = 100
# # relative_height = 50
")

(defvar rabbit-heading-face 'font-lock-keyword-face)
(defvar rabbit-emphasis-face 'font-lock-function-name-face)
(defvar rabbit-verbatim-face 'font-lock-function-name-face)
(defvar rabbit-term-face 'font-lock-function-name-face)
(defvar rabbit-footnote-face 'font-lock-function-name-face)
(defvar rabbit-link-face 'font-lock-function-name-face)
(defvar rabbit-code-face 'font-lock-function-name-face)
(defvar rabbit-description-face 'font-lock-constant-face)
(defvar rabbit-comment-face 'font-lock-comment-face)
(defvar rabbit-font-lock-keywords
  (list
   '("^= .*$"
     0 rabbit-heading-face)
   '("^==+ .*$"
     0 rabbit-comment-face)
   '("((\\*[^*]*\\*+\\([^)*][^%]*\\*+\\)*))"    ; ((* ... *))
     0 rabbit-emphasis-face)
   '("(('[^']*'+\\([^)'][^']*'+\\)*))"      ; ((' ... '))
     0 rabbit-verbatim-face)
   '("((:[^:]*:+\\([^):][^:]*:+\\)*))"      ; ((: ... :))
     0 rabbit-term-face)
   '("((-[^-]*-+\\([^)-][^-]*-+\\)*))"      ; ((- ... -))
     0 rabbit-footnote-face)
   '("((<[^>]*>+\\([^)>][^>]*>+\\)*))"      ; ((< ... >))
     0 rabbit-link-face)
   '("(({[^}]*}+\\([^)}][^}]*}+\\)*))"      ; (({ ... }))
     0 rabbit-code-face)
   '("^:.*$"
     0 rabbit-description-face)
   '("^#.*$"
      0 rabbit-comment-face)
   ))

(define-derived-mode rabbit-mode rd-mode "Rabbit"
  (make-variable-buffer-local 'rabbit-running)
  (setq-default rabbit-running nil)
  (setq comment-start "#")
  (make-local-variable 'font-lock-defaults)
  (setq font-lock-defaults '((rabbit-font-lock-keywords) t nil))
  (make-local-variable 'font-lock-keywords)
  (setq font-lock-keywords rabbit-font-lock-keywords)
  (rabbit-setup-keys)
  (run-hooks 'rabbit-mode-hook))

;;; interactive

(defun rabbit-run-rabbit ()
  (interactive)
  (let ((filename (rabbit-buffer-filename))
	 (outbuf (rabbit-output-buffer)))
    (if rabbit-running
	(error "Rabbit�ϴ��˵�ư���Ƥ��ޤ���")
      (progn
	  (setq rabbit-running t)
	  (start-process "Rabbit" outbuf rabbit-command filename)))))
	  (set-process-sentinel (get-buffer-process outbuf) 'rabbit-sentinel)))))
;; insert-procedures

(defun rabbit-insert-title-template (rabbit-title)
  (interactive "spresen title:")
  (save-excursion (insert (format rabbit-title-template
				  rabbit-title
				  rabbit-author
				  rabbit-institution
				  rabbit-theme)))
  (forward-line 9))

(defun rabbit-insert-image-template (rabbit-image-title)
  (interactive "fimage file:")
  (save-excursion (insert (format rabbit-image-template
				  rabbit-image-title)))
  (forward-line)
  (forward-char 9))

(defun rabbit-insert-slide (rabbit-slide-title)
  (interactive "sslide title:")
  (save-excursion (insert (format "\n= %s\n\n" rabbit-slide-title)))
  (forward-line 3))

;;; private

(defun rabbit-setup-keys ()
  (define-key rabbit-mode-map "\C-c\C-r" 'rabbit-run-rabbit)
  (define-key rabbit-mode-map "\C-c\C-t" 'rabbit-insert-title-template)
  (define-key rabbit-mode-map "\C-c\C-i" 'rabbit-insert-image-template)
  (define-key rabbit-mode-map "\C-c\C-s" 'rabbit-insert-slide))
  
(defun rabbit-buffer-filename ()
  (or (buffer-file-name)
      (error "���ΥХåե��ϥե�����ǤϤ���ޤ���")))

(defun rabbit-sentinel (proc state)
  (kill-buffer (process-buffer proc)))
;; (setq rabbit-running nil)) ; ��ư�ե饰��񤭴�����¿�ŵ�ư��ػߤ��褦�Ȥ������ɲ��Τ��Ǥ��ʤ��ä�

(defun rabbit-output-buffer ()
  (let* ((bufname (concat "*Rabbit<" (rabbit-buffer-filename) ">*"))
	(buf (get-buffer-create bufname)))
    (set-buffer buf)
    buf))

(provide 'rabbit-mode)
