module robinson::my_shore {

    // import the signer function from the standard library

    struct GlobalData has key {
        nb_tree: u8,
        has_river: bool,
        shore_location: address,
        daily_visitors: vector<u64>,
    }
 
    // add "signer" as parameter and use it in the function body
    fun shores(){

    }
 }
