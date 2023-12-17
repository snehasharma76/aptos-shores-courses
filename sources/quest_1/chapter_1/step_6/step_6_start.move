module robinson::my_shore {

    struct GlobalData has key {
        nb_tree: u8,
        has_river: bool,
        shore_location: address,
        // add "nb_trees" var with "vector<u8>" type - Note : we used nb_tree for integer u8 type, here we are talking about multiple trees.

    }

}