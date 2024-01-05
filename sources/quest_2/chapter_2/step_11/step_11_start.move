module robinson::my_shore {

    use std::signer;

    struct GlobalData has key {
        nb_tree: u8,
        has_river: bool,
        shore_location: address,
        daily_visitors: vector<u64>,
    }

    struct House has store, drop{
        no_of_members : u8,
        house_location : address,
        house_owner : address,
    }

    fun init_house(s: signer, members: u8, location: address) {
        assert!(signer::address_of(&s) == @0x42, 0);
        let _house = House{
            no_of_members : members,
            house_location : location,
            house_owner:signer::address_of(&s)
        };
    }
    //declare a function "add_trees" to add a "mutable reference" to the GlobalData struct .
    // increase the number of trees( nb_tree) by `1`.
}