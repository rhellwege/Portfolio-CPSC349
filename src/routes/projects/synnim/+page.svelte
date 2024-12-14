<script>
    import BrowserDemo from "$lib/components/browserdemo/BrowserDemo.svelte";
</script>

<svelte:head>
    <title>Ryan Hellwege Portfolio | Synnim</title>
</svelte:head>

<div id="main" class="mx-auto text-lg py-10 min-h-screen">
    <h1 id="title" class="font-bold text-5xl text-center pt-5">Synnim</h1>
    <div class="divider"></div>
    <div class="flex flex-col">
        <BrowserDemo
            title="Synnim Browser Demo"
            link="/project-media/synnim-wasm/index.html"
            width={800}
            height={450}
        >
            <section>
                <h2 class="text-center text-xl font-bold mb-2">Controls</h2>
                <div class="p-3">
                    <div class="my-1 flex w-full justify-center gap-1">
                        <kbd class="kbd">q</kbd>
                        <kbd class="kbd">w</kbd>
                        <kbd class="kbd">e</kbd>
                        <kbd class="kbd">r</kbd>
                        <kbd class="kbd">t</kbd>
                        <kbd class="kbd">y</kbd>
                        <kbd class="kbd">u</kbd>
                        <kbd class="kbd">i</kbd>
                        <kbd class="kbd">o</kbd>
                        <kbd class="kbd">p</kbd>
                    </div>
                    <div class="my-1 flex w-full justify-center gap-1">
                        <kbd class="kbd">a</kbd>
                        <kbd class="kbd text-primary border-primary">s</kbd>
                        <kbd class="kbd">d</kbd>
                        <kbd class="kbd text-primary border-primary">f</kbd>
                        <kbd class="kbd text-primary border-primary">g</kbd>
                        <kbd class="kbd">h</kbd>
                        <kbd class="kbd text-primary border-primary">j</kbd>
                        <kbd class="kbd text-primary border-primary">k</kbd>
                        <kbd class="kbd text-primary border-primary">l</kbd>
                    </div>
                    <div class="my-1 flex w-full justify-center gap-1">
                        <kbd class="kbd text-primary border-primary">z</kbd>
                        <kbd class="kbd text-primary border-primary">x</kbd>
                        <kbd class="kbd text-primary border-primary">c</kbd>
                        <kbd class="kbd text-primary border-primary">v</kbd>
                        <kbd class="kbd text-primary border-primary">b</kbd>
                        <kbd class="kbd text-primary border-primary">n</kbd>
                        <kbd class="kbd text-primary border-primary">m</kbd>
                        <kbd class="kbd text-primary border-primary">,</kbd>
                    </div>
                </div>
                <p class="mx-auto" style="width: 50%">
                    You can use the 'z, s, x, d, c, v, g, b, h, n, m' keys which
                    are arranged like a musical keyboard starting from A
                    natural. The first dial in the top left controls volume, the
                    second big dial controls the baseline pitch and the last two
                    dials are highpass and lowpass filters.
                </p>
                <div class="divider"></div>
            </section></BrowserDemo
        >
        <div class="divider"></div>
        <section>
            <h2 class="font-bold text-xl mb-2">Overview</h2>
            <p>
                The original purpose for this project was for me to learn about
                the nim programming language and how audio synthesis works. Over
                time, I realized you could compile the project to web-assembly
                and use the browser directly.
            </p>
            <div class="divider"></div>
        </section>
        <section>
            <h2 class="font-bold text-xl mb-2">Technical Details</h2>
            <p>
                Nim uses C as a backend compiler so I decided to use C libraries
                for interfacing directly with the audio device and I used raylib
                for a simple gui. Every note you press directly inputs floats
                into the audio device using mathematical functions like cosine
                along with frequency and amplitude. The bottom of the screen
                utilizes fft to visualize the currently playing frequencies. The
                graphic in the center is the view of the wave in a snapshot of
                time. Since this project was primarily for learning and it uses
                a rare programming language, it is hard to compile locally,
                however I still have the emscripten web assembly build artifacts
                that are being used on this page right now.
            </p>
        </section>
    </div>
</div>

<style>
    iframe {
        width: 800px;
        height: 450px;
    }
    @font-face {
        font-family: "Membra";
        src: url("/fonts/membra.ttf");
        font-weight: normal;
        font-style: normal;
        font-weight: 400;
    }
    #title {
        font-family: "Membra";
    }
    #main {
        width: 70vw;
    }
    #small-device {
        visibility: hidden;
        height: 0px;
    }
    @media (max-width: 823px) {
        iframe {
            visibility: hidden;
            display: hidden;
            height: 0px;
        }
        #small-device {
            display: static;
            visibility: visible;
            height: auto;
        }
    }
</style>
