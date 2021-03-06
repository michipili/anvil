### Makefile -- Anvil

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

PACKAGE=		anvil
OFFICER=		michipili@gmail.com
VERSION=		0.3.0-current

MODULE=			ocaml.prog:src
MODULE+=		shell.lib:subr
MODULE+=		shell.prog:tool
MODULE+=		shell.prog:git-extra
MODULE+=		shell.prog:git-hooks
MODULE+=		generic.files:files

CONFIGURE=		Makefile.config.in
CONFIGURE+=		subr/anvil_autoconf.sh.in

db-init:
	rm -f ${ac_resource_db}
	${.OBJDIR}/src/anvil_init -I

db-import:
	${.OBJDIR}/src/anvil_init -J ${.CURDIR}

.include "generic.project.mk"

### End of file `Makefile'
