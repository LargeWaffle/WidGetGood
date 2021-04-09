Vue.component('Navigation', {
    props: [],
    template:
        '<nav>\n' +
        '    <a href="../pages/dashboard.html">Dashboard</a>\n' +
        '    <a href="../pages/play.html">Play</a>\n' +
        '<a href="../pages/settings.html">Settings</a>' +
        '</nav>'
})

let app = new Vue({
    el: '#app',
})

