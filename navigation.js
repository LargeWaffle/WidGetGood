Vue.component('app-nav', {
    props: [],
    template:
        '<nav>\n' +
        '    <a href="index.html">Dashboard</a>\n' +
        '    <a href="pages/play.html">Play</a>\n' +
        '</nav>'
})

let app = new Vue({
    el: '#app',
})

