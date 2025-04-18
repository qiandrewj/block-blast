type t
(**The abstract type representing a block.*)

type color = R | G | B | Y | P
(**The type representing a block's color. *)

type shape = (int * int) list
(**The type representing a block's shape as relative coordinates from the top left.*)

val create_block : color -> shape -> t
(**[create_block color shape] is a new block of [color] and [shape].*)

val create_random_block : unit -> t
(**[create_random_block ()] is a block with random color and shape.*)

val get_color : t -> color
(**[get_color block] is the color of [block].*)

val get_shape : t -> shape
(**[get_shape block] is the shape of [block].*)

val one : shape
(**[one] is a 1x1 square. *)

val sqr : shape
(**[sqr] is a 2x2 square. *)

val big_sqr : shape
(**[big_sqr] is a 3x3 square. *)

val hor_line : shape
(**[hor_line] is a horizontal line of length 4. *)

val vert_line : shape 
(**[vert_line] is a vertical line of length 4. *)

val big_l : shape
(**[big_l] is a 3x3 L shape. *)

val inv_big_l : shape
(**[big_l] is a 3x3 L shape, reflected over both axes. *)

val t_up : shape
(**[t_up] is a 4-block T-shape, with the "stem" pointing up. *)

val t_down : shape
(**[t_down] is a 4-block T-shape, with the "stem" pointing down. *)

val t_left : shape
(**[t_left] is a 4-block T-shape, with the "stem" pointing left. *)

val t_right : shape
(**[t_right] is a 4-block T-shape, with the "stem" pointing right. *)

val s_right: shape
(**[s_right] is a 4-block S-shape. *)

val s_left : shape
(**[s_left] is a 4-block S-shape, reflected over the y-axis. *)

val s_down: shape
(**[s_down] is a 4-block S-shape, rotated 90-degrees. *)

val l_up : shape
(**[l_up] is a 4-block (3x2) L-shape, with the long end pointing up. *)

val l_down : shape
(**[l_down] is a 4-block (3x2) L-shape, with the long end pointing down. *)

val l_left : shape
(**[l_left] is a 4-block (3x2) L-shape, with the long end pointing left. *)

val l_right : shape
(**[l_right] is a 4-block (3x2) L-shape, with the long end pointing right. *)