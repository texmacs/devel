<TeXmacs|1.0.3>

<style|tmdoc>

<\body>
  <tmdoc-title|Environment and variables>

  The <em|evaluation> and <em|typesetting> processes are controlled by
  variables. The <def-index|environment> is the collection all variables and
  values at a given point in the document, we also sometime call it the
  <def-index|context>.

  Production of boxes is controlled by a number of <def-index|typesetter
  variables>. For example the text color is set by the <verbatim|color>
  variable:

  <\tm-fragment>
    Some <with|color|dark red|colored> text.
  </tm-fragment>

  <\scheme-fragment>
    (concat "Some " (with "color" "dark red" "colored") " text.")
  </scheme-fragment>

  Variables are also used for computational purposes during the
  <em|evaluation> step.

  <\tm-fragment>
    <\enumerate>
      <item>Weirdly

      <assign|itemnr|3><item>numbered list
    </enumerate>
  </tm-fragment>

  <\scheme-fragment>
    (enumerate (document

    \ \ (concat (item) "Weirdly")

    \ \ (concat (assign "itemnr" "3") (item) "numbered list")))
  </scheme-fragment>

  The typesetting language use <def-index|dynamic scoping> of variables. That
  means that macros <emdash>the procedures defining non-primitive
  markup<emdash> can access and modify variables in their calling context. In
  the previous example, the <verbatim|enumerate> macro initializes
  <verbatim|itemnr> to 0 and the <verbatim|item> macro increments it by one
  and show its value.

  In additions to variables set by primitives and markup inside a document,
  some variables are defined in the <def-index|initial environment>. This is
  the environment at the point <verbatim|(0 0)> of the document, the start of
  the first paragraph.

  <\description>
    <item*|Default initial values>are set by the document style and packages.

    <item*|Document initial values>are stored out-of-band <emdash>like the
    document style, they do not show in the editor window<emdash> using
    <value|scheme> functions like <verbatim|init-env>.
  </description>

  Some variables, like header and footer variables, must be set inside the
  document, their initial environment value is ignored. Generally, they
  should be set by header and sectioning markup.

  <tmdoc-copyright|2004|David Allouche>

  <tmdoc-license|Permission is granted to copy, distribute and/or modify this
  document under the terms of the GNU Free Documentation License, Version 1.1
  or any later version published by the Free Software Foundation; with no
  Invariant Sections, with no Front-Cover Texts, and with no Back-Cover
  Texts. A copy of the license is included in the section entitled "GNU Free
  Documentation License".>
</body>

<\initial>
  <\collection>
    <associate|page-even|30mm>
    <associate|page-reduce-bot|15mm>
    <associate|page-reduce-right|25mm>
    <associate|page-reduce-left|25mm>
    <associate|page-top|30mm>
    <associate|page-right|30mm>
    <associate|par-width|150mm>
    <associate|page-odd|30mm>
    <associate|page-bot|30mm>
    <associate|page-reduce-top|15mm>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|idx-5|<tuple|4.|?>>
    <associate|idx-1|<tuple|<uninit>|?>>
    <associate|idx-2|<tuple|<uninit>|?>>
    <associate|idx-3|<tuple|<uninit>|?>>
    <associate|idx-4|<tuple|4.|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|environment>|<pageref|idx-1>>

      <tuple|<tuple|context>|<pageref|idx-2>>

      <tuple|<tuple|typesetter variables>|<pageref|idx-3>>

      <tuple|<tuple|dynamic scoping>|<pageref|idx-4>>

      <tuple|<tuple|initial environment>|<pageref|idx-5>>
    </associate>
  </collection>
</auxiliary>