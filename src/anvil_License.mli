(* Anvil_License -- Handling licenses

   Anvil (https://github.com/michipili/anvil)
   This file is part of Anvil

   Copyright © 2013–2016 Michael Grünewald

   This file must be used under the terms of the CeCILL-B.
   This source file is licensed as described in the file COPYING, which
   you should have received as part of this distribution. The terms
   are also available at
   http://www.cecill.info/licences/Licence_CeCILL-B_V1-en.txt *)

module Sqlite =
  Lemonade_Sqlite

val list : Sqlite.handle -> string list
(** List available licences. *)

val files : string -> Sqlite.handle -> (string * string) list
(** The license files, as filenames and their contents.

@raise Failure if the given licence is not known. *)

val blob : string -> Sqlite.handle -> string
(** The licence blob.

@raise Failure if the given license is not known. *)


(** {6 Initialising the database} *)

val initdb : string
(** SQL statement used to initialise the database by creating
    appropriate tables. *)

val importdb : string -> Sqlite.handle -> unit
(** Import license data found under the geiven path. *)
