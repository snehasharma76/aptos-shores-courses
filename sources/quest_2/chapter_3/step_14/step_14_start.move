module robinson::my_shore {
    
    use std::signer;
    // import utf8 module from standard library string module

    struct GlobalData has key { // add drop ability to the "GlobalData" struct
        nb_tree: u8,
        has_river: bool,
        shore_location: address,
        daily_visitors: vector<u64>,
        // Add a island_name var with type String
    }

    struct House has store, drop{
        no_of_members : u8,
        house_location : address,
        house_owner : address
    }

    struct Resources has store, drop{
        food: u64,
        log: u64
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

    fun init_resource() {
        let _resources = Resources {
        food: 1,
        log: 2
    };
}

    fun resources_avail( r: &Resources ) : (u64, u64) {
        let (food, log) = (r.food, r.log);
        (food, log);
    }

    fun cut_tree(tree: &mut GlobalData, r: &mut Resources){

        tree.nb_tree = tree.nb_tree - 1;
        r.log = r.log * 5;
        r.food = r.food / 2;
    }

    // declare a function to initialize the `GlobalData` struct and also add a "name" variable of "string" type to it.
}

