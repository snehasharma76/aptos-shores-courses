module robinson::my_shore {

    struct GlobalData has key {
        nb_tree: u8,
        has_river: bool,
        shore_location: address,
        nb_trees: vector<u8>,
    }

    struct House has key, store{
        no_of_members : u8,
        house_location : address,
        house_owner : address,
    }

    fun init_house(s: signer, members: u8, location: address) {
        assert!(signer::address_of(&s) == @0x42, 0);
        let house = House{
            no_of_members : members,
            house_loacation : location,
            house_owner:signer::address_of(&s)
        }
       
    }
}