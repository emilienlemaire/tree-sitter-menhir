[
  "%parameter"
  "%token"
  "%left"
  "%right"
  "%nonassoc"
  "%type"
  "%start"
  "%attribute"
  "%on_error_reduce"
  "%prec"
  "%inline"
  "%public"
] @keyword

[
  "%{"
  "%}"
] @punctuation.bracket

[
  ";"
  "%%"
  "|"
] @punctuation.delimiter

"=" @operator

(declaration
  (priority_keyword)
  (symbol)* @field)

(declaration
  "%type"
  (type)
  (strict_actual)* @type)

(declaration
  "%start"
  (type)?
  (non_terminal) @function)

(uid) @field
(qid) @string

(type (
  "<" @punctuation.bracket
  (ocaml_type)
  ">" @punctuation.bracket))

(old_rule
  (symbol) @function)

(producer
  (lid) @variable)

(actual
 (_)*
 [(lax_actual
   (symbol) @function)
  (actual
    (symbol) @function)])

(producer
  (actual
    (symbol (lid) @function)))

(production_group
  (precedence
    (symbol) @field))

(line_comment) @comment
(comment) @comment
(ocaml_comment) @comment
