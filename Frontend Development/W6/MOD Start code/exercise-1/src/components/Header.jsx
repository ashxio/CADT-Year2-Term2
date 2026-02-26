import pnLogo from "../assets/pn-logo.png";

function Header({batchname}) {
    return(
        <header id="header">
        <img src={pnLogo} alt="PN Logo" />
        <h1>Students results for ({batchname})</h1>
      </header>
    );
}

export default Header;