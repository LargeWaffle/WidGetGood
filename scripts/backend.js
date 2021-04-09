
const { dialog } = require('electron')
const path = require('path');

module.exports = function localImport(){

    // transforme un chemin relatif en absolu
    const importDirectoryPath = path.resolve( "../WidGetGood/resources/")

    // TODO: fonction pour doc & docx
    const selectedPaths = dialog.showOpenDialogSync({
        title: 'Importation de dictionnaires',
        defaultPath: importDirectoryPath,
        buttonLabel: 'Importer',
        filters: [{name: 'Fichiers personnalisés', extensions: ['csv']}],
        properties: ['openFile', 'multiSelections'] });

    console.log(selectedPaths);

}

