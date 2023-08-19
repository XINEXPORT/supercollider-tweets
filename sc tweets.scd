{n=LFNoise0.ar(_);f=[60,61];tanh(BBandPass.ar(max(max(n.(4),l=n.(6)),SinOsc.ar(f*ceil(l*9).lag(0.1))*0.7),f,n.(1).abs/2)*700*l.lag(1))}.play

play{x=LFSaw.ar([0.3,0.6])*LFSaw.ar([1,1.5])*SinOsc.ar([440,220]*LFPulse.kr(0.12).range(1,2));CombC.ar(x,0.5,0.5,9,0.5,x)/12}

play{SinOsc.ar([a=[1,8,2]]*96,0,Decay.kr(Demand.kr([b=Impulse.kr(a,[0,1,0.5])],0,Dseq([1,9,0,0],16))*b,0.1)).fold2(0.1)!2}//

a=SinOsc;play{a.ar(0,a.ar(5/3)%1+a.ar(Duty.ar(b=0.15,0,Dseq(a.ar(a.ar(b)/3+0.3).max+1*[[261,440],220,261,349,99,0],inf))))}//

play{a=[7,14];b=[2,3,5];i=Dust.ar(a);GVerb.ar(Ringz.ar(i,Demand.ar(i,0,Dseq(a*.x(b),inf))*LFNoise0.kr(1,8.1,9),b[0,1],0.01),99,1)}//

play{Splay.ar(BPF.ar(PinkNoise.ar(1!12),LFNoise0.kr({((1..32)*1e-2).choose}!12).exprange(99,600).round(50),2e-3))*25}//

.scope.play;