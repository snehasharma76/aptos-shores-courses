module robinson::my_shore {

    struct GlobalData has key {
        nb_tree: u8,
        has_river: bool,
        shore_location: address,
        daily_visitors: vector<u64>,
    }

    fun shores(){

    }
 }
