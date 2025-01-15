#include "everything.h"

int main(int argc, char* argv[]) {
    float phase = 0;
    float nyquist = SAMPLE_RATE / 2.0;          // Nyquist frequency
  
    for (float note = 127; note > 0; note -= 0.001) {
        float frequency = mtof(note);
        float impulse = 0.0; 
        int N = (int)(nyquist / frequency); 

        // Sum the harmonics
        for (int n = 1; n <= N; ++n) {
            impulse += sin(n * phase);
        }

        // Normalize by 1/N
        impulse *= (1.0 / N);

        // Output wave scaled by 0.707
        mono(impulse * 0.707);

        phase += 2 * pi * frequency / SAMPLE_RATE;
        if (phase > 2 * pi)  //
        phase -= 2 * pi;
    }

}
