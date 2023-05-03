# make sure that edges work well in the global scope 
edge<string> e1; 
node<string> n1;
node<string> n2;
node<string> n3;
n1.data = "Richard thank you for singing kareoke with us!";
n2.data = "My brain is all fritzed out I cannot even think anymore"; 
n3.data = "And to think I still have to do my math final that is a massive L"; 
e1.src = n1; 
e1.dst = n2; 
e1.weight = 3; 

node<string> n1ImposterNode = e1.src; 
string prtyMsgFrRichard = n1ImposterNode.data; 
printf(prtyMsgFrRichard); 

# lets make sure edges can be easily manipulated

edge<string> e2 = e1; 
e2.weight = 4; 
int testWeight = e1.weight;
printf(testWeight);

# now lets test edges using n1 -> n2 notation

edge<string> e3 = n1 -> n3;
node<string> n4 = e3.dst; 
string aGlimpseIntoMyFuture = n4.data; 
printf(aGlimpseIntoMyFuture);

# lets make sure edges may be returned from functions no problem

edge<string> weAreSoBehindLMAO() {
    node<string> aMessageForMain; 
    node<string> ifFunctionsDontWorkMyGod; 
    aMessageForMain.data = "damn"; 
    ifFunctionsDontWorkMyGod.name = "havent really tested you have I"; 
    edge<string> newbie = aMessageForMain -> ifFunctionsDontWorkMyGod; 
    return newbie;
}

edge<string> Ihaveconfidenceinsunshine = weAreSoBehindLMAO(); 
node<string> Ihaveconfidenceinrain = Ihaveconfidenceinsunshine.dst; 
string despitewhatyouseeIhaveconfidenceinme = Ihaveconfidenceinrain.name; 
printf(despitewhatyouseeIhaveconfidenceinme);
