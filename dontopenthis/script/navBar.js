window.addEventListener('load', (e) => {
    var navBar = document.getElementsByClassName('navBar');
    if (navBar.length == 1) {
        navBar = navBar[0];
    }

    window.addEventListener('scroll', handleScroll);
    function handleScroll(e) {
        const offset = 635;
        if (window.pageYOffset < offset) {
            navBar.classList.remove('change');
            return;
        }

        navBar.classList.add('change');
    }
});