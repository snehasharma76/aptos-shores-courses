use std::signer;
module robinson::my_shore {

    struct GlobalData has key {
        nb_tree: u8,
        has_river: bool,
        shore_location: address,
        animal: vector<u8>,
    }

    struct House has store, drop{
        no_of_members : u8,
        house_location : address,
        house_owner : address
    }

    fun init_house(s: signer, members: u8, location: address) {
        assert!(signer::address_of(&s) == @0x42, 0);
        let _house = House{
            no_of_members : members,
            house_location : location,
            house_owner:signer::address_of(&s),
        };
       
    }
    fun add_trees(data: &mut GlobalData) {

        data.nb_tree = data.nb_tree + 1
    }
}










