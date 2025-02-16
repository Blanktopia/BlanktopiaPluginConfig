local instrument(name, model, customModelData) = {
  name: '<white>' + name,
  material: 'WOODEN_HOE',
  'custom-model-data': customModelData,
  model: model,
  block: {
    type: "item",
  },
};

{
    'piano.json': instrument('Piano', 'blanktopia:instruments/piano', 100),
    'bassdrum.json': instrument('Bass Drum', 'blanktopia:instruments/bassdrum', 101),
    'snare.json': instrument('Snare', 'blanktopia:instruments/snare', 102),
    'sticks.json': instrument('Sticks', 'blanktopia:instruments/sticks', 103),
    'bass.json': instrument('Bass', 'blanktopia:instruments/bass', 104),
    'flute.json': instrument('Flute', 'blanktopia:instruments/flute', 105),
    'bell.json': instrument('Bell', 'blanktopia:instruments/bell', 106),
    'guitar.json': instrument('Guitar', 'blanktopia:instruments/guitar', 107),
    'chimes.json': instrument('Chimes', 'blanktopia:instruments/chimes', 108),
    'xylophone.json': instrument('Xylophone', 'blanktopia:instruments/xylophone', 109),
    'vibraphone.json': instrument('Vibraphone', 'blanktopia:instruments/vibraphone', 110),
    'cowbell.json': instrument('Cow Bell', 'blanktopia:instruments/cowbell', 111),
    'didgeridoo.json': instrument('Didgeridoo', 'blanktopia:instruments/dg', 112),
    'bits.json': instrument('Bits', 'blanktopia:instruments/bits', 113),
    'banjo.json': instrument('Banjo', 'blanktopia:instruments/banjo', 114),
    'pling.json': instrument('Piano', 'blanktopia:instruments/pling', 115),
}
