function search() {

  /* Hide not-found message*/
  var NotFoundParagraph = document.getElementById("not-found-message");
  NotFoundParagraph.setAttribute("class", "oculta");


  /* Hide all h3 - we get allTagsDiv to avoid hiding the h3 from the header */
  var allTagsDiv = document.getElementsByClassName("all-tags")[0];
  var totsH3 = allTagsDiv.getElementsByTagName("h3");
  for(var i=0; i<totsH3.length; i++){
    totsH3[i].setAttribute("class", "oculta");
  }


  /* Hide all tables */
  var totsTable = document.getElementsByTagName("table");

  for(var i=0; i<totsTable.length; i++){
    totsTable[i].setAttribute("class", "oculta");
  }


  /* Hide <div class="tags-menu mostra"> */
  var divTagsMenu = document.querySelectorAll(".tags-menu");

  for(var i=0; i<divTagsMenu.length; i++){
    divTagsMenu[i].setAttribute("class", "tags-menu oculta");
  }



  /* Show tables that match input text query */
  var contingutText = document.getElementById("user-search").value;

  var tagName = "";

  var count = 0;

  for(var i=0; i<totsTable.length; i++){

    var table = totsTable[i];

    tagName = table.rows[0].cells[0].innerHTML;

    tagName = tagName.substring(49, tagName.length);

    tagName = tagName.substring(0, tagName.length - 13);

    if(tagName.toLowerCase().includes(contingutText.toLowerCase())){

      table.setAttribute("class", "xsl-table mostra");

      count++;

    }
  }


  /* Show not-found message if no tables have matched the input text query */
  if(count == 0) NotFoundParagraph.setAttribute("class", "mostra");


}


function showAll(){

    /* Hide not-found message*/
    var NotFoundParagraph = document.getElementById("not-found-message");
    NotFoundParagraph.setAttribute("class", "oculta");

    /* Show all h3 */
    var totsH3 = document.getElementsByTagName("h3");

    for(var i=0; i<totsH3.length; i++){
      totsH3[i].setAttribute("class", "mostra");
    }

    /* Show all tables */
    var totsTable = document.getElementsByTagName("table");

    for(var i=0; i<totsTable.length; i++){
      totsTable[i].setAttribute("class", "xsl-table mostra");
    }


    /* Show <div class="tags-menu mostra"> */
    var divTagsMenu = document.querySelectorAll(".tags-menu");

    for(var i=0; i<divTagsMenu.length; i++){
      divTagsMenu[i].setAttribute("class", "tags-menu mostra");
    }


    /* Clear input text field */
    document.getElementById("user-search").value = '';


}



































