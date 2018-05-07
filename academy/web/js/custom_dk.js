

function notifyMe() {
  alert('Changed');

}


function get_states(str)
{

//var xmlhttp;
if(str=="")
{
	document.getElementById("state_id").innerHTML="";
	//document.getElementById("related_states").style.display="none";
	return;
}
 document.getElementById("state_id").innerHTML;
if(window.XMLHttpRequest)
{
	xmlhttp=new XMLHttpRequest();
}
else
{
   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
 xmlhttp.onreadystatechange=function()
{
   		if(xmlhttp.readyState==4 && xmlhttp.status==200){
			//document.getElementById("related_states").style.display="block";
			document.getElementById("state_id").innerHTML=xmlhttp.responseText;
        }
}
   xmlhttp.open("GET", "getStates?q="+str,true);
   xmlhttp.send();
}//end of  get_states
