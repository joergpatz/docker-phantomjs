var page = require('webpage').create();
page.viewportSize = { width: 320, height: 480 };
page.open('http://faz.net', function (status) {
    if (status !== 'success') {
        console.log('Unable to access the network!');
    } else {
        page.evaluate(function () {

        });
        page.render('./tmp/faznews.png');
    }
    phantom.exit();
});