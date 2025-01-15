#include "everything.h"

int main(int argc, char* argv[]) {
    float phase = 0;
    float nyquist = SAMPLE_RATE / 2.0;          // Nyquist frequency
  
    for (float note = 127; note > 0; note -= 0.001) {
        float frequency = mtof(note);
        float triangle = 0.0; 
        int N = (int)(nyquist / frequency); 

        // Sum the harmonics
        for (int n = 1; n <= N; ++n) {
            triangle += (pow(-1, (n-1)/2))/(pow(n, 2)) * sin(n * phase);
        }

        // Normalize by 8/pi^2
        triangle *= 0.5;

        // Output wave scaled by 0.707
        mono(triangle * 0.707);

        phase += 2 * pi * frequency / SAMPLE_RATE;
        if (phase > 2 * pi)  //
        phase -= 2 * pi;
    }

    return 0; 

}
