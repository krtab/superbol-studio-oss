(* Caution: this file was automatically generated from grammar.cmly; do not edit *)
[@@@warning "-33"] (* <- do not warn on unused opens *)
[@@@warning "-27"] (* <- do not warn on unused variabes *)

open Grammar
open MenhirInterpreter

type post_action =
  | Post_pending: (string) -> post_action
  | Post_special_names: (Cobol_ptree.special_names_clause) -> post_action
  | NoPost: post_action

let post_production_num
  : type k. int -> k env -> post_action = fun prod_num env ->
  match top env with
  | None -> NoPost
  | Some (Element (state, value, _, _)) ->
      match incoming_symbol state, prod_num with
      | N N__assign_external_, 2 ->
           Post_pending ((fun () -> "EXTERNAL") value)
      | N N_special_names_clause, 2093 -> Post_special_names value
      | N N_special_names_clause, 2094 -> Post_special_names value
      | N N_special_names_clause, 2095 -> Post_special_names value
      | N N_special_names_clause, 2096 -> Post_special_names value
      | N N_special_names_clause, 2097 -> Post_special_names value
      | N N_special_names_clause, 2098 -> Post_special_names value
      | N N_special_names_clause, 2099 -> Post_special_names value
      | N N_special_names_clause, 2100 -> Post_special_names value
      | N N_special_names_clause, 2101 -> Post_special_names value
      | N N_special_names_clause, 2102 -> Post_special_names value
      | N N_special_names_clause, 2103 -> Post_special_names value
      | _ -> NoPost

let post_production
  : type k. production -> k env -> post_action = fun p ->
  post_production_num (production_index p)

