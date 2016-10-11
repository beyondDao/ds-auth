pragma solidity ^0.4.2;

import 'authorized.sol';
import 'enum.sol';

contract DSAuthUtils is DSAuthModesEnum {
    function setOwner( DSAuthorized what, address owner ) internal {
        what.updateAuthority( owner, DSAuthModes.Owner );
    }
    function setAuthority( DSAuthorized what, DSAuthority authority ) internal {
        what.updateAuthority( authority, DSAuthModes.Authority );
    }
}
