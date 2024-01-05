module robinson::my_shore {

    struct GlobalData has key {
        nb_tree: u8,
        has_river: bool,
        shore_location: address,
        // add "daily_visitors" var with "vector<u64>" type 

    }

}