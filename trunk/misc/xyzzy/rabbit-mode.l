; -*- Mode: Lisp; Package: editor -*-

#|
= rabbit-mode - rabbit �̃t�����g�G���h

* Author: MIYAMUKO Katsuyuki ((<URL:mailto:miyamuko (at) mtb.biglobe.ne.jp>))
* URL: ((<URL:http://miyamuko.s56.xrea.com/xyzzy/rabbit-mode.html>))
* Version: 0.3


== ����

Ruby �ŏ����ꂽ�v���[���c�[����
((<"rabbit"|URL:http://www.cozmixng.org/~rwiki/?cmd=view;name=Rabbit%3A%3AREADME.ja>))
�������֗��Ɏg����悤�ɂ���t�����g�G���h�ł��B

rd �t�@�C����ҏW���Ȃ��� xyzzy ���� rabbit ���N���ł��܂��B

== �ł��邱��

* rabbit ���t���X�N���[�����[�h�ŋN���ł���B
* rabbit ���N���ł���B
* �^�C�g���y�[�W�̃e���v���[�g��}���ł���B

* �t�@�C�������Ȃ��Ă����s�ł���
* �X���C�h�P�ʂł̕ҏW
  * �X���C�h�ꗗ��\������ jump (list-function)
  * �X���C�h���Ƃ���\�����X���C�h�P�ʂł̈ړ� (C-M-n, C-M-p)
  * ��\���X���C�h���g�O��
* ����͈͂̃v���r���[
  * �͈�
    * ���݂̃X���C�h�̂�
    * ���[�W�������̃X���C�h�̂�
    * �Z���N�V�������̃X���C�h�̂�
  * �������^�C�g���y�[�W�͊܂܂��B
    * �X���C�h���w��ŋN���Ƃ��ł��Ȃ�����?

== ���Ȃ� (�ł��Ȃ�) ����

* �e�[�}�쐬�p���[�h

=== ���ꂩ���邩������Ȃ�����

* �T�u�^�C�g���Ƃ��� interactive �ɓ���
* save-as-image
* �e�[�}���̕⊮
* tdiary theme ���� rabbit theme �ɕϊ��ł���Ƃ����������B
  * �w�i�摜�Ƃ��͎w��ł��Ȃ�(?)
    * �ł���炵���B
      * �E�E�E���Ă���� lisp ����Ȃ��� ruby �Ŏ������� rabbit �{�̂Ɏ�荞��ł�������ق����悳���B

* rd �����x��
  * rd �x���� ruby-doc-minor-mode �ɔC���悤�Ǝv�������ǂ�낤���ȁB
  * rd �ɓ������� rd-mode �����������ɂ����Ƃ���B
  * �ӏ������x��
* ���� rd ������ rabbit �� (rabbitalize ?)
  * �ӏ������̃g�b�v���x�����X���C�h�̃^�C�g���ɂ���
    * ���̕ϊ��� rabbit ���s���ɂ��B
      * �ӏ�������ϊ�����{�v���r���[,���s}
        * �ӏ������łЂ����珑�������ꍇ�ɕ֗��B(���Ƃ��΂��� todo ���X�g)
  * ���o�����x��2 (==) ���X���C�h�̃^�C�g����
* �v���r���[�T�C�Y�ݒ�
* �e���v���[�g���w�肵�ĐV�����X���C�h�̍쐬 (C-m)
* �e���v���[�g�̏[��
  * ���ʂ̃X���C�h
  * mimeTex
  * image
    * keep_scale�Arelative_width �Ȃǂ̕⊮
  * �ŏI�X���C�h
  * �e���v���[�g�̃e�L�X�g�t�@�C����
    * �e�L�X�g�t�@�C���ō���Ăǂ����ɒu���ƃ��j���[�ɏo�Ă���B
* Sigma: �� sum: �̎��̎Q�ƁiRabbit�Ǝ��g���j�̕⊮
* �u�������N���b�N���� xxx ��ǉ��v�̏�ŃN���b�N����ƂȂɂ��N����B
* �ړI�ʃX���C�h�V���[
  * �K�v�ȃX���C�h�i�� or �ԍ�) ���`���� (�ǂ������? ����ȃR�����g?) ���������X���C�h�V���[
* xyzzy �� http �T�[�o�ɂ��� RWiki/Hiki �̂悤�Ƀy�[�W�\�[�X�̒�
  * �ȉ��̂悤�ȃP�[�X�Ŗ��ɗ��������B
    * rwiki ���ȒP�ɗ��Ă��Ȃ�
    * ���\�}�V���� rabbit �������Ă���
    * �X���C�h�쐬�}�V���Ɣ��\�}�V�����Ⴄ (�쐬: Win, ���\: Linux �Ƃ�)
    �E�E�E�K�v�Ȃ����B
  * RWiki �݊��ɂ���ꍇ soap.l �����Ȃ��Ƃ��߂���
* rabbit-mode �̂Ƃ��̂݃��j���[�\��
  * rd-mode ���}�C�i�[���[�h�ɂ��� rabbit-mode �����W���[���[�h
  * rd-mode �����W���[���[�h�ɂ��� rabbit-mode �̓��[�h�p��
* xyzzy ���� rabbit �̑���
  * rabbit �� FindWindow ���� SendMessage ����(?)
  * �Ǐ]���[�h
    * �X���C�h�P�ʂňړ������ꍇ�͎����I�� SendKey ����
    * �y�[�W���� 2 ������ꍇ�͖��� (?)

* =begin, =end �̍폜
* zphoto �Ȃǂ̊O���c�[���Ƃ̘A�g

* rabrick
* rabbit-theme-browser

== �C���X�g�[��

((<NetInstaller|URL:http://www7a.biglobe.ne.jp/~hat/xyzzy/ni.html>)) �ŃC���X�g�[�������ꍇ��
3 �ȍ~�� OK �ł��B

(1) �A�[�J�C�u���_�E�����[�h���܂��B

    ((<URL:http://miyamuko.s56.xrea.com/xyzzy/archives/rabbit-mode.zip>))

(2) �A�[�J�C�u��W�J���āA$XYZZY/site-lisp �z���Ƀt�@�C�����R�s�[���܂��B

(3) ~/.xyzzy �܂��� $XYZZY/site-lisp/siteinit.l �Ɉȉ��̃R�[�h��ǉ����܂��B

        ;; rabbit-mode
        (require "rabbit-mode")
        (pushnew '("\\.rd$" . rabbit-mode) *auto-mode-alist* :test 'equal)

(4) �ݒ�𔽉f������ɂ� xyzzy ���ċN�����Ă��������B

    ��siteinit.l �ɋL�q�����ꍇ�ɂ͍ă_���v���K�v�ł��B

(5) ruby.exe �Ƀp�X��ʂ��Ă��Ȃ��ꍇ�� ((<*rabbit-command*>)) ��ݒ肵�܂��B

(6) rd �t�@�C�����J�����j���[���� rabbit ���N�����Ă��������B


== ���t�@�����X

=== �L�[���蓖��

: ((%F5%))

    �X���C�h�V���[���J�n���܂��B

: ((%C-c n%))

    �J�[�\�����̃X���C�h���i���[�C���O���܂��B

: ((%C-c h%))

    �J�[�\�����̃X���C�h�̕\���E��\�����g�O�����܂��B

: ((%C-c c%))

    �J�[�\�����̃X���C�h���R�s�[���đ}�����܂��B

: ((%C-c C-c%))

    �X���C�h�ꗗ����I�������X���C�h���R�s�[���đ}�����܂��B

: ((%C-M-n%))

    ���̃X���C�h�Ɉړ����܂��B

: ((%C-M-p%))

    �O�̃X���C�h�Ɉړ����܂��B

: ((%C-M-k%))

    ���݂̃X���C�h�� kill ���܂��B

: ((%C-M-Up%))

    ���݂̃X���C�h���ЂƂ�Ɉړ����܂��B

: ((%C-M-Down%))

    ���݂̃X���C�h���ЂƂ��Ɉړ����܂��B

: ((%M-NUL%))

    ���݂̃X���C�h���}�[�N���܂��B

=== �ϐ�

--- *rabbit-command*
    rabbit �����s����R�}���h���w�肵�܂��B�f�t�H���g�� (({ruby -S rabbit})) �ł��B

    ruby.exe �Ƀp�X��ʂ��Ă��Ȃ��ꍇ��I�v�V�������w�肵�����ꍇ��
    �����Őݒ肵�܂��B

    ��:
        (setf *rabbit-command* "C:/ruby184/bin/ruby.exe -S rabbit")

    �p�X���ɋ󔒕����������Ă���Ƃ��܂������Ȃ��Ǝv���܂��B

--- *rabbit-author*
--- *rabbit-institution*
    rabbit-insert-title-template �Ń^�C�g���y�[�W��}������Ƃ���
    ��� (author) �� ���� (institution) ���w�肵�܂��B


== �֘A���邩������Ȃ��y�[�W

: rabbit
    ((<URL:http://www.cozmixng.org/~rwiki/?cmd=view;name=Rabbit%3A%3AREADME.ja>))

: Ruby-GNOME2 Project Website
    ((<URL:http://ruby-gnome2.sourceforge.jp/ja/index.html>))

: RAA - rabbit
    ((<URL:http://raa.ruby-lang.org/project/rabbit/>))

: RAA - ruby-gnome2
    ((<URL:http://raa.ruby-lang.org/project/ruby-gnome2/>))


== ���C�Z���X

rabbit-mode �͏C�� BSD ���C�Z���X�Ɋ�Â��ė��p�\�ł��B

  Copyright (C) 2004-2006 MIYAMUKO Katsuyuki. All rights reserved.

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are
  met:

  1 Redistributions of source code must retain the above copyright notice,
    this list of conditions and the following disclaimer as the first lines
    of this file unmodified.

  2 Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in the
    documentation and/or other materials provided with the distribution.

  THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
  OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
  SUCH DAMAGE.
|#

(provide "rabbit-mode")
(in-package "editor")

(export '(rabbit-slide-show
          rabbit-preview
          rabbit-preview-current-slide
          rabbit-preview-region
          rabbit-preview-selection
          rabbit-preview-begin-end
          rabbit-save-as-image
          rabbit-insert-title-template
          rabbit-toggle-hide-slide
          rabbit-hide-slide-p
          rabbit-narrow-to-slide
          rabbit-move-up-slide
          rabbit-move-down-slide
          rabbit-copy-slide
          rabbit-copy-current-slide
          rabbit-kill-slide
          rabbit-forward-slide
          rabbit-backward-slide
          rabbit-mode

          *rabbit-command*
          *rabbit-author*
          *rabbit-institution*
          *rabbit-menu*
          *rabbit-mode-syntax-table*
          *rabbit-mode-map*
          *rabbit-mode-hook*))

(defvar *rabbit-command* "ruby -S rabbit")

;; �R�����g�A�E�g���ꂽ��\���X���C�h���l��
(defvar *rabbit-slide-header-regexp* "^#*=[ \t]*\\(.*\\)")

(defvar *rabbit-author* "���")
(defvar *rabbit-institution* "����")
(defvar *rabbit-title-template* (format nil
"= �������N���b�N���ă^�C�g�������

: author
    ~A
: institution
    ~A
" *rabbit-author* *rabbit-institution*))

(defvar *rabbit-menu* nil)
(defvar *rabbit-menu-name* "&Rabbit")
(defvar *rabbit-menu-position* 'ed::help)

(defvar *rabbit-mode-hook* nil)
(defvar *rabbit-comment-column* 0)

(defvar *rabbit-mode-syntax-table* nil)
(unless *rabbit-mode-syntax-table*
  (setf *rabbit-mode-syntax-table* (make-syntax-table))
  (do ((x #x21 (1+ x)))((>= x #x7f))
    (let ((c (code-char x)))
      (unless (alphanumericp c)
        (set-syntax-punctuation *rabbit-mode-syntax-table* c))))
  (set-syntax-start-comment *rabbit-mode-syntax-table* #\#)
  (set-syntax-end-comment *rabbit-mode-syntax-table* #\LFD)
  )

(defvar *rabbit-mode-map* nil)
(unless *rabbit-mode-map*
  (setf *rabbit-mode-map* (make-sparse-keymap))
  (define-key *rabbit-mode-map* '#\F5 'rabbit-slide-show)
  (define-key *rabbit-mode-map* '(#\C-c #\n) 'rabbit-narrow-to-slide)
  (define-key *rabbit-mode-map* '(#\C-c #\h) 'rabbit-toggle-hide-slide)
  (define-key *rabbit-mode-map* '(#\C-c #\c) 'rabbit-copy-slide)
  (define-key *rabbit-mode-map* '(#\C-c #\C-c) 'rabbit-copy-current-slide)
  (define-key *rabbit-mode-map* #\C-M-n 'rabbit-forward-slide)
  (define-key *rabbit-mode-map* #\C-M-p 'rabbit-backward-slide)
  (define-key *rabbit-mode-map* #\C-M-k 'rabbit-kill-slide)
  (define-key *rabbit-mode-map* #\C-M-Up 'rabbit-move-up-slide)
  (define-key *rabbit-mode-map* #\C-M-Down 'rabbit-move-down-slide)
  (define-key *rabbit-mode-map* #\M-NUL 'rabbit-mark-slide)
  )

;;
;; RD �F�Â�
;;

(defvar *rabbit-regexp-keyword-list* nil)
(setf *rabbit-regexp-keyword-list*
  (compile-regexp-keyword-list
   `(
     ("^\\(=\\(?:begin\\|end\\)\\)" t ((1 . (:color 7 4))))
     ("^=\\{1,4\\} +\\([^ \t\r\f\n].*\\)$" t ((1 . (:keyword 0))))
     ("^\\+\\{1,2\\} +\\([^ \t\r\f\n].*\\)$" t ((1 . (:keyword 0))))
     ("^ *\\(:\\|---\\) *\\([^ \t\r\f\n].*\\)$" t ((2 . (:color 0 0 :underline))))
     ("^ *\\(\\*\\)" t ((1 . (:keyword 0))))
     ("^ *\\(([0-9]+)\\)" t ((1 . (:keyword 0))))
     ("(([-*{|%:<'].*?[-*}|%:>']))" t ((0 . (:keyword 1))))
     )))

;;
;; menu
;;

(defun rabbit-executable-p ()
  (interactive)
  (if (rabbit-buffer-filename)
      (< 0 (file-length (rabbit-buffer-filename)))
    (< 0 (buffer-size))))

(unless *rabbit-menu*
  (setf *rabbit-menu* (copy-menu-items
                       (define-popup-menu
                         (:item nil "�X���C�h�V���[(&W)" 'rabbit-slide-show
                          #'(lambda () (unless (rabbit-executable-p) :disable)))
                         (:item nil "�v���r���[(&V)" 'rabbit-preview
                          #'(lambda () (unless (rabbit-executable-p) :disable)))
                         (:popup nil "�v���r���["
                          (:item nil "���݂̃X���C�h���v���r���[(&C)" 'rabbit-preview-current-slide
                           #'(lambda () (unless (rabbit-executable-p) :disable)))
                          (:item nil "���[�W�������v���r���[(&R)" 'rabbit-preview-region
                           #'(lambda () (unless (rabbit-executable-p) :disable)))
                          (:item nil "�I��̈���v���r���[(&S)" 'rabbit-preview-selection
                           #'(lambda () (unless (rabbit-executable-p) :disable)))
                          (:item nil "=begin����=end���v���r���[(&E)" 'rabbit-preview-begin-end
                           #'(lambda () (unless (rabbit-executable-p) :disable))))
                         :sep
                         (:item nil "�摜�ŕۑ�����(&S)" 'rabbit-save-as-image
                          #'(lambda () :disable))
                         :sep
                         (:item nil "���̃X���C�h(&N)" 'rabbit-forward-slide)
                         (:item nil "�O�̃X���C�h(&P)" 'rabbit-backward-slide)
                         (:item nil "�X���C�h�ꗗ(&D)" 'list-function)
                         :sep
                         (:item nil "�X���C�h�𕡐�..." 'rabbit-copy-slide)
                         (:item nil "���݂̃X���C�h�𕡐�" 'rabbit-copy-current-slide)
                         (:item nil "�X���C�h���폜" 'rabbit-kill-slide)
                         (:item nil "�X���C�h���}�[�N" 'rabbit-mark-slide)
                         :sep
                         (:item nil "��\���X���C�h�ɐݒ�(&H)" 'rabbit-toggle-hide-slide
                          #'(lambda () (when (rabbit-hide-slide-p) :check)))
                         :sep
                         (:popup nil "�e���v���[�g(&I)"
                          (:item nil "�^�C�g���y�[�W(&T)" 'rabbit-insert-title-template))
                         )
                       (create-menu 'rabbit))))

(defun insert-rabbit-menu (&key (menu (current-menu))
                             (position *rabbit-menu-position*)
                             (menu-name *rabbit-menu-name*))
  (when (menup menu)
    (setq menu (copy-menu-items menu (create-menu 'rabbit)))
    (delete-rabbit-menu menu)
    (cond
     ((and (numberp position) (integerp position))
      (insert-popup-menu menu position *rabbit-menu* menu-name))
     ((and (symbolp position) (get-menu-position menu position))
      (insert-popup-menu menu (get-menu-position menu position)
                         *rabbit-menu* menu-name))
     (t
      (add-popup-menu menu *rabbit-menu* menu-name)))
    (use-local-menu menu)))

(defun delete-rabbit-menu (&optional (menu (current-menu)))
  (let (ret)
    (if (menup menu)
        (while (delete-menu menu 'ed::rabbit)
          (setq ret t)))
    ret))

(defun insert-rabbit-menu-all-buffers ()
  (save-excursion
    (dolist (buffer (buffer-list))
      (set-buffer buffer)
      (when (eq buffer-mode 'rabbit-mode)
        (insert-rabbit-menu)))))

(unless *app-menu*
  (add-hook '*post-startup-hook* 'insert-rabbit-menu-all-buffers))

;;
;; rabbit �̎��s
;;

(defun rabbit-slide-show (&optional theme)
  (interactive)
  (rabbit-execute-rabbit (rabbit-buffer-filename) (buffer-fileio-encoding) theme
                         "--full-screen"))

(defun rabbit-preview (&optional theme)
  (interactive)
  (rabbit-execute-rabbit (rabbit-buffer-filename) (buffer-fileio-encoding) theme))

(defun rabbit-preview-current-slide (&optional theme)
  (interactive)
  (rabbit-funcall-with-current-point 'rabbit-preview-region))

(defun rabbit-preview-selection (&optional theme)
  (interactive)
  (selection-start-end (beg end)
    (rabbit-preview-region beg end)))

;; =begin
;; �������v���r���[
;; =end
;; �����Ƃ��͖���
;; =begin
;; �������ꏏ��
;; =end
(defun rabbit-preview-begin-end (&optional theme)
  (interactive)
  (let (slides)
    (save-excursion
      (goto-char (point-min))
      (while (scan-buffer "^=begin\n" :regexp t :tail t)
        (push (buffer-substring (point) (progn
                                          (or (scan-buffer "^=end\n" :regexp t) (end-of-buffer))
                                          (point)))
              slides)))
    (unless slides
      (plain-error "�X���C�h���Ȃ��ł��B"))
    (rabbit-execute-rabbit-argf (format nil "~{~A~%~}" (reverse slides))
                                (buffer-fileio-encoding) theme)))

(defun rabbit-preview-region (beg end &optional theme)
  (interactive "r")
  (if (< end beg) (rotatef beg end))
  (save-excursion
    (save-restriction
      (narrow-to-region beg end)
      (goto-char beg)
      (rabbit-forward-slide nil)
      (setf beg (point))))
  (unless (< beg end)
    (plain-error "�X���C�h���Ȃ��ł��B"))
  (let ((slide) (title ""))
    (unless (= beg (rabbit-title-slide-point))
      (setf title (rabbit-title-slide)))
    (setf slide (concat title (buffer-substring beg end)))
    (rabbit-execute-rabbit-argf slide (buffer-fileio-encoding) theme)))

(defun rabbit-save-as-image (&optional (type "png"))
  (interactive)
  (plain-error "�܂��������Ă��܂���B"))

;;
;; rabbit �̎��s (private)
;;

(defun rabbit-execute-rabbit (file encoding theme &rest opts)
  (if file
      (rabbit-execute-rabbit-file file encoding theme opts)
    (rabbit-execute-rabbit-argf (buffer-substring (point-min) (point-max))
                                encoding theme opts)))

(defun rabbit-execute-rabbit-file (file encoding theme &optional opts)
  (when (zerop (file-length file))
    (plain-error (concat "�t�@�C������Ȃ̂� rabbit �����s�ł��܂���: " file)))
  (rabbit-make-process (format nil "~A ~{~A ~} ~A"
                               *rabbit-command*
                               (rabbit-option "file" encoding theme opts)
                               file)
                       (rabbit-init-output-buffer)
                       encoding))

(defun rabbit-execute-rabbit-argf (str encoding theme &optional opts)
  (when (zerop (length str))
    (plain-error "�����񂪋�Ȃ̂� rabbit �����s�ł��܂���"))
  (let ((proc (rabbit-make-process (format nil "~A ~{~A ~}"
                                           *rabbit-command*
                                           (rabbit-option "argf" encoding theme opts))
                                   (rabbit-init-output-buffer)
                                   encoding)))
    (process-send-string proc str)
    (rabbit-process-send-eof proc)
    proc))

(defun rabbit-process-send-eof (proc)
  (process-send-string proc (format nil "~c" #\C-z)))

(defun rabbit-option (type encoding theme &optional opts)
  (let ((result opts))
    (when type
      (push (concat "--type " type) result))
    (when theme
      (push (concat "--theme " theme) result))
    (when (rabbit-encoding encoding)
      (push (concat "--encoding " (rabbit-encoding encoding)) result))
    result))

;;
;; output
;;

(defun rabbit-buffer-filename ()
  (get-buffer-file-name (selected-buffer)))

(defun rabbit-encoding (encoding)
  (let ((enc (char-encoding-name encoding)))
    (if (string-matchp "^utf" enc)
        nil
      enc)))

(defmacro rabbit-with-marker-point (marker &rest body)
  `(progn
     (goto-marker ,marker)
     ,@body
     (set-marker ,marker (point))))
(setf (get 'rabbit-with-marker-point 'lisp-indent-hook) 1)

(defmacro rabbit-with-buffer-selected (buffer &rest body)
  `(save-excursion
     (set-buffer ,buffer)
     ,@body))
(setf (get 'rabbit-with-buffer-selected 'lisp-indent-hook) 1)

(defvar *rabbit-buffer-name* "*rabbit:output*")
(defvar *rabbit-buffer* nil)
(defun rabbit-make-process (command-line output encoding)
  (message command-line)
  (let ((proc (make-process command-line :output output :outcode encoding)))
    (set-process-filter proc 'rabbit-process-filter)
    (set-process-sentinel proc 'rabbit-process-sentinel)
    (rabbit-activate-buffer output)
    proc))

(defun rabbit-init-output-buffer ()
  (save-excursion
    (when (or (not *rabbit-buffer*)
              (deleted-buffer-p *rabbit-buffer*))
      (let ((buf (get-buffer-create *rabbit-buffer-name*)))
        (set-buffer buf)
        (make-local-variable 'need-not-save)
        (setf need-not-save t)
        (setf *rabbit-buffer* buf)))
    (erase-buffer *rabbit-buffer*)
    *rabbit-buffer*))

(defvar *rabbit-output-buffer-height* 1/10)
(defun rabbit-activate-buffer (buf)
  (unless (zerop (buffer-size buf))
    (pop-to-buffer buf (if (< *rabbit-output-buffer-height* 1)
                           (ceiling (* (screen-height) *rabbit-output-buffer-height*))
                         *rabbit-output-buffer-height*))))

(defun rabbit-process-filter (proc str)
  (rabbit-with-buffer-selected *rabbit-buffer*
   (rabbit-with-marker-point (process-marker proc)
                             (insert str)))
  (rabbit-activate-buffer *rabbit-buffer*))

(defun rabbit-process-sentinel (proc)
  (when (and *rabbit-buffer*
             (zerop (buffer-size *rabbit-buffer*)))
    (delete-buffer *rabbit-buffer*)
    (setf *rabbit-buffer* nil)))

;;
;; template
;;

(defun rabbit-insert-title-template ()
  (interactive)
  (save-excursion (insert *rabbit-title-template*))
  (forward-char 2))

;;
;; �X���C�h�P�ʂł̕ҏW�Ƃ�
;;

(defun rabbit-mark-slide ()
  (interactive)
  (multiple-value-bind (beg end)
      (rabbit-current-slide-point)
    (goto-char end)
    (set-mark)
    (goto-char beg)))

(defun rabbit-toggle-hide-slide ()
  "rabbit-mode: ��\���X���C�h���g�O������B�P���ɃR�����g�A�E�g���邾��"
  (interactive)
  (multiple-value-bind (beg end)
      (rabbit-current-slide-point)
    (save-excursion
      (save-restriction
        (narrow-to-region beg (1- end)) ; end �͎��̃X���C�h�̍s��
        (goto-char beg)
        (if (rabbit-hide-slide-p)
            (replace-buffer "^#" "" :regexp t)
          (replace-buffer "^" "#" :regexp t))))))

(defun rabbit-hide-slide-p ()
  "rabbit-mode: ��\���X���C�h�Ȃ� non-nil�B"
  (save-excursion
    (goto-char (rabbit-current-slide-point))
    (char= #\# (following-char))))

(defun rabbit-move-up-slide ()
  "rabbit-mode: �X���C�h����Ɉړ�����B"
  (interactive)
  (let ((slide (rabbit-current-slide)))
    (rabbit-kill-slide)
    (rabbit-backward-slide)
    (rabbit-insert-slide slide)))

(defun rabbit-move-down-slide ()
  "rabbit-mode: �X���C�h�����Ɉړ�����B"
  (interactive)
  (let ((slide (rabbit-current-slide)))
    (rabbit-kill-slide)
    (rabbit-forward-slide)
    (rabbit-insert-slide slide)))

(defun rabbit-copy-current-slide ()
  "rabbit-mode: ���݂̃X���C�h���R�s�[����B"
  (interactive)
  (let ((slide (rabbit-current-slide)))
    (rabbit-forward-slide)
    (rabbit-insert-slide slide)))

(defun rabbit-copy-slide ()
  "rabbit-mode: �X���C�h�ꗗ����X���C�h���R�s�[����B"
  (interactive)
  (let ((slide (save-excursion
                 (and (list-function) (rabbit-current-slide)))))
    (when slide
      (rabbit-forward-slide)
      (rabbit-insert-slide slide))))

(defun rabbit-insert-slide (slide)
  (unless (bolp) (insert #\LFD))
  (save-excursion (insert slide)))

(defun rabbit-forward-slide (&optional (no-dup t))
  (interactive)
  ; forward-paragraph ���ƃ^�C�g���s�̍s���ȊO�ɂ���ꍇ�A�ЂƂO�̃X���C�h�܂Ŗ߂��Ă��܂��B
  ; ���̏ꍇ�s���ɍs���Ăق����B
  (or (scan-buffer *rabbit-slide-header-regexp* :regexp t :no-dup no-dup)
      (end-of-buffer)))

(defun rabbit-backward-slide (&optional (no-dup t))
  (interactive)
  (or (scan-buffer *rabbit-slide-header-regexp* :regexp t :no-dup no-dup :reverse t)
      (beginning-of-buffer)))

(defun rabbit-current-slide ()
  (rabbit-funcall-with-current-point 'buffer-substring))

(defun rabbit-narrow-to-slide ()
  (interactive)
  (rabbit-funcall-with-current-point 'narrow-to-region))

(defun rabbit-delete-slide ()
  (interactive)
  (rabbit-funcall-with-current-point 'delete-region))

(defun rabbit-kill-slide ()
  (interactive)
  (kill-new (rabbit-current-slide))
  (rabbit-delete-slide))

(defun rabbit-title-slide ()
  (multiple-value-bind (beg end)
      (rabbit-title-slide-point)
    (buffer-substring beg end)))

(defun rabbit-title-slide-point ()
  (save-excursion
    (goto-char (point-min))
    (values (progn (rabbit-forward-slide nil) (point))
            (progn (rabbit-forward-slide) (point)))))

(defun rabbit-funcall-with-current-point (fn)
  (multiple-value-bind (beg end)
      (rabbit-current-slide-point)
    (funcall fn beg end)))

(defun rabbit-current-slide-point ()
  (values (save-excursion (rabbit-backward-slide nil) (point))
          (save-excursion (rabbit-forward-slide) (point))))

;;
;; list-function �ŕ\������X���C�h�̈ꗗ
;;

(defun rabbit-build-summary-of-function ()
  (let ((result nil))
    (save-excursion
      (goto-char (point-min))
      (while (scan-buffer *rabbit-slide-header-regexp* :regexp t :tail t)
	(push (list (current-line-number) (match-string 1)) result)))
    (unless result
      (plain-error "�Ȃ�����"))
    (nreverse result)))

;;
;; �⊮
;;

(defvar *rabbit-mode-abbrev-table* nil)
(unless *rabbit-mode-abbrev-table*
  (define-abbrev-table '*rabbit-mode-abbrev-table*))

;;
;; mode �̎��s
;;
(defun rabbit-mode ()
  "rabbit-mode"
  (interactive)
  (kill-all-local-variables)
  (setf mode-name "Rabbit")
  (setf buffer-mode 'rabbit-mode)
  (use-syntax-table *rabbit-mode-syntax-table*)
  (use-keymap *rabbit-mode-map*)

  ; ����W�J
  (setf *local-abbrev-table* *rabbit-mode-abbrev-table*)

  (make-local-variable 'paragraph-start)
  (setf paragraph-start *rabbit-slide-header-regexp*)
  (make-local-variable 'paragraph-separate)
  (setf paragraph-separate paragraph-start)

  ; list-funcations
  (make-local-variable 'build-summary-function)
  (setf build-summary-function 'rabbit-build-summary-of-function)

  (setf comment-start "# " comment-end "") ; indent-for-comment�ő}�������z
  (setf comment-start-skip "#+[ \t]*")
  (when *rabbit-comment-column*
    (setf comment-column *rabbit-comment-column*))

  ; keyword
  (make-local-variable 'regexp-keyword-list)
  (setf regexp-keyword-list *rabbit-regexp-keyword-list*)

  ; ���[�J�����j���[�̐ݒ�
  (insert-rabbit-menu)

  ; �t�b�N�̎��s
  (run-hooks '*rabbit-mode-hook*))