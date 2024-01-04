module robinson::my_shore {

    struct GlobalData has key {
        nb_tree: u8,
        has_river: bool,
        shore_location: address,
        animal: vector<u8>,
    }

    struct House has store{
        no_of_members : u8,
        house_location : address,
        house_owner : address,
    }
}