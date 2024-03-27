function [y1] = myNeuralNetworkFunction(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 19-Nov-2023 22:43:04.
%
% [y1] = myNeuralNetworkFunction(x1) takes these arguments:
%   x = 16xQ matrix, input #1
% and returns:
%   y = 16xQ matrix, output #1
% where Q is the number of samples.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [100;100;104;100;101;100;102;100;101;103;101;103;100;101;101;100];
x1_step1.gain = [0.00222469410456062;0.00222469410456062;0.00223214285714286;0.0022271714922049;0.00222469410456062;0.00222469410456062;0.0022271714922049;0.00222965440356745;0.0022271714922049;0.00223964165733483;0.00222469410456062;0.00223214285714286;0.00223214285714286;0.0022271714922049;0.0022271714922049;0.00222965440356745];
x1_step1.ymin = -1;

% Layer 1
b1 = [-0.10822726187294828826;0.88648367688379492435;-0.054521640738531579329;0.35901923731441720555;0.030947558031657718125;-0.04723710358171295115;0.091626407094096265493;-0.06518680740451673894;-0.053982138805977984697;0.089457255337681729213];
IW1_1 = [0.043705717582560622836 0.21160744358991639968 0.17876241684846244651 0.28157447941004321024 0.12134477991799368091 0.12600645655482120566 0.09625805017573255129 0.11626146201625252308 0.041681624855160019638 0.043645178177789185903 0.066134554223820529728 0.033336123994236167845 0.096012866406888192072 0.074060012821654572224 0.09725569333683381501 0.050720747742805806502;-0.21341398505846109757 -0.2465488470205809135 0.35237207004649701014 -0.89732575059293784303 -0.0043566458797276337578 -0.30106909883198262889 -0.3290501343827684777 -0.17960615785308392534 0.74024031949116142481 0.21936855104415287077 0.061157131489802674107 0.37355406023354092993 -0.27977920229732899937 -0.17235980761500235836 0.59248615483701061457 0.042497867655632771966;0.45430417377315268634 -0.097375498996338086255 -0.078676679121718662291 0.62980984681414575732 -0.15790538095958658871 -0.20058984041586705449 -0.27036649061528522653 -0.16441965737274882864 -0.0027103541271114028888 -0.0022524346389710299399 -0.03191243518232268761 -0.034670827536854700868 -0.20750085739575047095 -0.16204397706218268138 -0.1573532174486917401 -0.12164040467923993571;-0.11403294942696912129 -1.1577371800747915387 0.10042296785676252391 0.7666247801353821556 0.31704031354672412846 0.26480302593208426831 -0.5291593479627167973 0.16001166807852129637 0.085910305093512717711 0.10812131322660317734 0.28794833678019493561 -0.15064625320404975706 0.2045317867937740397 -0.11930588977333979328 -0.02402110279677257057 -0.58943686181484367115;-0.057138965231226954145 0.0067974947740368080185 -0.45046927060784425212 0.12105896472974105038 0.1089985421478824601 0.093418387332814795121 0.094906496393298983572 0.11256408633505454731 0.29740335661629124786 0.29563863585881711149 0.25102306213185671124 0.28699299720944171366 -0.10815843043904738163 -0.059052483158802800134 -0.10747435824866895249 -0.010618331514276466848;-0.43091448457703690478 0.12566887110276808714 -0.31951713182685825831 0.29419504476588875796 -0.015798916531624705717 -0.017481262834178543097 -0.015741769677078926853 -0.00068090187749703101616 -0.099013482499067578813 -0.10006267524785034118 -0.12733289232541916691 -0.10409148738076649809 0.063288977403783419629 0.094292534762726656905 0.0891042448960125133 0.12494212364599642517;-0.25226128309541367978 -0.33355606638901519334 -0.33856735473660515279 0.44740214118276028232 -0.76862589800238334536 -0.11232573026760950263 -0.07615651255543964826 -0.53217066626296471998 0.090156385378120457164 0.39152602907756683948 0.95192341654891998726 0.5161166494638601554 0.68120903043841063429 0.050433424095750141458 0.413608469015326774 -0.33484296533656210393;-0.28264194469960618461 0.29608523604559683351 0.13012310055447118273 -0.076257778750954213765 -0.035973543826980425298 -0.032992307417740326936 -0.040154657989454917155 -0.038362341795334153893 0.019842889722520861556 0.025179275341908356756 0.030677623586786235271 0.024188365711549104226 -0.17196580605367681183 -0.18834438830528521525 -0.18619979444045886563 -0.20863398178961398144;-0.19359618318363058798 0.062361079726687390634 0.16713201357017420934 -0.083919507801418602444 -0.2143004014898035603 -0.21772093699043459925 -0.23758365744301684908 -0.20787850407112906659 0.12430548778537052479 0.13400322532761280159 0.1105178843666040911 0.11495233367374224631 0.15036744225756151772 0.16278033192925689399 0.12735985010412609331 0.15939608034174035378;0.34001017287146251267 0.46025936716155813055 -0.32068836106772136141 -0.22103384651188323629 -0.037870918034646663952 -0.02847636324501605018 -0.051205066027754320146 -0.037408660335570859123 -0.011242750104364058333 -0.0012649194317772621474 0.019651281525954848728 -0.021315148918866239081 -0.0014576685802087929744 -0.033916222258341920115 -0.0050449182637649792743 -0.055888057477946354035];

% Layer 2
b2 = [-0.03300019381579593486;0.16410178984459339313;0.19402069583463024682;0.29246238592890094754;0.18361861996487843784;-0.095361221207070592798;-0.038841611868888292758;-0.10195189220701353361;0.03882161019265239349;-0.037086804804821807413;-0.056710116335685643862;0.015504543609147755645;-0.063533791813971632334;0.095932420448959804249;0.040218703051991655517;-0.097526808470535561457];
LW2_1 = [0.23317347085888870395 -0.074677199558728188378 0.43427705640672897847 -0.10787787948277408057 -0.12582281558832400514 -0.92864780826540305192 -0.016125314973608695368 -0.84146071957004320296 -0.20869111339840568098 0.58523820053696984367;1.0423082025216481306 -0.032769755629070813907 0.0071490373786443073278 -0.16765243860565032241 -0.14741472711213735036 0.25391999591207486953 -0.054975081386158974883 0.77112685405267877847 0.26564267991250445355 0.92873559146724904423;0.93657519727787319486 0.02880234261850818378 0.033524704588603120026 -0.099271128109923875704 -0.60900897979719315067 -0.83747487555630906186 -0.07889013425993784967 0.50441202085247294207 0.34967322061431754809 -0.77333132147850913718;0.9366709350921726962 -0.15182606727323946783 0.73995010698421215256 -0.036042547433932460577 0.10454923291218667925 0.52024658754784935955 0.10055484997328989483 0.039888552706471701315 -0.13998117939419701949 -0.50580003095160497306;0.4375786108405223529 -0.17550899645482115341 -0.37707115163391935475 -0.1448104193550592278 0.12558494658546015543 0.065460192681494472344 0.017154522147168248247 0.26655593651858838777 -0.42646214490340283998 -0.48281060147851784237;0.50696298689269092552 0.13422545874211450068 -0.13685363293883220925 0.079869328375334447401 0.22950946576445097058 -0.23324387356733181087 -0.11526603396545830049 -0.39335875554491339656 -0.4548226731237864362 -0.3135126603016622493;0.5709047096622092976 0.10253480820938033757 -0.14833801238939625655 -0.11347129752506107669 0.41759528201155504679 0.08535598370914287969 -0.0041614891049350649643 -0.20679807570957747798 -0.77492929940091526131 0.048806507616940934813;0.32970292939368861518 -0.02694796526947555726 -0.57095844978579712858 0.26243886016690498586 -0.02506797910522326478 -0.24201638704087602427 -0.14434961436631330023 -0.08010606295149692857 -0.38368780156131609971 0.33874515788301834407;0.54778713868969197698 0.052844277933199089448 0.011287688570205119815 0.05460701487080885097 0.64478632487120668415 -0.053703487870786929814 -0.065700580716493747757 0.28160771681925489407 0.57370995561684878794 -0.2165459327517065824;0.061421925695417253777 0.07097013940727221748 0.060913184613664357603 0.053529663292082724224 0.36437173905775721572 -0.44061131555965388218 0.21486372338177131547 -0.059225388669664702501 -0.029564889593063060913 -0.34861834448227807526;0.15075824323868947108 0.036011021646997529166 -0.03156559028638636355 0.14726173755967764123 0.74533208646665993768 -0.085880965796596292483 -0.058493513973277899698 -0.00078759984134118762866 0.50150010713774240134 0.28194844538620361662;0.25705237998362540086 0.045094100649642449019 -0.10856261758799873318 -0.23588063587994376191 0.48249249757368006808 -0.75767703614395021106 0.12495441431135401178 0.048953393819651393193 0.30695282469489792998 -0.033448754142227372921;0.63268578343416648213 0.22811433076963344435 -0.28530998851097455482 0.11281698418088879909 -0.21273212794717455409 0.44994024279954741852 0.041911583649025085929 -0.32547376500531088883 0.34414816369558054454 0.11178911357636808765;0.23421395989674914651 -0.12617832668614814562 -0.14330749368112666309 -0.065549368094087775982 0.019891281970264296231 -0.0098725452119328982459 -0.062325279519397758232 -0.90872173301642489296 0.51340550825575448357 -0.29791202757736146012;0.19664359277525894631 -0.16067119197029558486 -0.06764678566604942489 -0.015890299098198137212 -0.10181615376088098968 0.37952632655556212127 0.090945920102521032868 -0.88662310302355895608 0.25115126762671097227 0.43365147180953372841;0.31951409929225871309 0.1584600353108764903 -0.29000132424148578059 -0.053563047649232038705 -0.10360057903703030757 0.039815467739004579972 -0.11390324169846033353 -0.5823408215993089998 0.50876298779484119272 0.22953939492670383249];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = [0.00222469410456062;0.00222469410456062;0.00223214285714286;0.0022271714922049;0.00222222222222222;0.00222222222222222;0.0022271714922049;0.00224466891133558;0.00222965440356745;0.0022271714922049;0.00223214285714286;0.00223463687150838;0.0022271714922049;0.00222469410456062;0.00223713646532438;0.0022271714922049];
y1_step1.xoffset = [100;100;104;100;100;100;101;102;101;101;103;105;100;100;100;101];

% ===== SIMULATION ========

% Dimensions
Q = size(x1,2); % samples

% Input 1
xp1 = mapminmax_apply(x1,x1_step1);

% Layer 1
a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*xp1);

% Layer 2
a2 = repmat(b2,1,Q) + LW2_1*a1;

% Output 1
y1 = mapminmax_reverse(a2,y1_step1);
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
y = bsxfun(@minus,x,settings.xoffset);
y = bsxfun(@times,y,settings.gain);
y = bsxfun(@plus,y,settings.ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
x = bsxfun(@minus,y,settings.ymin);
x = bsxfun(@rdivide,x,settings.gain);
x = bsxfun(@plus,x,settings.xoffset);
end