
var CARR = []; // character arr

// char object
function Char(name, side, unit, rank, role, classy, desc, img) {
  this.name = name;
  this.side = side;
  this.unit = unit;
  this.rank = rank;
  this.role = role;
  this.classy = classy;
  this.desc = desc;
  this.img = img;
}

let claude = new Char(
  "Claude Wallace",
  "Edinburgh Army",
  "Ranger Corps, Squad E",
  "Tank Commander",
  "Scout",
  "Born in the Gallian city of Hafen, this promising young squad leader is keenly attuned to climate changes and weather fluctuations. Ever since graduating as valedictorian from the Royal Military Academy, his talent and determination have been an inspiration to his subordinates.",
  "http://valkyria.sega.com/img/character/chara01.png"
);

let riley = new Char(
  "Riley Miller",
  "Edinburgh Army",
  "Federate Joint Corps",
  "Second Lieutenant",
  "Artillery Advisor",
  "Grenadier",
  "Born in the Gallian city of Hafen, this brilliant inventor was assigned to Squad E after researching ragnite technology in the United States of Vinland. She appears to share some history with Claude, although the memories seem to be traumatic ones.",
  "http://valkyria.sega.com/img/character/chara02.png"
);

let raz = new Char(
  "Raz",
  "Edinburgh Army",
  "Ranger Corps, Squad E",
  "Sergeant",
  "Fireteam Leader",
  "Shocktrooper",
  "Born in the Gallian city of Hafen, this foul-mouthed Darcsen worked his way up from the slums to become a capable soldier. Though foul-mouthed and reckless, his athleticism and combat prowess is top-notch... And according to him, he's invincible.",
  "http://valkyria.sega.com/img/character/chara03.png"
);

let kai = new Char(
  "Kai Schulen",
  "Edinburgh Army",
  "Ranger Corps, Squad E",
  "Sergeant Major",
  "Fireteam Leader",
  "Sniper",
  "Born in the Gallian city of Hafen, this cool and collected sharpshooter has earned the codename 'Deadeye Kai.' Along with her childhood friends, she joined a foreign military to take the fight to the Empire. She loves fresh-baked bread, almost to a fault.",
  "http://valkyria.sega.com/img/character/chara04.png"
);

let rags = new Char(
  "Ragnarok",
  "Edinburgh Army",
  "Squad E",
  "K-9 Unit",
  "Mascot",
  "Medic",
  "Once a stray, this good good boy is lovingly referred to as 'Rags'. As a K-9 unit, he's a brave and intelligent rescue dog who's always willing to lend a helping paw. When the going gets tough, the tough get ruff.",
  "http://valkyria.sega.com/img/character/chara13.png"
);

let roland = new Char(
  "Roland Morgen",
  "Edinburgh Navy",
  "Centurion, Cygnus Fleet",
  "Ship's Captain",
  "Cruiser Commander",
  "Officer",
  "Born in the United Kingdom of Edinburgh, this naval officer commands a state-of-the-art snow cruiser named the Centurion. For a ship's captain, his disposition is surprisingly mild-mannered. As such, he never loses his composure, even in the direst of straits.",
  "http://valkyria.sega.com/img/character/chara18.png"
);

let miles = new Char(
  "Miles Arbeck",
  "Edinburgh Army",
  "Ranger Corps, Squad E",
  "Sergeant",
  "Tank Operator",
  "Driver",
  "Born in the United Kingdom of Edinburgh, this excitable driver was Claude Wallace's partner in tank training, and was delighted to be assigned to Squad E. He's taken up photography as a hobby, and is constantly taking snapshots whenever on standby.",
  "http://valkyria.sega.com/img/character/chara15.png"
);

let minerva = new Char(
  "Minerva Victor",
  "Edinburgh Army",
  "Ranger Gorps, Squad F",
  "First Lieutenant",
  "Senior Commander",
  "Scout",
  "Born in the United Kingdom of Edinburgh to a noble family, this competitive perfectionist has authority over the 101st Division's squad leaders. She values honor and chivalry, though a bitter rivalry with Lt. Wallace sometimes compromises her lofty ideals.",
  "http://valkyria.sega.com/img/character/chara11.png"
);

let marie = new Char(
  "Marie Bennett",
  "Edinburgh Navy",
  "Centurion, Cygnus Fleet",
  "Petty Officer",
  "Chief of Operations",
  "Veteran",
  "As the Centurion's crewmember responsible for overseeing daily operations, this gentle and supportive EWI veteran even takes daily tasks like cooking and cleaning upon herself. She never forgets to wear a smile. Her age is undisclosed, even in her personnel files.",
  "http://valkyria.sega.com/img/character/chara20.png"
);

let karen = new Char(
  "Karen Stuart",
  "Edinburgh Army",
  "Squad E",
  "Corporal",
  "Combat EMT",
  "Medic",
  "Born as the eldest daughter of a large family, this unflappable field medic is an expert at administering first aid in the heat of battle. Although she had plans to attend medical school, she instead enlisted in her nation's military to support her growing household.",
  "http://valkyria.sega.com/img/character/chara12.png"
);

// fill char array
CARR.push(claude);
CARR.push(riley);
CARR.push(raz);
CARR.push(kai);
CARR.push(rags);
CARR.push(roland);
CARR.push(miles);
CARR.push(minerva);
CARR.push(marie);
CARR.push(karen);

var SQUAD_MAX = 5;
var SQUAD_COUNT = 0;

//show it's been selected
function selected(index) {
  document.getElementsByClassName("unit")[index].className = "unit selected";
  for(let i = 0; i < CARR.length; i++){
    if(i != index){
      document.getElementsByClassName("unit")[i].className = "unit";
    }
  }
  add(index);
}

// add to squad
function add(index) {
  if(SQUAD_COUNT < SQUAD_MAX){
    document.getElementById("squad").innerHTML += "<div class='member'>" + CARR[index].name + "</div>";
    //remove squad member if clicked
    for(let i = 0; i < SQUAD_COUNT; i++){
      document.getElementsByClassName("member")[i].addEventListener("click", function(){remove(i)});
    }
    SQUAD_COUNT++;
  }
}

//remove from squad
function remove(index){
  var elem = document.getElementsByClassName("member")[index];
  console.log(  document.getElementsByClassName("member"));
  console.log(index);
  elem.remove();
  if(SQUAD_COUNT > 0){
    SQUAD_COUNT--;
  }
}

//fill battalion list
for(let elem of CARR){
  document.getElementById("battalion").innerHTML += "<div class='unit'>" + elem.name + "</div>";
}

//check if battalion units have been selected
//add them to squad if clicked
for(let i = 0; i < CARR.length; i++){
  document.getElementsByClassName("unit")[i].addEventListener("click", function(){ selected(i)});
}
