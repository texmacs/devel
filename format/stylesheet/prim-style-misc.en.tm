<TeXmacs|1.0.3.10>

<style|tmdoc>

<\body>
  <tmdoc-title|Miscellaneous style-sheet primitives>

  <\explain>
    <explain-macro|extern|scheme-foo|arg-1|<with|mode|math|\<cdots\>>|arg-n><explain-synopsis|apply
    extern typesetting macro>
  <|explain>
    This primitive allows the user to implement macros in <value|scheme>. The
    primitive applies the <value|scheme> function or macro
    <src-arg|scheme-foo> to the arguments <src-arg|arg-1> until
    <src-arg|arg-n>. For instance, the code <inactive*|<extern|(lambda (name)
    (string-append "hi " name))|dude>> yields ``<extern|(lambda (name)
    (string-append "hi " name))|dude>''.

    Notice that the scheme function should only rely on secure scheme
    functions (and not on functions like <verbatim|system> which may erase
    your hard disk). User implemented <value|scheme> functions in plug-ins
    may be defined to be secure using the <verbatim|:secure> option.
    Alternatively, the user may define all <value|scheme> routines to be
    secure in <menu|Edit|Preferences|Security|Accept all scripts>.
  </explain>

  <\explain>
    <explain-macro|write|aux|content><explain-synopsis|write auxiliary
    information>
  <|explain>
    Please document.
  </explain>

  <\explain>
    <explain-macro|flag|content|color>

    <explain-macro|flag|content|color|var><explain-synopsis|display an
    informative flag>
  <|explain>
    This tag is used to in order to inform the user about information which
    is present in the document, but not visible when printed out. <TeXmacs>
    displays such informative flags for labels, formatting directives such as
    page breaks, and so on. In <menu|Document|View|Informative flags>, the
    user may specify how the informative flags should be rendered.

    The two-argument variant displays an informative flag with a given
    <src-arg|content> and <src-arg|color>. The <src-arg|content> is only
    rendered when selecting <menu|Document|View|Informative flags|Detailed>.
    For instance, <inactive*|<flag|warning|red>> is rendered as
    <flag|warning|red>. The optional <src-arg|var> argument may be used in
    order to specify that the flag should only be visible if the macro
    argument <src-arg|var> corresponds to an accessible part of the document.
    For instance, <TeXmacs> automatically generated labels for section titles
    (so as to include them in the table of contents), but it is undesirable
    to display informative flags for such labels.
  </explain>

  <tmdoc-copyright|2004|Joris van der Hoeven>

  <tmdoc-license|Permission is granted to copy, distribute and/or modify this
  document under the terms of the GNU Free Documentation License, Version 1.1
  or any later version published by the Free Software Foundation; with no
  Invariant Sections, with no Front-Cover Texts, and with no Back-Cover
  Texts. A copy of the license is included in the section entitled "GNU Free
  Documentation License".>
</body>

<\initial>
  <\collection>
    <associate|preamble|false>
  </collection>
</initial>