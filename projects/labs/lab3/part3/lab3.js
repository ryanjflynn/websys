//main funciton: params are active node and the layer(depth) it is at
function iterDom(active, layer) {

  //check to see if the node is an Element
  if (active.nodeType == 1) {

    //add event listener to the element which calls bubble function (element as param)
    active.addEventListener("click", function() {bubble(active);});

    //for all divs add event listeners for mousover and mouseout (refer to functions)
    if (active.tagName == 'DIV') {
      active.addEventListener("mouseover", function() {mouseover(active);});
      active.addEventListener("mouseout", function() {mouseout(active);});
    }

    //setup the string to be returned (empty)
    var subString = '';

    //loop to add dashes based on layer number
    for (var i = 0; i < layer; i++) {
      subString += '-';
    }

    //append the active Element's tag name to string
    subString += active.tagName + '\n';

    //loop to apply the function to all the child nodes within active (recursion)
    for (var j = 0; j < active.childNodes.length; j++) {

      //pass the active childnode and 1 deeper layer value
      var childString = iterDom(active.childNodes[j], layer + 1);

      //if something gets returned by childnode, append to substring
      if (childString != '') {
        subString += childString;
      }
    }

    //return the string
    return subString;
  }

  //otherwise just return empty string
  else {
    return '';
  }

}

//bubble function to alert the tagname
function bubble(el) {
  alert(el.tagName);
}

//change background color and shift 10px
function mouseover(el) {
  el.style.backgroundColor = "#a2e8f2";
  el.style.paddingLeft = "10px";
}
//remove background color and shift back 10px
function mouseout(el) {
  el.style.backgroundColor = "white";
  el.style.paddingLeft = "0px";
}

//setup a var with the quote wanted to copy then clone and append to body
var targNode = document.getElementsByTagName('div')[3];
var clone = targNode.cloneNode(true);
document.getElementsByTagName("body")[0].appendChild(clone);

//start the root node at the html tag
var root = document.getElementsByTagName('html')[0];
var layer = 0;  //the layer is 0 at html
var mainString = iterDom(root, layer);  //call function into one string variable
document.getElementById('info').innerHTML += mainString; //place into <pre>
