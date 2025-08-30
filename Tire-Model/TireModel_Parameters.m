%% Selection 
model = input("Wet or Icy road conditions?: ",'s');
if (model == "Wet") || (model == "wet")
    c1=86/100;
    c2=33078/1000;
    c3=36/100;
    fprintf("Wet conditions set")
elseif (model == "Icy") || (model == "icy")
    c1=2/10;
    c2=6628/1000;
    c3=0;
    fprintf("Icy conditions set")
else
    fprintf("Invalid Model")
end