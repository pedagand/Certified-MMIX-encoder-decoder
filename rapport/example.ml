(*=nbit *)
let rec n_bit k =
  match k with
  | 0 -> []
  | n -> let l = n_bit (k / 2) in
         (n mod 2) :: l
                        (*=End *)           
