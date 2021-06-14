(require 'popup)

(defun describe-in-popup ()
  (interactive)
  (let* ((thing (symbol-at-point))
         (description (save-window-excursion
                       (eww "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/Reduce")
                       (switch-to-buffer "*eww*")
                       (buffer-string))))
  (popup-tip description
             :point (point)
             :around t
             :height 60
             :scroll-bar t
             :margin t
             )))
