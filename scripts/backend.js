window.$ = window.jQuery = require('jquery');

const { dialog } = require('electron')

function localImport(){

    console.log(dialog.showOpenDialog({ properties: ['openFile', 'multiSelections'] }))

}
