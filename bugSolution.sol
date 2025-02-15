function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  _transferOwnership(newOwner);
}

function _transferOwnership(newOwner) {
  bool success = false;
  try {
    owner = newOwner;
    success = true; //Update success only if setting owner succeeds
  } catch (bytes memory reason) {
    //Handle potential errors during state change
    //Log error message to understand the cause
  }
  require(success, "Ownership transfer failed");
  emit OwnershipTransferred(owner, newOwner);
}