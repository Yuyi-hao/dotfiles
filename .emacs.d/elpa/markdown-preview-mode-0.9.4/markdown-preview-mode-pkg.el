;; -*- no-byte-compile: t; lexical-binding: nil -*-
(define-package "markdown-preview-mode" "0.9.4"
  "Markdown realtime preview minor mode."
  '((emacs         "24.4")
    (websocket     "1.6")
    (markdown-mode "2.0")
    (cl-lib        "0.5")
    (web-server    "0.1.1"))
  :url "https://github.com/ancane/markdown-preview-mode"
  :commit "dde87b96de9e81dd01d174da67ef68687b3a5eb5"
  :revdesc "dde87b96de9e"
  :keywords '("markdown" "gfm" "convenience")
  :authors '(("Igor Shymko" . "igor.shimko@gmail.com"))
  :maintainers '(("Igor Shymko" . "igor.shimko@gmail.com")))
