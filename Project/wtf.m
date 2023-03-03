function out = model
%
% wtf.m
%
% Model exported on Feb 28 2023, 15:38 by COMSOL 6.0.0.318.

import com.comsol.model.*
import com.comsol.model.util.*

model = ModelUtil.create('Model');

model.modelPath('C:\Users\Parrot\Desktop\Git\Computer_intern_Project\Project');

model.component.create('comp1', true);

model.component('comp1').geom.create('geom1', 2);

model.component('comp1').mesh.create('mesh1');

model.component('comp1').geom('geom1').run('fin');
model.component('comp1').geom('geom1').run('');
model.component('comp1').geom('geom1').create('e1', 'Ellipse');
model.component('comp1').geom('geom1').run('e1');
model.component('comp1').geom('geom1').feature('e1').set('semiaxes', [1 0.5]);
model.component('comp1').geom('geom1').run('e1');
model.component('comp1').geom('geom1').run('e1');
model.component('comp1').geom('geom1').create('cb1', 'CubicBezier');
model.component('comp1').geom('geom1').run('e1');
model.component('comp1').geom('geom1').feature.remove('e1');
model.component('comp1').geom('geom1').run('');
model.component('comp1').geom('geom1').feature.remove('cb1');
model.component('comp1').geom('geom1').run('fin');

model.component.remove('comp1');

model.component.create('comp1', true);

model.component('comp1').geom.create('geom1', 3);

model.component('comp1').mesh.create('mesh1');

model.component('comp1').geom('geom1').create('wp1', 'WorkPlane');
model.component('comp1').geom('geom1').feature('wp1').set('unite', true);
model.component('comp1').geom('geom1').feature('wp1').set('quickplane', 'yz');
model.component('comp1').geom('geom1').feature('wp1').geom.create('c1', 'Circle');
model.component('comp1').geom('geom1').feature('wp1').geom.run('c1');
model.component('comp1').geom('geom1').lengthUnit('mm');
model.component('comp1').geom('geom1').scaleUnitValue(false);
model.component('comp1').geom('geom1').run('wp1');
model.component('comp1').geom('geom1').feature.create('ext1', 'Extrude');
model.component('comp1').geom('geom1').feature('ext1').set('workplane', 'wp1');
model.component('comp1').geom('geom1').feature('ext1').selection('input').set({'wp1'});
model.component('comp1').geom('geom1').feature('ext1').setIndex('distance', 20, 0);
model.component('comp1').geom('geom1').feature('ext1').setIndex('distance', 5, 0);
model.component('comp1').geom('geom1').run('ext1');
model.component('comp1').geom('geom1').feature('ext1').setIndex('distance', 15, 0);
model.component('comp1').geom('geom1').run('ext1');
model.component('comp1').geom('geom1').run('fin');
model.component('comp1').geom('geom1').run('fin');

model.component('comp1').physics.create('solid', 'SolidMechanics', 'geom1');
model.component('comp1').physics('solid').create('bndl1', 'BoundaryLoad', 2);
model.component('comp1').physics('solid').feature.remove('bndl1');
model.component('comp1').physics('solid').create('fix1', 'Fixed', 2);
model.component('comp1').physics('solid').feature('fix1').selection.set([1]);
model.component('comp1').physics('solid').create('bndl1', 'BoundaryLoad', 2);
model.component('comp1').physics('solid').feature('bndl1').selection.set([6]);
model.component('comp1').physics('solid').feature('bndl1').set('LoadType', 'TotalForce');
model.component('comp1').physics('solid').feature('bndl1').set('Ftot', [0 0 -100]);

model.component('comp1').material.create('mat1', 'Common');
model.component('comp1').material('mat1').propertyGroup.create('Enu', 'Young''s modulus and Poisson''s ratio');
model.component('comp1').material('mat1').propertyGroup.create('Murnaghan', 'Murnaghan');
model.component('comp1').material('mat1').propertyGroup.create('Lame', ['Lam' native2unicode(hex2dec({'00' 'e9'}), 'unicode') ' parameters']);
model.component('comp1').material('mat1').label('Structural steel');
model.component('comp1').material('mat1').set('family', 'custom');
model.component('comp1').material('mat1').set('customspecular', [0.7843137254901961 0.7843137254901961 0.7843137254901961]);
model.component('comp1').material('mat1').set('customdiffuse', [0.6666666666666666 0.6666666666666666 0.6666666666666666]);
model.component('comp1').material('mat1').set('customambient', [0.6666666666666666 0.6666666666666666 0.6666666666666666]);
model.component('comp1').material('mat1').set('noise', true);
model.component('comp1').material('mat1').set('fresnel', 0.9);
model.component('comp1').material('mat1').set('roughness', 0.3);
model.component('comp1').material('mat1').set('metallic', 0);
model.component('comp1').material('mat1').set('pearl', 0);
model.component('comp1').material('mat1').set('diffusewrap', 0);
model.component('comp1').material('mat1').set('clearcoat', 0);
model.component('comp1').material('mat1').set('reflectance', 0);
model.component('comp1').material('mat1').propertyGroup('def').set('relpermeability', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat1').propertyGroup('def').set('heatcapacity', '475[J/(kg*K)]');
model.component('comp1').material('mat1').propertyGroup('def').set('thermalconductivity', {'44.5[W/(m*K)]' '0' '0' '0' '44.5[W/(m*K)]' '0' '0' '0' '44.5[W/(m*K)]'});
model.component('comp1').material('mat1').propertyGroup('def').set('electricconductivity', {'4.032e6[S/m]' '0' '0' '0' '4.032e6[S/m]' '0' '0' '0' '4.032e6[S/m]'});
model.component('comp1').material('mat1').propertyGroup('def').set('relpermittivity', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat1').propertyGroup('def').set('thermalexpansioncoefficient', {'12.3e-6[1/K]' '0' '0' '0' '12.3e-6[1/K]' '0' '0' '0' '12.3e-6[1/K]'});
model.component('comp1').material('mat1').propertyGroup('def').set('density', '7850[kg/m^3]');
model.component('comp1').material('mat1').propertyGroup('Enu').set('E', '');
model.component('comp1').material('mat1').propertyGroup('Enu').set('nu', '');
model.component('comp1').material('mat1').propertyGroup('Enu').set('E', '');
model.component('comp1').material('mat1').propertyGroup('Enu').set('nu', '');
model.component('comp1').material('mat1').propertyGroup('Enu').set('E', '200e9[Pa]');
model.component('comp1').material('mat1').propertyGroup('Enu').set('nu', '0.30');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').set('l', '');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').set('m', '');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').set('n', '');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').set('l', '');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').set('m', '');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').set('n', '');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').set('l', '-3.0e11[Pa]');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').set('m', '-6.2e11[Pa]');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').set('n', '-7.2e11[Pa]');
model.component('comp1').material('mat1').propertyGroup('Lame').set('lambLame', '');
model.component('comp1').material('mat1').propertyGroup('Lame').set('muLame', '');
model.component('comp1').material('mat1').propertyGroup('Lame').set('lambLame', '');
model.component('comp1').material('mat1').propertyGroup('Lame').set('muLame', '');
model.component('comp1').material('mat1').propertyGroup('Lame').set('lambLame', '1.15e11[Pa]');
model.component('comp1').material('mat1').propertyGroup('Lame').set('muLame', '7.69e10[Pa]');
model.component('comp1').material('mat1').set('family', 'custom');
model.component('comp1').material('mat1').set('lighting', 'cooktorrance');
model.component('comp1').material('mat1').set('fresnel', 0.9);
model.component('comp1').material('mat1').set('roughness', 0.3);
model.component('comp1').material('mat1').set('metallic', 0);
model.component('comp1').material('mat1').set('pearl', 0);
model.component('comp1').material('mat1').set('diffusewrap', 0);
model.component('comp1').material('mat1').set('clearcoat', 0);
model.component('comp1').material('mat1').set('reflectance', 0);
model.component('comp1').material('mat1').set('ambient', 'custom');
model.component('comp1').material('mat1').set('customambient', [0.6666666666666666 0.6666666666666666 0.6666666666666666]);
model.component('comp1').material('mat1').set('diffuse', 'custom');
model.component('comp1').material('mat1').set('customdiffuse', [0.6666666666666666 0.6666666666666666 0.6666666666666666]);
model.component('comp1').material('mat1').set('specular', 'custom');
model.component('comp1').material('mat1').set('customspecular', [0.7843137254901961 0.7843137254901961 0.7843137254901961]);
model.component('comp1').material('mat1').set('noisecolor', 'custom');
model.component('comp1').material('mat1').set('customnoisecolor', [0 0 0]);
model.component('comp1').material('mat1').set('noisescale', 0);
model.component('comp1').material('mat1').set('noise', 'off');
model.component('comp1').material('mat1').set('noisefreq', 1);
model.component('comp1').material('mat1').set('normalnoisebrush', '0');
model.component('comp1').material('mat1').set('normalnoisetype', '0');
model.component('comp1').material('mat1').set('alpha', 1);

model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').automatic(false);
model.component('comp1').mesh('mesh1').automatic(true);
model.component('comp1').mesh('mesh1').autoMeshSize(2);
model.component('comp1').mesh('mesh1').run;

model.study.create('std1');
model.study('std1').create('stat', 'Stationary');
model.study('std1').feature('stat').setSolveFor('/physics/solid', true);

model.sol.create('sol1');
model.sol('sol1').study('std1');

model.study('std1').feature('stat').set('notlistsolnum', 1);
model.study('std1').feature('stat').set('notsolnum', 'auto');
model.study('std1').feature('stat').set('listsolnum', 1);
model.study('std1').feature('stat').set('solnum', 'auto');

model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'stat');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'stat');
model.sol('sol1').create('s1', 'Stationary');
model.sol('sol1').feature('s1').feature('aDef').set('cachepattern', true);
model.sol('sol1').feature('s1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('s1').feature('fc1').set('termonres', 'auto');
model.sol('sol1').feature('s1').feature('fc1').set('reserrfact', 1000);
model.sol('sol1').feature('s1').create('d1', 'Direct');
model.sol('sol1').feature('s1').feature('d1').set('linsolver', 'pardiso');
model.sol('sol1').feature('s1').feature('d1').set('pivotperturb', 1.0E-9);
model.sol('sol1').feature('s1').feature('d1').label('Suggested Direct Solver (solid)');
model.sol('sol1').feature('s1').create('i1', 'Iterative');
model.sol('sol1').feature('s1').feature('i1').set('linsolver', 'gmres');
model.sol('sol1').feature('s1').feature('i1').set('rhob', 400);
model.sol('sol1').feature('s1').feature('i1').set('nlinnormuse', true);
model.sol('sol1').feature('s1').feature('i1').label('Suggested Iterative Solver (solid)');
model.sol('sol1').feature('s1').feature('i1').create('mg1', 'Multigrid');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').set('prefun', 'gmg');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('pr').create('so1', 'SOR');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('pr').feature('so1').set('relax', 0.8);
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('po').create('so1', 'SOR');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('po').feature('so1').set('relax', 0.8);
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('cs').create('d1', 'Direct');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('cs').feature('d1').set('linsolver', 'pardiso');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('cs').feature('d1').set('pivotperturb', 1.0E-9);
model.sol('sol1').feature('s1').feature('fc1').set('linsolver', 'd1');
model.sol('sol1').feature('s1').feature('fc1').set('termonres', 'auto');
model.sol('sol1').feature('s1').feature('fc1').set('reserrfact', 1000);
model.sol('sol1').feature('s1').feature.remove('fcDef');
model.sol('sol1').attach('std1');

model.result.create('pg1', 'PlotGroup3D');
model.result('pg1').set('data', 'dset1');
model.result('pg1').set('frametype', 'spatial');
model.result('pg1').create('vol1', 'Volume');
model.result('pg1').feature('vol1').set('expr', {'solid.mises'});
model.result('pg1').feature('vol1').set('threshold', 'manual');
model.result('pg1').feature('vol1').set('thresholdvalue', 0.2);
model.result('pg1').feature('vol1').set('resolution', 'custom');
model.result('pg1').feature('vol1').set('refine', 2);
model.result('pg1').label('Stress (solid)');
model.result('pg1').feature('vol1').set('colortable', 'Prism');
model.result('pg1').feature('vol1').create('def', 'Deform');
model.result('pg1').feature('vol1').feature('def').set('expr', {'u' 'v' 'w'});
model.result('pg1').feature('vol1').feature('def').set('descr', 'Displacement field');

model.nodeGroup.create('dset1solidlgrp', 'Results');
model.nodeGroup('dset1solidlgrp').label('Applied Loads (solid)');
model.nodeGroup('dset1solidlgrp').set('type', 'plotgroup');
model.nodeGroup('dset1solidlgrp').placeAfter('plotgroup', 'pg1');
model.nodeGroup.move('dset1solidlgrp', 0);

model.result.create('pg2', 'PlotGroup3D');
model.result('pg2').set('data', 'dset1');
model.result('pg2').label('Boundary Loads (solid)');

model.nodeGroup('dset1solidlgrp').add('plotgroup', 'pg2');

model.result('pg2').set('showlegends', true);
model.result('pg2').set('titletype', 'label');
model.result('pg2').set('frametype', 'spatial');
model.result('pg2').set('showlegendsunit', true);
model.result('pg2').create('surf1', 'Surface');
model.result('pg2').feature('surf1').set('expr', {'1'});
model.result('pg2').feature('surf1').label('Gray Surfaces');
model.result('pg2').feature('surf1').set('coloring', 'uniform');
model.result('pg2').feature('surf1').set('color', 'gray');
model.result('pg2').feature('surf1').create('def', 'Deform');
model.result('pg2').feature('surf1').feature('def').set('expr', {'u' 'v' 'w'});
model.result('pg2').feature('surf1').feature('def').set('descr', 'Displacement field');
model.result('pg2').feature('surf1').feature('def').set('scaleactive', true);
model.result('pg2').feature('surf1').feature('def').set('scale', 0);
model.result('pg2').feature('surf1').create('sel1', 'Selection');
model.result('pg2').feature('surf1').feature('sel1').selection.set([1 2 3 4 5 6]);
model.result('pg2').feature('surf1').create('tran1', 'Transparency');
model.result('pg2').feature('surf1').feature('tran1').set('transparency', 0.8);
model.result('pg2').create('arws1', 'ArrowSurface');
model.result('pg2').feature('arws1').set('expr', {'solid.bndl1.F_Ax' 'solid.bndl1.F_Ay' 'solid.bndl1.F_Az'});
model.result('pg2').feature('arws1').set('placement', 'gausspoints');
model.result('pg2').feature('arws1').set('arrowbase', 'tail');
model.result('pg2').feature('arws1').label('Boundary Load 1');
model.result('pg2').feature.move('surf1', 1);
model.result('pg2').feature('arws1').set('inheritplot', 'none');
model.result('pg2').feature('arws1').create('col', 'Color');
model.result('pg2').feature('arws1').feature('col').set('expr', 'solid.bndl1.F_A_Mag');
model.result('pg2').feature('arws1').feature('col').set('coloring', 'gradient');
model.result('pg2').feature('arws1').feature('col').set('topcolor', 'red');
model.result('pg2').feature('arws1').feature('col').set('bottomcolor', 'custom');
model.result('pg2').feature('arws1').feature('col').set('custombottomcolor', [0.5882353186607361 0.5137255191802979 0.5176470875740051]);
model.result('pg2').feature('arws1').set('color', 'red');
model.result('pg2').feature('arws1').create('def', 'Deform');
model.result('pg2').feature('arws1').feature('def').set('expr', {'u' 'v' 'w'});
model.result('pg2').feature('arws1').feature('def').set('descr', 'Displacement field');
model.result('pg2').feature('arws1').feature('def').set('scaleactive', true);
model.result('pg2').feature('arws1').feature('def').set('scale', 0);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').run;

model.component('comp1').geom('geom1').feature('wp1').geom.feature('c1').active(false);
model.component('comp1').geom('geom1').feature('wp1').geom.run('c1');
model.component('comp1').geom('geom1').feature('wp1').geom.run('c1');
model.component('comp1').geom('geom1').feature('wp1').geom.create('r1', 'Rectangle');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r1').set('size', [1 0.2]);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r1').set('pos', [0 0.5]);
model.component('comp1').geom('geom1').feature('wp1').geom.run('r1');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r1').set('base', 'center');
model.component('comp1').geom('geom1').feature('wp1').geom.run('r1');
model.component('comp1').geom('geom1').feature('wp1').geom.run('r1');
model.component('comp1').geom('geom1').feature('wp1').geom.create('r2', 'Rectangle');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r2').set('pos', [0 0.5]);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r2').set('base', 'center');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r2').set('size', [2 0.2]);
model.component('comp1').geom('geom1').feature('wp1').geom.run('r2');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r2').set('pos', [0 -0.5]);
model.component('comp1').geom('geom1').feature('wp1').geom.run('r2');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r2').set('size', [1.4 0.2]);
model.component('comp1').geom('geom1').feature('wp1').geom.run('r2');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r2').set('size', [1.4 0.15]);
model.component('comp1').geom('geom1').feature('wp1').geom.run('r2');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r1').set('size', [1 0.15]);
model.component('comp1').geom('geom1').feature('wp1').geom.run('r1');
model.component('comp1').geom('geom1').feature('wp1').geom.run('r2');
model.component('comp1').geom('geom1').feature('wp1').geom.run('r2');
model.component('comp1').geom('geom1').feature('wp1').geom.create('r3', 'Rectangle');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r3').set('size', [0.15 5]);
model.component('comp1').geom('geom1').feature('wp1').geom.run('r3');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r3').set('base', 'center');
model.component('comp1').geom('geom1').feature('wp1').geom.run('r3');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r3').set('size', [0.15 0.5]);
model.component('comp1').geom('geom1').feature('wp1').geom.run('r3');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r3').set('size', [0.15 0.9]);
model.component('comp1').geom('geom1').feature('wp1').geom.run('r3');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r3').set('size', [0.15 0.8]);
model.component('comp1').geom('geom1').feature('wp1').geom.run('r3');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r3').set('size', [0.15 0.85]);
model.component('comp1').geom('geom1').feature('wp1').geom.run('r3');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r3').set('size', [0.15 0.9]);
model.component('comp1').geom('geom1').feature('wp1').geom.run('r3');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r2').set('size', [0.8 0.15]);
model.component('comp1').geom('geom1').feature('wp1').geom.run('r2');
model.component('comp1').geom('geom1').feature('wp1').geom.run('r3');
model.component('comp1').geom('geom1').feature('wp1').geom.feature.remove('c1');
model.component('comp1').geom('geom1').run('wp1');
model.component('comp1').geom('geom1').runPre('fin');
model.component('comp1').geom('geom1').run('fin');

model.component('comp1').physics('solid').feature('fix1').selection.set([1 5 9 12 15]);
model.component('comp1').physics('solid').feature.remove('bndl1');
model.component('comp1').physics('solid').create('bndl1', 'BoundaryLoad', 2);
model.component('comp1').physics('solid').feature.remove('bndl1');
model.component('comp1').physics('solid').create('bndl1', 'BoundaryLoad', 2);
model.component('comp1').physics('solid').feature.remove('bndl1');
model.component('comp1').physics('solid').create('el1', 'EdgeLoad', 1);
model.component('comp1').physics('solid').feature('el1').selection.set([37]);
model.component('comp1').physics('solid').feature('el1').set('FperLength', [0 0 100]);
model.component('comp1').physics('solid').feature('el1').set('LoadType', 'TotalForce');
model.component('comp1').physics('solid').feature('el1').set('Ftot', [0 0 100]);
model.component('comp1').physics('solid').create('el2', 'EdgeLoad', 1);
model.component('comp1').physics('solid').feature('el2').selection.set([55]);
model.component('comp1').physics('solid').feature('el2').set('FperLength', [0 0 -100]);

model.sol('sol1').study('std1');

model.study('std1').feature('stat').set('notlistsolnum', 1);
model.study('std1').feature('stat').set('notsolnum', 'auto');
model.study('std1').feature('stat').set('listsolnum', 1);
model.study('std1').feature('stat').set('solnum', 'auto');

model.sol('sol1').feature.remove('s1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'stat');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'stat');
model.sol('sol1').create('s1', 'Stationary');
model.sol('sol1').feature('s1').feature('aDef').set('cachepattern', true);
model.sol('sol1').feature('s1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('s1').feature('fc1').set('termonres', 'auto');
model.sol('sol1').feature('s1').feature('fc1').set('reserrfact', 1000);
model.sol('sol1').feature('s1').create('d1', 'Direct');
model.sol('sol1').feature('s1').feature('d1').set('linsolver', 'pardiso');
model.sol('sol1').feature('s1').feature('d1').set('pivotperturb', 1.0E-9);
model.sol('sol1').feature('s1').feature('d1').label('Suggested Direct Solver (solid)');
model.sol('sol1').feature('s1').create('i1', 'Iterative');
model.sol('sol1').feature('s1').feature('i1').set('linsolver', 'gmres');
model.sol('sol1').feature('s1').feature('i1').set('rhob', 400);
model.sol('sol1').feature('s1').feature('i1').set('nlinnormuse', true);
model.sol('sol1').feature('s1').feature('i1').label('Suggested Iterative Solver (solid)');
model.sol('sol1').feature('s1').feature('i1').create('mg1', 'Multigrid');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').set('prefun', 'gmg');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('pr').create('so1', 'SOR');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('pr').feature('so1').set('relax', 0.8);
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('po').create('so1', 'SOR');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('po').feature('so1').set('relax', 0.8);
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('cs').create('d1', 'Direct');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('cs').feature('d1').set('linsolver', 'pardiso');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('cs').feature('d1').set('pivotperturb', 1.0E-9);
model.sol('sol1').feature('s1').feature('fc1').set('linsolver', 'd1');
model.sol('sol1').feature('s1').feature('fc1').set('termonres', 'auto');
model.sol('sol1').feature('s1').feature('fc1').set('reserrfact', 1000);
model.sol('sol1').feature('s1').feature.remove('fcDef');
model.sol('sol1').attach('std1');

model.component('comp1').mesh('mesh1').autoMeshSize(3);
model.component('comp1').mesh('mesh1').autoMeshSize(4);
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').study('std1');

model.study('std1').feature('stat').set('notlistsolnum', 1);
model.study('std1').feature('stat').set('notsolnum', 'auto');
model.study('std1').feature('stat').set('listsolnum', 1);
model.study('std1').feature('stat').set('solnum', 'auto');

model.sol('sol1').feature.remove('s1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'stat');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'stat');
model.sol('sol1').create('s1', 'Stationary');
model.sol('sol1').feature('s1').feature('aDef').set('cachepattern', true);
model.sol('sol1').feature('s1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('s1').feature('fc1').set('termonres', 'auto');
model.sol('sol1').feature('s1').feature('fc1').set('reserrfact', 1000);
model.sol('sol1').feature('s1').create('d1', 'Direct');
model.sol('sol1').feature('s1').feature('d1').set('linsolver', 'pardiso');
model.sol('sol1').feature('s1').feature('d1').set('pivotperturb', 1.0E-9);
model.sol('sol1').feature('s1').feature('d1').label('Suggested Direct Solver (solid)');
model.sol('sol1').feature('s1').create('i1', 'Iterative');
model.sol('sol1').feature('s1').feature('i1').set('linsolver', 'gmres');
model.sol('sol1').feature('s1').feature('i1').set('rhob', 400);
model.sol('sol1').feature('s1').feature('i1').set('nlinnormuse', true);
model.sol('sol1').feature('s1').feature('i1').label('Suggested Iterative Solver (solid)');
model.sol('sol1').feature('s1').feature('i1').create('mg1', 'Multigrid');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').set('prefun', 'gmg');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('pr').create('so1', 'SOR');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('pr').feature('so1').set('relax', 0.8);
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('po').create('so1', 'SOR');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('po').feature('so1').set('relax', 0.8);
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('cs').create('d1', 'Direct');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('cs').feature('d1').set('linsolver', 'pardiso');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('cs').feature('d1').set('pivotperturb', 1.0E-9);
model.sol('sol1').feature('s1').feature('fc1').set('linsolver', 'd1');
model.sol('sol1').feature('s1').feature('fc1').set('termonres', 'auto');
model.sol('sol1').feature('s1').feature('fc1').set('reserrfact', 1000);
model.sol('sol1').feature('s1').feature.remove('fcDef');
model.sol('sol1').attach('std1');
model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('vol1').set('colortable', 'GrayPrint');
model.result('pg1').run;

out = model;
