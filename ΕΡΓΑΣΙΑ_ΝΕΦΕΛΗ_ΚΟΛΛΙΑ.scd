 //https://www.youtube.com/watch?v=ESCbw9Ph9m4&list=RDZnObqYfb-0M&index=13

//πρώτο  pattern- --> S-R-S-G-R-M-G-R-S-- στο 1.12 sec του video
//plays a simple pattern

Pbind(\dur, 0.2, \degree, Pseq([0, 1, 0, 2, 1, 3, 2, 1, 0], 1), \amp, 0.2).play;

//put pattern in variable ~pat1

~pat1 = Pseq([0, 1, 0, 2, 1, 3, 2, 1, 0], 1);

// shift pattern for 4 positions

Pbind(\dur, 0.2, \degree, ~pat1 + 4, \amp, 0.2).play;

// shift pattern for 7 positions
Pbind(\dur, 0.2, \degree, ~pat1 + 7, \amp, 0.2).play;

//playing first  pattern and 2 shift  of it
//adding 2 pauses between patterns
//dur : 0.2
Pbind(\dur, 0.2, \degree, Pseq([~pat1, \, \, ~pat1 + 4, \, \, ~pat1 + 7]), \amp, 0.2).play;

// changing duration
//removing the silences and adding trace to see how it works

~durs = Pseq([0.20, 0.20, 0.20, 0.20, 0.20,  0.20, 0.20, 0.20, 0.80], inf);
Pbind(\dur,~durs , \degree, Pseq([~pat1,~pat1 + 4, ~pat1 + 7]), \amp, 0.2).trace.play;

//https://www.youtube.com/watch?v=OwPXH4gZitw&list=RDOwPXH4gZitw&start_radio=1

//with Raga Maya Malava Goula -- 0.44 in video

Scale.all.put(\mayamalavagoula, Scale([0, 1, 4, 5, 7, 8, 11]));
Pbind(\dur,~durs, \degree, Pseq([~pat1, ~pat1 + 4, ~pat1 + 7]), \amp, 0.2,
	\scale, Scale.mayamalavagoula
).play;


//Δεύτερο patern S-R-S-N-D-N-S--  στο 1.44 sec απο το video
//descending

~pat2 = Pseq([2, 3, 2, 1, 0, 1, 2], 1);
Pbind(\dur, 0.2, \degree, Pseq([~pat2 + 7, \, \, ~pat2 + 4, \, \, ~pat2]), \amp, 0.2).play;

//changing  duration
//removing the silences and adding trace to see how it works
~durs = Pseq([0.20, 0.20, 0.20, 0.20,  0.20, 0.20, 0.80], inf);
Pbind(\dur,~durs , \degree, Pseq([~pat2 + 7, ~pat2 + 4,  ~pat2]), \amp, 0.2).trace.play;


//https://www.youtube.com/watch?v=OwPXH4gZitw&list=RDOwPXH4gZitw&start_radio=1
// with Raga Shankarabharanam -- 2.50 in video

Scale.all.put(\shankarabharanam, Scale([0, 2, 4, 5, 7, 9, 11]));
Pbind(\dur,~durs, \degree, Pseq([~pat2 + 7,~pat2 + 4, ~pat2]), \amp, 0.2,
	\scale, Scale.shankarabharanam
).play;

//same pattern with  Raga Maya MalavaGoula -- 0.44 in video

//Scale.all.put(\mayamalavagoula, Scale([0, 1, 4, 5, 7, 8, 11]));
Pbind(\dur,~durs, \degree, Pseq([~pat2 + 7,~pat2 + 4, ~pat2]), \amp, 0.2,
	\scale, Scale.mayamalavagoula
).trace.play;


