function out = model
%
% SelectionTest.m
%
% Model exported on Mar 4 2023, 07:48 by COMSOL 6.0.0.318.

import com.comsol.model.*
import com.comsol.model.util.*

model = ModelUtil.create('Model');

model.modelPath('.');

model.component.create('comp1', true);

model.component('comp1').geom.create('geom1', 3);
model.component('comp1').geom('geom1').lengthUnit('mm');
model.component('comp1').geom('geom1').feature.create('wp1', 'WorkPlane');
model.component('comp1').geom('geom1').feature('wp1').set('quickplane', 'yz');

model.component('comp1').selection.create('sel1');
model.component('comp1').selection('sel1').label('select domain');
model.component('comp1').selection('sel1').geom(1);
model.component('comp1').selection.create('sel2');
model.component('comp1').selection('sel2').label('select boundary');
model.component('comp1').selection('sel2').geom(2);

model.component('comp1').mesh.create('mesh1');

model.component('comp1').physics.create('solid', 'SolidMechanics', 'geom1');

model.study.create('std1');
model.study('std1').create('stat', 'Stationary');
model.study('std1').feature('stat').setSolveFor('/physics/solid', true);

model.component('comp1').geom('geom1').feature('wp1').geom.create('r1', 'Rectangle');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r1').set('base', 'center');
model.component('comp1').geom('geom1').feature('wp1').geom.run('r1');
model.component('comp1').geom('geom1').feature('wp1').geom.create('c1', 'Circle');
model.component('comp1').geom('geom1').feature('wp1').geom.run('c1');
model.component('comp1').geom('geom1').feature.create('ext1', 'Extrude');
model.component('comp1').geom('geom1').feature('ext1').selection('input').set({'wp1'});
model.component('comp1').geom('geom1').feature('ext1').set('distance', '1');
model.component('comp1').geom('geom1').run('fin');
model.component('comp1').geom('geom1').run('fin');

model.component('comp1').physics('solid').create('fix1', 'Fixed', 2);

model.component('comp1').selection('sel2').set([]);

model.component('comp1').geom('geom1').run('fin');
model.component('comp1').geom('geom1').run;
model.component('comp1').geom('geom1').run('fin');

model.component('comp1').physics('solid').create('fix2', 'Fixed', 2);

model.component('comp1').selection('sel2').set([]);

model.component('comp1').geom('geom1').run('fin');
model.component('comp1').geom('geom1').run;
model.component('comp1').geom('geom1').run('fin');

model.component('comp1').selection('sel2').set([]);

model.component('comp1').geom('geom1').run('fin');
model.component('comp1').geom('geom1').run;
model.component('comp1').geom('geom1').run('fin');

model.component('comp1').physics('solid').create('bl1', 'BodyLoad', 3);

model.component('comp1').selection('sel1').set([]);

model.component('comp1').geom('geom1').run('fin');
model.component('comp1').geom('geom1').run;
model.component('comp1').geom('geom1').run('fin');

model.component('comp1').selection('sel2').set([]);

model.component('comp1').geom('geom1').run('fin');
model.component('comp1').geom('geom1').run;
model.component('comp1').geom('geom1').run('fin');

model.label('untitled.mph');

model.component('comp1').physics('solid').feature('bl1').selection.set([]);
model.component('comp1').physics('solid').feature('fix1').selection.set([1 2 3 4 8 9 11 12]);

model.component('comp1').selection.create('sel3', 'Explicit');
model.component('comp1').selection('sel3').geom(2);
model.component('comp1').selection('sel3').set([12]);
model.component('comp1').selection('sel3').geom(3);
model.component('comp1').selection('sel3').set([1]);

model.component('comp1').material.create('mat1', 'Common');
model.component('comp1').material('mat1').propertyGroup.create('Enu', 'Young''s modulus and Poisson''s ratio');
model.component('comp1').material('mat1').label('Concrete');
model.component('comp1').material('mat1').set('family', 'concrete');
model.component('comp1').material('mat1').propertyGroup('def').set('thermalexpansioncoefficient', {'10e-6[1/K]' '0' '0' '0' '10e-6[1/K]' '0' '0' '0' '10e-6[1/K]'});
model.component('comp1').material('mat1').propertyGroup('def').set('density', '2300[kg/m^3]');
model.component('comp1').material('mat1').propertyGroup('def').set('thermalconductivity', {'1.8[W/(m*K)]' '0' '0' '0' '1.8[W/(m*K)]' '0' '0' '0' '1.8[W/(m*K)]'});
model.component('comp1').material('mat1').propertyGroup('def').set('heatcapacity', '880[J/(kg*K)]');
model.component('comp1').material('mat1').propertyGroup('Enu').set('E', '');
model.component('comp1').material('mat1').propertyGroup('Enu').set('nu', '');
model.component('comp1').material('mat1').propertyGroup('Enu').set('E', '');
model.component('comp1').material('mat1').propertyGroup('Enu').set('nu', '');
model.component('comp1').material('mat1').propertyGroup('Enu').set('E', '25e9[Pa]');
model.component('comp1').material('mat1').propertyGroup('Enu').set('nu', '0.20');
model.component('comp1').material('mat1').set('family', 'concrete');
model.component('comp1').material.create('mat2', 'Common');
model.component('comp1').material('mat2').propertyGroup.create('Enu', 'Young''s modulus and Poisson''s ratio');
model.component('comp1').material('mat2').propertyGroup.create('linzRes', 'Linearized resistivity');
model.component('comp1').material('mat2').label('Copper');
model.component('comp1').material('mat2').set('family', 'copper');
model.component('comp1').material('mat2').propertyGroup('def').set('relpermeability', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat2').propertyGroup('def').set('electricconductivity', {'5.998e7[S/m]' '0' '0' '0' '5.998e7[S/m]' '0' '0' '0' '5.998e7[S/m]'});
model.component('comp1').material('mat2').propertyGroup('def').set('thermalexpansioncoefficient', {'17e-6[1/K]' '0' '0' '0' '17e-6[1/K]' '0' '0' '0' '17e-6[1/K]'});
model.component('comp1').material('mat2').propertyGroup('def').set('heatcapacity', '385[J/(kg*K)]');
model.component('comp1').material('mat2').propertyGroup('def').set('relpermittivity', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat2').propertyGroup('def').set('density', '8960[kg/m^3]');
model.component('comp1').material('mat2').propertyGroup('def').set('thermalconductivity', {'400[W/(m*K)]' '0' '0' '0' '400[W/(m*K)]' '0' '0' '0' '400[W/(m*K)]'});
model.component('comp1').material('mat2').propertyGroup('Enu').set('E', '');
model.component('comp1').material('mat2').propertyGroup('Enu').set('nu', '');
model.component('comp1').material('mat2').propertyGroup('Enu').set('E', '');
model.component('comp1').material('mat2').propertyGroup('Enu').set('nu', '');
model.component('comp1').material('mat2').propertyGroup('Enu').set('E', '110e9[Pa]');
model.component('comp1').material('mat2').propertyGroup('Enu').set('nu', '0.35');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('rho0', '');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('alpha', '');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('Tref', '');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('rho0', '');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('alpha', '');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('Tref', '');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('rho0', '1.72e-8[ohm*m]');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('alpha', '0.0039[1/K]');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('Tref', '298[K]');
model.component('comp1').material('mat2').propertyGroup('linzRes').addInput('temperature');
model.component('comp1').material('mat2').set('family', 'copper');
model.component('comp1').material('mat2').selection.set([2]);
model.component('comp1').material.remove('mat2');
model.component('comp1').material('mat1').active(false);
model.component('comp1').material.create('mat2', 'Common');
model.component('comp1').material('mat2').propertyGroup.create('Enu', 'Young''s modulus and Poisson''s ratio');
model.component('comp1').material('mat2').propertyGroup.create('linzRes', 'Linearized resistivity');
model.component('comp1').material('mat2').label('Copper');
model.component('comp1').material('mat2').set('family', 'copper');
model.component('comp1').material('mat2').propertyGroup('def').set('relpermeability', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat2').propertyGroup('def').set('electricconductivity', {'5.998e7[S/m]' '0' '0' '0' '5.998e7[S/m]' '0' '0' '0' '5.998e7[S/m]'});
model.component('comp1').material('mat2').propertyGroup('def').set('thermalexpansioncoefficient', {'17e-6[1/K]' '0' '0' '0' '17e-6[1/K]' '0' '0' '0' '17e-6[1/K]'});
model.component('comp1').material('mat2').propertyGroup('def').set('heatcapacity', '385[J/(kg*K)]');
model.component('comp1').material('mat2').propertyGroup('def').set('relpermittivity', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat2').propertyGroup('def').set('density', '8960[kg/m^3]');
model.component('comp1').material('mat2').propertyGroup('def').set('thermalconductivity', {'400[W/(m*K)]' '0' '0' '0' '400[W/(m*K)]' '0' '0' '0' '400[W/(m*K)]'});
model.component('comp1').material('mat2').propertyGroup('Enu').set('E', '');
model.component('comp1').material('mat2').propertyGroup('Enu').set('nu', '');
model.component('comp1').material('mat2').propertyGroup('Enu').set('E', '');
model.component('comp1').material('mat2').propertyGroup('Enu').set('nu', '');
model.component('comp1').material('mat2').propertyGroup('Enu').set('E', '110e9[Pa]');
model.component('comp1').material('mat2').propertyGroup('Enu').set('nu', '0.35');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('rho0', '');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('alpha', '');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('Tref', '');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('rho0', '');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('alpha', '');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('Tref', '');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('rho0', '1.72e-8[ohm*m]');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('alpha', '0.0039[1/K]');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('Tref', '298[K]');
model.component('comp1').material('mat2').propertyGroup('linzRes').addInput('temperature');
model.component('comp1').material('mat2').set('family', 'copper');
model.component('comp1').material.remove('mat1');
model.component('comp1').material.remove('mat2');
model.component('comp1').material.create('mat1', 'Common');
model.component('comp1').material('mat1').propertyGroup.create('Enu', 'Young''s modulus and Poisson''s ratio');
model.component('comp1').material('mat1').propertyGroup.create('linzRes', 'Linearized resistivity');
model.component('comp1').material('mat1').label('Copper');
model.component('comp1').material('mat1').set('family', 'copper');
model.component('comp1').material('mat1').propertyGroup('def').set('relpermeability', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat1').propertyGroup('def').set('electricconductivity', {'5.998e7[S/m]' '0' '0' '0' '5.998e7[S/m]' '0' '0' '0' '5.998e7[S/m]'});
model.component('comp1').material('mat1').propertyGroup('def').set('thermalexpansioncoefficient', {'17e-6[1/K]' '0' '0' '0' '17e-6[1/K]' '0' '0' '0' '17e-6[1/K]'});
model.component('comp1').material('mat1').propertyGroup('def').set('heatcapacity', '385[J/(kg*K)]');
model.component('comp1').material('mat1').propertyGroup('def').set('relpermittivity', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat1').propertyGroup('def').set('density', '8960[kg/m^3]');
model.component('comp1').material('mat1').propertyGroup('def').set('thermalconductivity', {'400[W/(m*K)]' '0' '0' '0' '400[W/(m*K)]' '0' '0' '0' '400[W/(m*K)]'});
model.component('comp1').material('mat1').propertyGroup('Enu').set('E', '');
model.component('comp1').material('mat1').propertyGroup('Enu').set('nu', '');
model.component('comp1').material('mat1').propertyGroup('Enu').set('E', '');
model.component('comp1').material('mat1').propertyGroup('Enu').set('nu', '');
model.component('comp1').material('mat1').propertyGroup('Enu').set('E', '110e9[Pa]');
model.component('comp1').material('mat1').propertyGroup('Enu').set('nu', '0.35');
model.component('comp1').material('mat1').propertyGroup('linzRes').set('rho0', '');
model.component('comp1').material('mat1').propertyGroup('linzRes').set('alpha', '');
model.component('comp1').material('mat1').propertyGroup('linzRes').set('Tref', '');
model.component('comp1').material('mat1').propertyGroup('linzRes').set('rho0', '');
model.component('comp1').material('mat1').propertyGroup('linzRes').set('alpha', '');
model.component('comp1').material('mat1').propertyGroup('linzRes').set('Tref', '');
model.component('comp1').material('mat1').propertyGroup('linzRes').set('rho0', '1.72e-8[ohm*m]');
model.component('comp1').material('mat1').propertyGroup('linzRes').set('alpha', '0.0039[1/K]');
model.component('comp1').material('mat1').propertyGroup('linzRes').set('Tref', '298[K]');
model.component('comp1').material('mat1').propertyGroup('linzRes').addInput('temperature');
model.component('comp1').material('mat1').set('family', 'copper');
model.component('comp1').material.remove('mat1');
model.component('comp1').material.create('mat1', 'Common');
model.component('comp1').material('mat1').propertyGroup.create('Enu', 'Young''s modulus and Poisson''s ratio');
model.component('comp1').material('mat1').label('Iron');
model.component('comp1').material('mat1').set('family', 'iron');
model.component('comp1').material('mat1').propertyGroup('def').set('relpermeability', {'4000' '0' '0' '0' '4000' '0' '0' '0' '4000'});
model.component('comp1').material('mat1').propertyGroup('def').set('electricconductivity', {'1.12e7[S/m]' '0' '0' '0' '1.12e7[S/m]' '0' '0' '0' '1.12e7[S/m]'});
model.component('comp1').material('mat1').propertyGroup('def').set('thermalexpansioncoefficient', {'12.2e-6[1/K]' '0' '0' '0' '12.2e-6[1/K]' '0' '0' '0' '12.2e-6[1/K]'});
model.component('comp1').material('mat1').propertyGroup('def').set('heatcapacity', '440[J/(kg*K)]');
model.component('comp1').material('mat1').propertyGroup('def').set('relpermittivity', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat1').propertyGroup('def').set('density', '7870[kg/m^3]');
model.component('comp1').material('mat1').propertyGroup('def').set('thermalconductivity', {'76.2[W/(m*K)]' '0' '0' '0' '76.2[W/(m*K)]' '0' '0' '0' '76.2[W/(m*K)]'});
model.component('comp1').material('mat1').propertyGroup('Enu').set('E', '');
model.component('comp1').material('mat1').propertyGroup('Enu').set('nu', '');
model.component('comp1').material('mat1').propertyGroup('Enu').set('E', '');
model.component('comp1').material('mat1').propertyGroup('Enu').set('nu', '');
model.component('comp1').material('mat1').propertyGroup('Enu').set('E', '200e9[Pa]');
model.component('comp1').material('mat1').propertyGroup('Enu').set('nu', '0.29');
model.component('comp1').material('mat1').set('family', 'iron');

out = model;
