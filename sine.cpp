#include "everything.h"

int main(int argc, char* argv[]) {
  float phase = 0;
  float duration = 2;
  int totalSample = duration * SAMPLE_RATE; 
  for (int sample = 0; sample < totalSample; ++sample) {
    float frequency = mtof(60);
    float v = sin(phase);
    mono(v * 0.707);
    phase += 2 * pi * frequency / SAMPLE_RATE; 
    if (phase > 2 * pi)  //
       phase -= 2 * pi;
  }
 
}
