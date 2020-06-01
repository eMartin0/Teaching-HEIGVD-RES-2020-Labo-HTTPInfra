// Crée un serveur http express
var express = require('express');
var app = express();
// 
var Chance = require('chance');
var chance = new Chance();

app.put('/flower', function(req, res){
    res.send('Flowers are beatiful');
});

app.get('/test', function(req, res){
    res.send('Welcome to a place where work is still in progress..');
});

app.get('/', function(req, res){
    res.send(content());
});

app.listen(3000, function(){
    console.log('Accepting HTTP requests on port 3000');
});

function content(){
    // Random content Generator
    var nbParagraphs = chance.integer({ min: 1, max: 9 });
    var title = chance.sentence({ words: 4 });
    var paragraphs = [];
    paragraphs.push({ title: title });
    for(var i = 0; i < nbParagraphs; i++){
        var nbSentences = chance.integer({ min: 1, max: 15 });
        var paragraph = chance.paragraph({ sentence: nbSentences });
        var orientation = chance.gender();
        var name = chance.name({ gender: orientation });
        paragraphs.push({ 
            content: paragraph,
            author: name
        });
    };
    return paragraphs;
}
