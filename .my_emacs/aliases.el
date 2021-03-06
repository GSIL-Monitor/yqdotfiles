(defalias 'gws 'magit-status "matgit status")
(defalias 'fundm 'fundamental-mode "fundamental mode")
(defalias 'js2 'js2-mode "js2 mode")
(defalias 'reactm 'react-mode "react mode")
(defalias 'tsm 'typescript-mode "typescript mode")
(defalias 'vue 'vue-mode "vue mode")
(defalias 'recc 'recentf-cleanup "recent file cleanup")
(defalias 'yasi 'yas-insert-snippet "insert snippets")
(defalias 'yasl 'yas-reload-all "reload yas")
(defalias 'reload 'reload-spacemacs-configuration "reload config")
(defalias 'cdd 'dired-to-home "dired home directory")

(defun dired-to-home ()
  "open dired in home directory"
  (interactive)
  (dired "~/"))

(defun reload-spacemacs-configuration ()
  "reload spacemacs configuration"
  (interactive)
  (load-file (concat (file-name-directory spacemacs-core-directory)
                     "core-load-paths.el"))
  (require 'core-spacemacs)
  (spacemacs/init)
  (configuration-layer/load)
  (spacemacs/setup-startup-hook)
  (require 'server)
  (unless (server-running-p) (server-start)))

(use-package hackernews :commands (hackernews))

;; (defun artist-mode-toggle-emacs-state ()
;;   (if artist-mode
;;       (evil-emacs-state)
;;     (evil-exit-emacs-state)))

;; (unless (eq dotspacemacs-editing-style 'emacs)
;;   (add-hook 'artist-mode-hook #'artist-mode-toggle-emacs-state))