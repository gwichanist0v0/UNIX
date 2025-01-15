#include "everything.h"

int main(int argc, char* argv[]) {
    float phase = 0;
    float frequency = 440.0; // Set frequency to 440 Hz (A4)
    int duration = 2;
    int total_samples = duration * SAMPLE_RATE; // Total number of samples for 2 seconds
    float nyquist = SAMPLE_RATE / 2.0;          // Nyquist frequency
    int N = (int)(nyquist / frequency);         // Number of harmonics limited by Nyquist

    for (int sample = 0; sample < total_samples; ++sample) {
        float sample_time = (float)sample / SAMPLE_RATE; // time factor
        float sawtooth = 0.0;

        // Sum the harmonics
        for (int n = 1; n <= N; ++n) {
            sawtooth += (1.0 / n) * sin(n * 2.0 * pi * frequency * sample_time);
        }

        // Normalize by 1/2
        sawtooth *= 0.5;

        // Output the sawtooth wave scaled by 0.707
        mono(sawtooth * 0.707);
    }

    //return 0; // End the program after 2 seconds
}


