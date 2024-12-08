<script>
    import Collapse from "$lib/components/collapse/Collapse.svelte";
</script>

<svelte:head>
    <title>Ryan Hellwege Portfolio | Synnim</title>
</svelte:head>

<h1>Synnim</h1>
<p></p>
<Collapse title="Interactive Synth">
    <iframe
        title="synnim-wasm"
        src="/project-media/synnim-wasm/index.html"
        frameborder="0"
    ></iframe>
</Collapse>

<style>
    iframe {
        width: 100%;
        height: 100%;
    }
</style>
