/**
 * Created by leo on 09-12-2015.
 */

var CHAOTIVE = {
    SAMPLE: {
        STATES: {}
    }
};

function init() {
    try {
        CHAOTIVE.SAMPLE.game = new CHAOTIVE.SAMPLE.SampleApp(800, 600)
    } catch(err) {
        console.log("Still loading: " + err.message);
        setTimeout(init, 200);
    }
}