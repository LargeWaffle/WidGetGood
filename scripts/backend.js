
const { dialog } = require('electron')

module.exports = function localImport(){

    const selectedPaths = dialog.showOpenDialog({ properties: ['openFile', 'multiSelections'] });
    console.log(selectedPaths);

}

