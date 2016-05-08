### Makefile -- Anvil tools

# Anvil (https://github.com/michipili/anvil)
# This file is part of Anvil
#
# Copyright © 2015 Michael Grünewald
#
# This file must be used under the terms of the CeCILL-B.
# This source file is licensed as described in the file COPYING, which
# you should have received as part of this distribution. The terms
# are also available at
# http://www.cecill.info/licences/Licence_CeCILL-B_V1-en.txt

PROGRAM=		anvil_init

SRCS=			anvil_Configuration.ml
SRCS+=			anvil_Git.ml
SRCS+=			anvil_Database.ml
SRCS+=			anvil_Index.ml
SRCS+=			anvil_License.ml
SRCS+=			anvil_Build.ml
SRCS+=			anvil_Wizard.ml
SRCS+=			anvil_Text.ml
SRCS+=			anvil_File.ml
SRCS+=			anvil_Environment.ml
SRCS+=			anvil_Init.ml

EXTERNAL=		ocaml.findlib:gasoline
EXTERNAL+=		ocaml.findlib:lemonade
EXTERNAL+=		ocaml.findlib:lemonade-sqlite
EXTERNAL+=		ocaml.findlib:lwt.ppx
EXTERNAL+=		ocaml.findlib:rashell

REPLACEFILE=		anvil_Configuration.ml.in

.include "ocaml.prog.mk"

### End of file `Makefile'