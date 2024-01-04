use std::signer;
module robinson::my_shore {

    struct GlobalData has key {
        nb_tree: u8,
        has_river: bool,
        shore_location: address,
        animal: vector<u8>,
    }
    
    fun shores(s: signer) {
        assert!(signer::address_of(&s) == @0x42, 0);
    }
 }
