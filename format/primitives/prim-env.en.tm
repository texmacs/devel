<TeXmacs|1.0.3.5>

<style|tmdoc>

<\body>
  <tmdoc-title|Environment primitives>

  A document <re-index|default initial environment> is the typesetter default
  environment modified by the execution of document style and packages. These
  primitives are used to access and modify environment variables.

  <\big-table>
    <tag-info-table|<tformat|<table|<row|<cell|<strong|Operator>>|<cell|<strong|Arity>>|<cell|<strong|Accessible>>|<cell|>|<cell|<strong|Process>>|<cell|<strong|Usage>>>|<row|<cell|>|<cell|>|<cell|<strong|border>>|<cell|<strong|children>>|<cell|>|<cell|>>|<row|<cell|<markup|assign>>|<cell|<with|mode|math|2>>|<cell|Yes>|<cell|None>|<cell|Typesetting>|<cell|Physical>>|<row|<cell|<markup|with>>|<cell|<with|mode|math|2*(n+1)+1>>|<cell|Yes>|<cell|Last>|<cell|Typesetting>|<cell|Physical>>|<row|<cell|<markup|value>>|<cell|<with|mode|math|1>>|<cell|Yes>|<cell|None>|<cell|Functional>|<cell|Style>>|<row|<cell|<markup|provides>>|<cell|<with|mode|math|1>>|<cell|Yes>|<cell|None>|<cell|Functional>|<cell|Style>>>>>
  </big-table|Environment primitives>

  <\explain>
    <explain-macro|assign|var|val><explain-synopsis|variable mutation>
  <|explain>
    This primitive sets the environment variable named <src-arg|var> (string
    value) to the value of the <src-arg|val> expression. This primitive is
    used to make non-scoped changes to the environment, like defining markup
    or increasing counters.

    This primitive affects the evaluation process <emdash>through
    <markup|value>, <markup|provides>, and macro definitions<emdash> and the
    typesetting process <emdash>through special typesetter variables.

    <\example>
      Enabling page breaking by style

      The <verbatim|page-medium> is used to enable page breaking. Since only
      the <re-index|initial environment> value for this variable is
      effective, this assignation must occur in a style file, not within a
      document.

      <\tm-fragment>
        <inactive*|<assign|page-medium|paper>>
      </tm-fragment>
    </example>

    <\example>
      Setting the chapter counter

      The following snippet will cause the immediately following chapter to
      be number 3. This is useful to get the the numbering right in
      <verbatim|book> style when working with projects and <markup|include>.

      <\tm-fragment>
        <inactive*|<assign|chapter-nr|2>>
      </tm-fragment>
    </example>

    The operand must be a literal string and is interpreted as a file name.
    The content of this file is typeset in place of the <markup|include> tag,
    which must be placed in <re-index|block context>.
  </explain>

  <\explain>
    <explain-macro|with|var-1|val-1|<with|mode|math|\<cdots\>>|var-n|val-n|body><explain-synopsis|variable
    scope>
  <|explain>
    This primitive temporarily sets the environment variables <src-arg|var-1>
    until <src-arg|var-n> (in this order) to the evaluated values of
    <src-arg|val-1> until <src-arg|val-n> and typesets <src-arg|body> in this
    modified environment. All non-scoped change done with <markup|assign> to
    <src-arg|var-1> until <src-arg|var-n> within <src-arg|body> are reverted
    at the end of the <markup|with>.

    This primitive is used extensively in style files to modify the
    typesetter environment. For example to locally set the text font, the
    paragraph style, or the mode for mathematics.
  </explain>

  <\explain>
    <explain-macro|value|var><explain-synopsis|variable value>
  <|explain>
    This primitive evaluates the current value of the environment variable
    <src-var|var> (literal string). This is useful to display counters and
    generally to implement environment-sensitive behavior.

    This primitive is used extensively in style files to modify the
    typesetter environment. For example to locally set the text font, the
    paragraph style, or the mode for mathematics.
  </explain>

  <\explain>
    <explain-macro|provides|var><explain-synopsis|definition predicate>
  <|explain>
    This predicate evaluates to <verbatim|true> if the environment variable
    <src-var|var> (string value) is defined, and to <verbatim|false>
    otherwise.

    That is useful for modular markup, like the <markup|session>
    environments, to fall back to a default appearance when a required
    package is not used in the document.
  </explain>

  <tmdoc-copyright|2004|David Allouche|Joris van der Hoeven>

  <tmdoc-license|Permission is granted to copy, distribute and/or modify this
  document under the terms of the GNU Free Documentation License, Version 1.1
  or any later version published by the Free Software Foundation; with no
  Invariant Sections, with no Front-Cover Texts, and with no Back-Cover
  Texts. A copy of the license is included in the section entitled "GNU Free
  Documentation License".>
</body>

<\initial>
  <\collection>
    <associate|page-bot|30mm>
    <associate|page-even|30mm>
    <associate|page-odd|30mm>
    <associate|page-reduce-bot|15mm>
    <associate|page-reduce-left|25mm>
    <associate|page-reduce-right|25mm>
    <associate|page-reduce-top|15mm>
    <associate|page-right|30mm>
    <associate|page-top|30mm>
    <associate|par-width|150mm>
  </collection>
</initial>