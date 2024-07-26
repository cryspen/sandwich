module Core.Marker

type t_PhantomData (t: Type) = t

class t_Clone (v_Self: Type0) = {
  f_clone_pre:v_Self -> bool;
  f_clone_post:v_Self -> v_Self -> bool;
  f_clone:x0: v_Self -> Prims.Pure v_Self (f_clone_pre x0) (fun result -> f_clone_post x0 result);
  f_clone_from_pre:v_Self -> v_Self -> bool;
  f_clone_from_post:v_Self -> v_Self -> v_Self -> bool;
  f_clone_from:x0: v_Self -> x1: v_Self
    -> Prims.Pure v_Self (f_clone_from_pre x0 x1) (fun result -> f_clone_from_post x0 x1 result)
}

class t_Copy (v_Self: Type0) = {
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_13225068822189715818:t_Clone v_Self
}
