#include "everything.h"

int main(int argc, char* argv[]) {
    float phase = 0;
    float nyquist = SAMPLE_RATE / 2.0;          // Nyquist frequency
  
    for (float note = 127; note > 0; note -= 0.001) {
        float frequency = mtof(note);
        float sawtooth = 0.0; 
        int N = (int)(nyquist / frequency); 

        // Sum the harmonics
        for (int n = 1; n <= N; ++n) {
            sawtooth += (1.0 / n) * sin(n * phase);
        }

        // Normalize by 1/2
        sawtooth *= 0.5;

        // Output the sawtooth wave scaled by 0.707
        mono(sawtooth * 0.707);

        phase += 2 * pi * frequency / SAMPLE_RATE;
        if (phase > 2 * pi)  //
        phase -= 2 * pi;
    }

    return 0; 

}
