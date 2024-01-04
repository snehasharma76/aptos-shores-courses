module robinson::my_shore {

    struct GlobalData has key {
        nb_tree: u8,
        has_river: bool,
        shore_location: address,
        animal: vector<u8>,
    }

    struct House has store{ // add a new ability after you are done with function initialization
        no_of_members : u8,
        house_location : address,
        house_owner : address,
    }

    // create a function to initialize the struct "House"


}