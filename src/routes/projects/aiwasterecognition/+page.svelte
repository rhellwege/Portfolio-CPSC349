<script>
</script>

<svelte:head>
    <title>Ryan Hellwege Portfolio | AI Waste Recognition</title>
</svelte:head>

<div id="main" class="mx-auto text-lg">
    <h1 id="title" class="font-bold text-5xl text-center py-5">
        AI Waste Recognition
    </h1>
    <section class="">
        <h2 class="text-center text-2xl font-bold mb-5">
            Demo <a class="link" target="_blank" href="https://ai.rhellwege.xyz"
                >https://ai.rhellwege.xyz</a
            >
        </h2>
        <div class="content flex flex-col justify-center align-center">
            <iframe
                title="synnim-wasm"
                src="https://ai.rhellwege.xyz"
                frameborder="0"
                scrolling="no"
                class="mx-auto"
            >
                ></iframe
            >
            <div class="p-3" id="small-device">
                <div class="mb-1 skeleton w-48 h-32"></div>
                <h2 class="text-center text-error">
                    Your Device is too small for the demo
                </h2>
            </div>
        </div>
    </section>
    <div class="divider"></div>
    <section class="prose">
        <h2>Overview</h2>
    </section>
    <div class="divider"></div>
    <section class="prose">
        <h2>How to Use</h2>
    </section>
    <div class="divider"></div>
    <section class="prose">
        <h2>Technical Details</h2>
    </section>
    <div class="divider"></div>
</div>

<style>
    iframe {
        width: 800px;
        height: 650px;
    }
    @font-face {
        font-family: "Bokor";
        src: url("/fonts/Bokor-Regular.ttf");
        font-weight: normal;
        font-style: normal;
        font-weight: 400;
    }
    #title {
        font-family: "Bokor";
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
