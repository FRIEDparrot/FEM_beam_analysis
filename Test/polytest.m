function out = model
%
% polytest.m
%
% Model exported on Mar 3 2023, 02:07 by COMSOL 6.0.0.318.

import com.comsol.model.*
import com.comsol.model.util.*

model = ModelUtil.create('Model');

model.modelPath('C:\Users\Parrot\Desktop\Git\Computer_intern_Project\Test');

model.component.create('comp1', true);

model.component('comp1').geom.create('geom1', 3);

model.component('comp1').mesh.create('mesh1');

model.component('comp1').physics.create('solid', 'SolidMechanics', 'geom1');

model.study.create('std1');
model.study('std1').create('stat', 'Stationary');
model.study('std1').feature('stat').setSolveFor('/physics/solid', true);

model.component('comp1').geom('geom1').create('wp1', 'WorkPlane');
model.component('comp1').geom('geom1').feature('wp1').set('unite', true);
model.component('comp1').geom('geom1').run('wp1');
model.component('comp1').geom('geom1').feature('wp1').geom.create('c1', 'Circle');
model.component('comp1').geom('geom1').feature('wp1').geom.run('c1');
model.component('comp1').geom('geom1').lengthUnit('mm');
model.component('comp1').geom('geom1').feature('wp1').geom.run('c1');
model.component('comp1').geom('geom1').feature('wp1').geom.create('e1', 'Ellipse');
model.component('comp1').geom('geom1').feature('wp1').geom.run('e1');
model.component('comp1').geom('geom1').feature('wp1').geom.create('r1', 'Rectangle');
model.component('comp1').geom('geom1').feature('wp1').geom.run('e1');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c1').active(false);
model.component('comp1').geom('geom1').feature('wp1').geom.run('c1');
model.component('comp1').geom('geom1').feature('wp1').geom.run('e1');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r1').set('base', 'center');
model.component('comp1').geom('geom1').feature('wp1').geom.run('r1');
model.component('comp1').geom('geom1').feature('wp1').geom.run('r1');
model.component('comp1').geom('geom1').feature('wp1').geom.create('pol1', 'Polygon');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol1').set('source', 'table');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol1').set('type', 'closed');
model.component('comp1').geom('geom1').feature('wp1').geom.run('r1');
model.component('comp1').geom('geom1').feature('wp1').geom.feature.remove('pol1');
model.component('comp1').geom('geom1').feature('wp1').geom.run('r1');
model.component('comp1').geom('geom1').feature('wp1').geom.create('pol1', 'Polygon');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol1').set('source', 'table');

model.component('comp1').view('view2').hideObjects.create('hide1');
model.component('comp1').view('view2').hideObjects('hide1').init;
model.component('comp1').view('view2').hideObjects('hide1').add({'e1'});

model.component('comp1').geom('geom1').feature('wp1').geom.run('r1');
model.component('comp1').geom('geom1').feature('wp1').geom.feature.remove('c1');
model.component('comp1').geom('geom1').feature('wp1').geom.feature.remove('e1');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol1').setIndex('table', 0, 0, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol1').setIndex('table', 1, 0, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol1').setIndex('table', -0.5, 1, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol1').setIndex('table', -0.5, 1, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol1').setIndex('table', 0.5, 2, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol1').setIndex('table', -0.5, 2, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.run('pol1');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r1').active(false);
model.component('comp1').geom('geom1').feature('wp1').geom.run('r1');
model.component('comp1').geom('geom1').feature('wp1').geom.run('pol1');
model.component('comp1').geom('geom1').feature('wp1').geom.run('pol1');
model.component('comp1').geom('geom1').feature('wp1').geom.create('pol2', 'Polygon');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol2').set('source', 'table');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol2').setIndex('table', 1, 0, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol2').setIndex('table', 1, 0, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol2').setIndex('table', 2, 1, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol2').setIndex('table', 1, 1, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol2').setIndex('table', 0, 2, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol2').setIndex('table', 0, 2, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.run('pol2');

model.label('Untitled.mph');

model.component('comp1').geom('geom1').feature('wp1').geom.run('pol2');
model.component('comp1').geom('geom1').feature('wp1').geom.create('pol3', 'Polygon');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol3').set('source', 'table');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol3').setIndex('table', 0, 0, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol3').setIndex('table', 0, 0, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol3').setIndex('table', 0, 1, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol3').setIndex('table', 0, 1, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol3').setIndex('table', 0, 2, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol3').setIndex('table', 0, 2, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.run('pol2');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol3').setIndex('table', 2, 2, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.run('pol3');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol3').setIndex('table', 2, 1, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol3').setIndex('table', 1, 2, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol3').setIndex('table', 1, 2, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol3').setIndex('table', 1, 3, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol3').setIndex('table', -1, 3, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.run('pol3');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol3').setIndex('table', -1, 3, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol3').setIndex('table', 1, 3, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.run('pol3');
model.component('comp1').geom('geom1').feature('wp1').geom.feature.remove('pol2');
model.component('comp1').geom('geom1').feature('wp1').geom.feature.remove('r1');
model.component('comp1').geom('geom1').feature('wp1').geom.feature.remove('pol1');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol3').setIndex('table', 1, 4, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol3').setIndex('table', -1, 4, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.run('pol3');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol3').setIndex('table', 0, 4, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.run('pol3');

model.label('Untitled.mph');

model.component('comp1').geom('geom1').feature('wp1').geom.feature.remove('pol3');
model.component('comp1').geom('geom1').feature('wp1').geom.create('r1', 'Rectangle');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r1').set('size', [2 1]);
model.component('comp1').geom('geom1').feature('wp1').geom.run('r1');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r1').set('size', [2 3]);
model.component('comp1').geom('geom1').feature('wp1').geom.run('r1');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r1').set('pos', [2 0]);
model.component('comp1').geom('geom1').feature('wp1').geom.run('r1');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('r1').set('pos', [2 1]);
model.component('comp1').geom('geom1').feature('wp1').geom.run('r1');

model.label('Untitled.mph');

model.component('comp1').geom('geom1').feature('wp1').geom.feature.remove('r1');
model.component('comp1').geom('geom1').feature('wp1').geom.create('c1', 'Circle');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c1').set('r', 2);
model.component('comp1').geom('geom1').feature('wp1').geom.run('c1');
model.component('comp1').geom('geom1').feature('wp1').geom.run('c1');
model.component('comp1').geom('geom1').feature('wp1').geom.create('e1', 'Ellipse');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c1').set('pos', [0.1 0]);
model.component('comp1').geom('geom1').feature('wp1').geom.run('c1');
model.component('comp1').geom('geom1').feature('wp1').geom.run('e1');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('e1').set('semiaxes', [2.5 1.5]);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('e1').set('angle', 180);
model.component('comp1').geom('geom1').feature('wp1').geom.run('e1');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('e1').set('pos', [0.2 0]);
model.component('comp1').geom('geom1').feature('wp1').geom.run('e1');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('e1').set('pos', [0.2 0.3]);
model.component('comp1').geom('geom1').feature('wp1').geom.run('e1');
model.component('comp1').geom('geom1').feature('wp1').geom.run('e1');
model.component('comp1').geom('geom1').feature('wp1').geom.create('pol1', 'Polygon');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol1').set('source', 'table');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol1').setIndex('table', 0.1, 0, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol1').setIndex('table', 1, 0, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol1').setIndex('table', 0, 0, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol1').setIndex('table', -1, 1, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol1').setIndex('table', 0, 1, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol1').setIndex('table', 1, 2, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol1').setIndex('table', 0, 2, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.run('pol1');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('e1').set('rot', 20);
model.component('comp1').geom('geom1').feature('wp1').geom.run('e1');

model.label('Untitled.mph');

model.component('comp1').geom('geom1').feature('wp1').geom.run('e1');
model.component('comp1').geom('geom1').feature('wp1').geom.create('pol2', 'Polygon');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol2').set('source', 'table');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol2').setIndex('table', 1, 0, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol2').setIndex('table', 1, 0, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol2').setIndex('table', -1, 1, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol2').setIndex('table', 0, 1, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol2').setIndex('table', 1, 2, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol2').setIndex('table', 0, 2, 1);
model.component('comp1').geom('geom1').feature('wp1').geom.run('pol2');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol2').setIndex('table', 2, 2, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.run('pol2');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('pol2').setIndex('table', -2, 1, 0);
model.component('comp1').geom('geom1').feature('wp1').geom.run('pol2');

out = model;
